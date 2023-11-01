var table = [];

var inspectVehicleInfo = {};
var salesHistoryList = {};
var employeesStatus = {};
var sellVehicleInfo = {};
var vehicleBuyInfo = {};
var employeesList = {};
var lastSoldList = {};
var vehiclesList = {};
var auctionTimes = {};
var auctionData = {};
var ordersList = {};
var ranks = {};

var plateToDeliverDocuments = "";
var modalVehicleNotes = "";
var modalVehiclePrice = "";
var modalVehicleLabel = "";
var modalVehiclePlate = "";
var modalStartingBid = "";
var modalVehicleName = "";
var modalNegotiable = "";
var playerRankLabel = "";
var employeeCitizen = "";
var vehicleHeading = "";
var modalBoughtFor = "";
var buyerCitizenID = "";
var modalHigherBid = "";
var vehicleCoords = "";
var vehicleProps = "";
var modalForSale = "";
var vehiclePlate = "";
var vehicleName = "";
var firstOwner = "";
var playerName = "";
var storeName = "";
var bidPlate = "";
var storeID = "";
var zoneID = "";

var vehicleSellPrice = 0;
var vehicleEntity = 0;
var orderStatus = 0;
var storeMoney = 0;
var playerRank = 0;
var playerBank = 0;
var timeToAdd = 0;
var timeLeft = 0;

var sameImageForVehicles = false;
var openedDealershipMenu = false;
var isVehicleInAuction = false;
var buyVehicleOutright = false;
var finishedAuction = false;
var isOpenedByStaff = false;
var highestbidder = false;
var isSubOwner = false;
var isOwner = false;
var under30 = false;
var isOpen = false;


var highestTotalSales = 0;
var highestTotalSalesName = "";
var highestTotalSalesGrade = "";
var highestTotalEarned = 0;

var tid = undefined;

var locales;

window.addEventListener('message', function(event) {
	switch (event.data.action) {
		case 'loading':
			isOpenedByStaff = true;
            locales = event.data.locales;
			currency = event.data.currency;
			auctionTimes = event.data.auctionTimes;
			setupUI();
			selectedWindow = "loading";
			$('.loading').fadeIn();
			break

        case 'overview':
			isOpenedByStaff = true;
			openedDealershipMenu = true;
			isOwner = false;
			currency = event.data.userCurrency;
			currencyOnLeft = event.data.currencySide;
			playerName = event.data.playerName;
			storeMoney = event.data.storeMoney;
			storeID = event.data.storeID;
			employeesList = event.data.employeesList;
			ranks = event.data.ranks;
			salesHistoryList = event.data.salesHistoryList;
			ordersList = event.data.ordersList;
			employeeCitizen = event.data.playerID;
			firstOwner = event.data.firstOwner;
			lastSoldList = event.data.lastSoldList;
			vehiclesList = event.data.vehiclesList;
			sameImageForVehicles = event.data.sameImageForVehicles;
			var vehicles_sold_owner = event.data.vehicles_sold_owner;
			var total_earned_owner = event.data.total_earned_owner;
			var secondOwner = event.data.secondOwner;
			var dropdownTime = ``;
			 if(auctionTimes.length > 0){
			 	for(var i = 0; i < auctionTimes.length; i++) {
					if (auctionTimes[i].h) {
						dropdownTime += `<option value="h_${auctionTimes[i].h}">${auctionTimes[i].h}${locales.translations.hour}</option>`;
					} else {
						dropdownTime += `<option value="m_${auctionTimes[i].m}">${auctionTimes[i].m}${locales.translations.minute}</option>`;
					}
			 	}
			 }
			 $('#dropdown_times').html(dropdownTime);

			for(var i = 0; i < employeesList.length; i++) {
				if (employeesList[i].identifier == employeeCitizen) {
					playerRank = employeesList[i].rank;
					if (employeesList[i].rank == secondOwner ) { isSubOwner = true }	  
				}
				if (employeesList[i].totalsales >= highestTotalSales) {
					highestTotalSales = employeesList[i].totalsales;
					highestTotalSalesName = employeesList[i].name;
					highestTotalSalesGrade = employeesList[i].rankTag;
					if (!currencyOnLeft) {
						highestTotalEarned = employeesList[i].totalearned + currency;
					} else {
						highestTotalEarned = currency + employeesList[i].totalearned;
					}
				}
			}

			for (var i = 0; i < ranks.length; i++) {
				if (playerRank == ranks[i].rank) {
					playerRankLabel = ranks[i].label.toUpperCase();
				}
			}
			if (firstOwner == employeeCitizen) { isOwner = true; playerRankLabel = `${locales.translations.owner}`; };

			if (event.data.playerSex == "0") {
				avatar = `<img src="./img/avatar_male.png" class="avatar">`;
			} else {
				avatar = `<img src="./img/avatar_female.png" class="avatar">`;
			}
			if (employeesList.length == 0) {
				highestTotalSales = vehicles_sold_owner;
				highestTotalSalesName = playerName;
				highestTotalSalesGrade = playerRankLabel;
				if (!currencyOnLeft) {
					highestTotalEarned = total_earned_owner + currency;
				} else {
					highestTotalEarned = currency + total_earned_owner;
				}
			}

			if (isOwner == true || isSubOwner == true) {
				if (selectedWindow == "loading") {
					openOverview();
					$(".overview").fadeIn();
					setupOwner();
				}
				setTimeout(function() {
					$('.loading').fadeOut();
				}, 300);
					selectedWindow = "overview";
					businessPrice = event.data.businessPrice
					$(`#sell_business_title`).html(locales.translations.areyousure);
					$(`#sellbusiness_message`).html(locales.translations.sellbusinessfor + ' ' + businessPrice + currency + '?');
					$("#cancel_buybusiness").html(locales.translations.cancelbutton);
					$("#sellbusiness_button_modal").html(locales.translations.sellbutton);
				break
			} else {
				if (selectedWindow == "loading") {
					openStock();
					$(".stock").fadeIn();
					setupCustomer();
				}
				setTimeout(function() {
					$('.loading').fadeOut();
				}, 300);
					selectedWindow = "stock";
				break
			}
        break

        case 'buyBusiness':
			locales = event.data.locales;
			selectedWindow = "buyBusiness";
			$("#buy_business_title").html(locales.translations.areyousure);
			$("#shop_name").html(locales.translations.doyouwanttobuy + ' ' + event.data.road + ' ' + event.data.name + ' ' + locales.translations.buyfor + ' ' + numberWithSpaces(event.data.price) + event.data.currency + ' ?');
			$("#closeBuyBusinessButton").html(locales.translations.cancelbutton);
			$("#buybusiness_btn_modal").html(locales.translations.buybutton);
			var modalId = $('#buybusiness_modal');
	    	var buyBusinessModal = new bootstrap.Modal(modalId);
	    	buyBusinessModal.show();
			break

			case 'updateNearPlayers':		
			nearPlayers = event.data.nearPlayers;
			var num = nearPlayers.length;
			var dropdown = ``;
			dropdown += `<option value="${0}">${locales.translations.selectuser}</option>`;
			if(num > 0){
				$('#hireEmployeeModal').modal('toggle'); sellVehicleModal
				for(var i = 0; i < num; i++) {
					dropdown += `
						<option value="${nearPlayers[i].id}">${nearPlayers[i].name} (${nearPlayers[i].id})</option>
					`;
				}
			}
			$('#dropdown_to_hire').html(dropdown);
		break

		case 'updateNearPlayersSell':
			if (isOpenedByStaff) {
				nearPlayers = event.data.nearPlayers;
				locales = event.data.locales;
				var num = nearPlayers.length;
				var dropdown = ``;
				dropdown += `<option value="${0}">${locales.translations.selectuser}</option>`;
				if(num > 0){
					$('#sellVehicleModal').modal('toggle');
					for(var i = 0; i < num; i++) {
						dropdown += `
							<option value="${nearPlayers[i].id}">${nearPlayers[i].name} (${nearPlayers[i].id})</option>
						`;
					}
				}
				$('#dropdown_closest_players').html(dropdown);
			}
		break

		case 'updateNearVehicles':
			if (isOpenedByStaff) {
				nearestVehicles = event.data.nearestVehicles;
				var num = nearestVehicles.length;
				var dropdown = ``;
				dropdown += `<option value="${0}">${locales.translations.selectvehicle}</option>`;
				if(num > 0){
					$('#buyVehicleModal').modal('toggle');
					for(var i = 0; i < num; i++) {
						dropdown += `
							<option value="${nearestVehicles[i].vehiclePlate}">${nearestVehicles[i].vehicleName} (${nearestVehicles[i].vehiclePlate})</option>
						`;
					}
				}
				$('#dropdown_vehicle_list').html(dropdown);
			}
			break

		case 'updateMoney':
			if (isOpenedByStaff) {
				storeMoney = event.data.storeMoney
				$("#company_balance").html(event.data.storeMoney + currency);
			}
		 	break

		case 'updateEmployees':
			if (isOpenedByStaff) {
				employeesList = event.data.employeesList;
				openEmployees();
			}
			break

		case 'updateOrders':
			if (isOpenedByStaff) {
				ordersList = event.data.ordersList;
				openOrders();
			}
			break

		case 'updateStock':
			if (isOpenedByStaff) {
				vehiclesList = event.data.vehiclesList;
				openStock();
			}
			break

		case 'updateSalesHistory':
			if (isOpenedByStaff) {
				salesHistoryList = event.data.salesHistoryListSend;
				openSalesHistory();
			}
			break
	
		case 'updateTime':
			if (isOpen) {
				selectedWindow = "auction";
				if (auctionData.plate == event.data.plate) {
					timeLeft = event.data.timeLeft;
					highestbidder = event.data.highestbidder;
					auctionData = event.data.auctionData;
				}
			}
			break

		case 'inspectVehicle':
			vehicleEntity = event.data.vehicleEntity;
			zoneID = event.data.zone;
			buyVehicleOutright = event.data.buyVehicleOutright;
            locales = event.data.locales;
			inspectVehicleInfo = event.data.vehicle;
			currency = event.data.currency;
			currencyOnLeft = event.data.currencySide;
			storeID = event.data.storeID;
			vehicleCoords = event.data.vehicleCoords;
			vehicleHeading = event.data.vehicleHeading;
			vehicleProps = event.data.props;
			employeesStatus = event.data.employeesStatus;
			storeName = event.data.storeName;
			openInspectVehicle();
			break

		case 'openAuction':
			isOpen = true;
			currency = event.data.currency;
			currencyOnLeft = event.data.currencySide;
			locales = event.data.locales;
			finishedAuction = false;
			vehicleEntity = event.data.vehicleEntity;
			zoneID = event.data.zone;
            locales = event.data.locales;
			inspectVehicleInfo = event.data.vehicle;
			auctionData = event.data.auctionData;
			currency = event.data.currency;
			currencyOnLeft = event.data.currencySide;
			storeID = event.data.storeID;
			timeLeft = event.data.timeLeft;
			bidPlate = inspectVehicleInfo.plate;
			playerBank = event.data.bank;
			highestbidder = event.data.highestbidder;
			openAuction();
			break

		case 'updateAuction':
			if (isOpen) {
				if (auctionData.plate == event.data.plate) {
					currency = event.data.currency;
					currencyOnLeft = event.data.currencySide;
					locales = event.data.locales;
					auctionData = event.data.auctionData;
					highestbidder = event.data.highestbidder;
					$("#auction_bid").html(event.data.auctionData.bid + currency);
					if (!auctionData.hasBided) {
						$("#current_highest_bid").html(event.data.auctionData.higher_bid); 
					} else {
						if (highestbidder) { 
							$("#current_highest_bid").html(`<i class="fa-solid fa-bullseye bid-won"></i> ` + event.data.auctionData.higher_bid); 
						} else {
							$("#current_highest_bid").html(`<i class="fa-solid fa-bullseye outbid"></i> ` + event.data.auctionData.higher_bid); 
						}
					}
					$("#total_bids").html(event.data.auctionData.total_bids);
					$("#your_bid").val(Number(auctionData.higher_bid) + 1);
				}
			}
			$("#cancel_auction_currentbid").html(auctionData.currentBid);

			if (auctionData.currentBid > 0) { $("#cancel_auction").attr("disabled", true); } else { $("#cancel_auction").attr("disabled", false); }
			break

		case 'sellVehicle':
			locales = event.data.locales;
			sellVehicleInfo = event.data.vehicleInfo;
			currency = event.data.currency;
			currencyOnLeft = event.data.currencySide;
			$("#dealership_name").html(event.data.dealershipname);
			$("#sell_vehicle_name").html(event.data.vehicleName);
			vehicleName = event.data.vehicleName;
			vehicleSellPrice = event.data.vehiclePrice;
			vehiclePlate = event.data.vehiclePlate;
			$("#sell_vehicle_price").html(event.data.vehiclePrice);
			$("#sell_vehicle_title").html(locales.translations.sellvehicle);
			buyerCitizenID = event.data.citizenid;
			$("#dealership_name_title").html(locales.translations.buyer);
			$("#sell_vehicle_name_title").html(locales.translations.name);
			$("#sell_vehicle_plate_title").html(locales.translations.plate);
			$("#sell_vehicle_price_title").html(locales.translations.price);
			$("#sell_vehicle").html(locales.translations.sellbutton);
			storeID = event.data.storeID;
			openSellVehicle();
			break

		case 'clearInput':
			selectedWindow = "auction";
			$("#your_bid").val(Number(auctionData.higher_bid) + 1);
			break

		case 'openSellMenu':
			vehicleBuyInfo = event.data.buyVehicleInfo;
			locales = event.data.locales;
			currency = event.data.currency;
			currencyOnLeft = event.data.currencySide;
			setupBuyVehicleFromDealership();

			break

		case 'closeUI':
			closeMenu();
			break
    }
})

var timerInterval = null;

function updateTimer(timeLeftVar) {
    const timerElement = document.getElementById('time_left');
	const timerElement2 = document.getElementById('cancel_auction_timeleft');
	if (timerElement) {
		timerElement.textContent = formatTimeRemaining(timeLeft);
	}
	if (timerElement2) {
		timerElement2.textContent = formatTimeRemaining(timeLeft);
	}
	timeLeft = timeLeftVar;
    function decrementTime() {
		if (!isOpen) { clearInterval(timerInterval); }
        if (timeLeft > 0) {
            if (timeLeft <= 30) {
                under30 = true;
                timeToAdd = 30 - timeLeft;
            }
            timeLeft--;
			if (timerElement) {
            	timerElement.textContent = formatTimeRemaining(timeLeft);
			}
			if (timerElement2) {
				timerElement2.textContent = formatTimeRemaining(timeLeft);
			}
        } else {
			clearInterval(timerInterval);
			$('#cancelAuctionModal').modal('hide');
			finishAuction();
		}
     }
    timerInterval = setInterval(decrementTime, 1000);
}

function finishAuction() {
	var auctionEndedMessage = locales.translations.notwinner;
	if (!finishedAuction) {
		if (!openedDealershipMenu) {
			const auctionWinnerElement = document.getElementById("winner_" + auctionData.bidID);
			auctionWinnerElement.classList.add("revealed");

			var elements = document.getElementsByClassName("ob");

			for (var i = 0; i < elements.length; i++) {
				elements[i].classList.add("opacityblur");
			}
			if (auctionData.hasBided) {
				if (!highestbidder) {
					$("#current_highest_bid").html(`<i class="fa-solid fa-bullseye bid-lost"></i> ` + auctionData.higher_bid); 
				} else {
					auctionEndedMessage = locales.translations.auctionwinner;
				} 
			}
			var WinnerName = auctionData.higher_bidder_name;
			if (!auctionData.higher_bidder_name) {
				WinnerName = locales.translations.nowinner;
			}
			var row = ``;
			row += `
				<div class="auction_congratulations">${locales.translations.thankyou}</div>
				<div class="auction_ended">${locales.translations.auctionended}</div>
				<div class="auction_info">${locales.translations.vehicle}: <span class="auction_info2">${auctionData.vehicle} (${auctionData.plate})</span></div>
				<div class="auction_info">${locales.translations.winner}: <span class="auction_info2">${WinnerName}</span></div>
				<div class="auction_info">${locales.translations.totalbids}: <span class="auction_info2">${auctionData.total_bids}</span></div>
				<div class="auction_info">${locales.translations.finalbidamount}: <span class="auction_info2">${auctionData.higher_bid}${currency}</span></div>
				<div class="auction_thankyou">${auctionEndedMessage}</div>
				<button id="exit_auction" class="btn btn-blue auction_exit" type="button">${locales.translations.exitauction}</button>
				</div>`;

			$(`#winner_${auctionData.bidID}`).html(row);
			finishedAuction = true;
		}

		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "finishAuction",
			plate: auctionData.plate
		}));
	}
}

$(document).on('click', "#sell_vehicle_to_player", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "getClosePeopleSell",
	}));
});

function setupOwner() {
	$("#vehicle_price").attr("disabled", false);
	$("#vehicle_notes").attr("disabled", false);
	document.getElementById("vehicle_for_sale").disabled = false;
	document.getElementById("price_negotiable").disabled = false;
	document.getElementById("vehicle_name").disabled = false;
	document.getElementById("vehicle_plate").disabled = false;
	document.getElementById("bought_for").disabled = false;
	$('#vehicle-info-modal').html(``);
	var button = `<span id="vehicle_name_title" class="modal-cat-t"></span>
	<span id="vehicle_name" type="text" class="form-control"></span>
	<span id="vehicle_plate_title" class="modal-cat-t mt-2"></span>
	<span id="vehicle_plate" type="text" class="form-control"></span>
	<span id="bought_for_title" class="modal-cat-t mt-2"></span>
	<span id="bought_for" type="text" class="form-control"></span>
	<span id="vehicle_price_title" class="modal-cat-t mt-2"></span>
	<input id="vehicle_price" type="number" class="form-control" onkeyup="checkIfEmpty()">
	<span  id="vehicle_notes_title" class="modal-cat-t mt-2"></span>
	<textarea type="text" id="vehicle_notes" onkeyup="checkIfEmpty()"></textarea>
	<div class="form-check fs1125 mt-2">
		<input class="form-check-input" type="checkbox" id="price_negotiable" onclick="checkIfEmpty()">
		<label id="price_negotiable_title" class="form-check-label" for="flexCheckDefault"></label>
	</div>
	<div class="form-check fs1125">
		<input class="form-check-input" type="checkbox" id="vehicle_for_sale" onclick="checkIfEmpty()">
		<label id="vehicle_sale_title" class="form-check-label" for="flexCheckDefault"></label>
	</div>
	<div class="startauction" id="sell_vehicle_to_player" data-bs-dismiss="modal"></div>
	<div class="startauction" id="create_auction" data-bs-toggle="modal" data-bs-target="#startAuctionModal" data-bs-dismiss="modal"></div>
	<button type="button" id="save_vehicle" class="btn btn-blue mt-2" data-bs-toggle="modal" data-bs-target="#viewStockModal" disabled></button>`;
	$('#vehicle-info-modal').append(button);
	$("#vehicle_info_title").html(locales.translations.vehicleinfo);
	$("#vehicle_name_title").html(locales.translations.name);
	$("#vehicle_plate_title").html(locales.translations.plate);
	$("#bought_for_title").html(locales.translations.boughtfor + ' (' + currency + ')');
	$("#vehicle_price_title").html(locales.translations.price + ' (' + currency + ')');
	$("#vehicle_notes_title").html(locales.translations.notes);
	$("#price_negotiable_title").html(locales.translations.pricenegotiable);
	$("#vehicle_sale_title").html(locales.translations.vehiclesale);
	$("#save_vehicle").html(locales.translations.save);
	$("#start_auction").html(locales.translations.start);
	$("#create_auction").html(locales.translations.startauction);
	$("#sell_vehicle_to_player").html(locales.translations.sellvehicle);
	$("#vehicle_notes").attr("placeholder", locales.translations.note);
	document.getElementById("modal-client-stock").classList.remove("p-071509815");
	document.getElementById("modal-client-stock").classList.add("p-07151515");
	$("#cancel_auction_title").html(locales.translations.auctionstarted);
	$("#cancel_auction_name_title").html(locales.translations.name);
	$("#cancel_auction_plate_title").html(locales.translations.plate);
	$("#cancel_auction_boughtfor_title").html(locales.translations.boughtfor + ' (' + currency + ')');
	$("#cancel_auction_notes_title").html(locales.translations.notes);
	$("#cancel_auction_startingbid_title").html(locales.translations.startingbid + ' (' + currency + ')');
	$("#cancel_auction_currentbid_title").html(locales.translations.currentbid + ' (' + currency + ')');
	$("#cancel_auction_time_title").html(locales.translations.timeleft);
	$("#cancel_auction").html(locales.translations.cancelbutton);
	$("#sell_vehicle_player_title").html(locales.translations.sellvehicle);
	$("#sell_vehicle_name_player_title").html(locales.translations.name);
	$("#sell_vehicle_plate_player_title").html(locales.translations.plate);
	$("#sell_for_player_title").html(locales.translations.price + ' (' + currency + ')');
	$("#sell_to_player_vehicle").html(locales.translations.sellbutton);
	$("#dropdown_closest_players_title").html(locales.translations.buyer);
	$("#auction_ended_title").html(locales.translations.delivervehicle);
	$("#auction_ended_name_title").html(locales.translations.name);
	$("#auction_ended_plate_title").html(locales.translations.plate);
	$("#auction_ended_buy_price_title").html(locales.translations.boughtfor + ' (' + currency + ')');
	$("#auction_ended_notes_title").html(locales.translations.notes);
	$("#auction_ended_highest_bid_title").html(locales.translations.auctionedfor + ' (' + currency + ')');
	$("#auction_ended_bidder_name_title").html(locales.translations.winner);
	$("#auction_ended_bidder_phone_title").html(locales.translations.phone);
	$("#deliver_vehicle").html(locales.translations.deliver);
}

function setupCustomer() {
	$("#vehicle_price").attr("disabled", true);
	$("#vehicle_notes").attr("disabled", true);
	document.getElementById("vehicle_for_sale").disabled = true;
	document.getElementById("price_negotiable").disabled = true;
	document.getElementById("vehicle_name").disabled = true;
	document.getElementById("vehicle_plate").disabled = true;
	document.getElementById("bought_for").disabled = true;
	if (document.getElementById("save_vehicle")) {document.getElementById("save_vehicle").remove()}
	document.getElementById("modal-client-stock").classList.remove("p-07151515");
	document.getElementById("modal-client-stock").classList.add("p-071509815");
	$("#sell_vehicle_to_player").html(locales.translations.sellvehicle);
	$("#sell_vehicle_player_title").html(locales.translations.sellvehicle);
	$("#sell_vehicle_name_player_title").html(locales.translations.name);
	$("#sell_vehicle_plate_player_title").html(locales.translations.plate);
	$("#sell_for_player_title").html(locales.translations.price + ' (' + currency + ')');
	$("#sell_to_player_vehicle").html(locales.translations.sellbutton);
	$("#dropdown_closest_players_title").html(locales.translations.buyer);
}

function setupUI() {
	$("#loading_data_card").html(locales.translations.loadingdata);
	$("#deposit_money_title").html(locales.translations.depositmoney);
	$("#withdraw_money_title").html(locales.translations.withdrawmoney);
	$("#deposit_money").attr("placeholder", locales.translations.amount);
	$("#withdraw_money").attr("placeholder", locales.translations.amount);
	$("#deposit").html(locales.translations.deposit);
	$("#withdraw").html(locales.translations.withdraw);
	$("#fire_employee_title").html(locales.translations.fireemployeetitle);
	$("#cancel_fire").html(locales.translations.cancelbutton);
	$("#fire_employee").html(locales.translations.firebutton);
	$("#edit_employee_title").html(locales.translations.editemployee);
	$("#edit_fire_employee").html(' ' + locales.translations.fireemployeetitle);
	$("#edit_employee").html(locales.translations.save);
	$("#edit_employee_name").html(locales.translations.name);
	$("#edit_employee_total_orders").html(locales.translations.totalsales);
	$("#edit_employee_total_earned").html(locales.translations.totalearned + ' (' + currency + ')');
	$("#edit_employee_grade").html(locales.translations.grade);
	$("#hire_employee_title").html(locales.translations.hireemployee);
	$("#hire_employee").html(locales.translations.hire);
	$("#fire_myself_title").html(locales.translations.areyousure);
	$("#firemyself_message").html(locales.translations.firemyself);
	$("#cancel_firemyself").html(locales.translations.cancelbutton);
	$("#firemyself_button_modal").html(locales.translations.confirm);
	$("#vehicle_info_title").html(locales.translations.vehicleinfo);
	$("#vehicle_name_title").html(locales.translations.name);
	$("#vehicle_plate_title").html(locales.translations.plate);
	$("#bought_for_title").html(locales.translations.boughtfor);
	$("#vehicle_price_title").html(locales.translations.price + ' (' + currency + ')');
	$("#vehicle_notes_title").html(locales.translations.notes);
	$("#price_negotiable_title").html(locales.translations.pricenegotiable);
	$("#vehicle_sale_title").html(locales.translations.vehiclesale);
	$("#save_vehicle").html(locales.translations.save);
	$("#vehicle_notes").attr("placeholder", locales.translations.note);
	$("#new_order_title").html(locales.translations.neworder);
	$("#new_order_vehicle_title").html(locales.translations.name);
	$("#new_order_customer_title").html(locales.translations.customer);
	$("#new_order_phone_title").html(locales.translations.phone);
	$("#new_order_agreed_title").html(locales.translations.agreedprice + ' (' + currency + ')');
	$("#new_order_notes_title").html(locales.translations.notes);
	$("#new_order_vehicle").attr("placeholder", locales.translations.nameplaceholder);
	$("#new_order_customer").attr("placeholder", locales.translations.customerplaceholder);
	$("#new_order_phone").attr("placeholder", locales.translations.phoneplaceholder);
	$("#new_order_agreed").attr("placeholder", locales.translations.agreedpriceplaceholder);
	$("#new_order_notes").attr("placeholder", locales.translations.note);
	$("#create_order").html(locales.translations.create);
	$("#order_info_title").html(locales.translations.orderinfo);
	$("#edit_order_vehicle_title").html(locales.translations.name);
	$("#edit_order_customer_title").html(locales.translations.customer);
	$("#edit_order_phone_title").html(locales.translations.phone);
	$("#edit_order_agreed_price_title").html(locales.translations.agreedprice + ' (' + currency + ')');
	$("#edit_order_notes_title").html(locales.translations.notes);
	$("#edit_order_status_title").html(locales.translations.status);
	$("#save_order").html(locales.translations.save);
	$("#cancel_order_title").html(locales.translations.cancelorder);
	$("#cancel_order_text").html(locales.translations.confirmcancelorder);
	$("#cancel_order_cancel").html(locales.translations.cancelbutton);
	$("#cancel_order_confirm").html(locales.translations.confirm);
	$("#buy_vehicle_title").html(locales.translations.buyvehicle);
	$("#buy_vehicle_dropdown_title").html(locales.translations.vehicle);
	$("#buy_price_title").html(locales.translations.price + ' (' + currency + ')');
	$("#buy_price").attr("placeholder", locales.translations.priceplaceholder);
	$("#buy_veh").html(locales.translations.buybutton);

	$("#new_auction_title").html(locales.translations.startauction);
	$("#new_auction_name_title").html(locales.translations.name);
	$("#new_auction_plate_title").html(locales.translations.plate);
	$("#new_auction_price_title").html(locales.translations.boughtfor + ' (' + currency + ')');
	$("#starting_bid_title").html(locales.translations.startingbid + ' (' + currency + ')');
	$("#new_auction_name_title").html(locales.translations.name);
	$("#new_auction_notes_title").html(locales.translations.notes);
	$("#starting_bid_value").attr("placeholder", locales.translations.startingbidplaceholder);
	$("#dropdown_duration_title").html(locales.translations.duration);
}

function openOverview() {
	selectedWindow = "overview";
	$('#overview_menu').html(``);
	$('#overview_menu').append(`
	<div class="row h-100" id="menu">
		<div class="col-md-2 d-flex flex-column sidebar-s">
			<img src="./img/logo.png" class="logo">
			<hr>
			<span class="sidebar-title">${locales.translations.menu}</span>
			<div id="sidebarOverview">

				<p class="sidebar-item mt-2 selected" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
                <p class="sidebar-item" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
				<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
				<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
				<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
			</div>
			<p id="close_overview" class="sidebar-item mt-auto logout"><i class="fas fa-sign-out-alt"></i></i> <span class="ms-1">${locales.translations.logout}</span></p>
		</div>
		<div class="col-md-10 tab-s">
			<div class="d-flex justify-content-between align-items-center">
				<span class="selected-page"><span id="page-title">${locales.translations.overview}</span></span>
				<div>
					<span class="username align-middle">
						<span id="playerName">${playerName}</span> <span id="avatar">${avatar}</span>
						<div class="grade">${playerRankLabel}</div>
					</span>
				</div> 
			</div>
			<hr>
			<div class="d-flex flex-column" id="page_info">
				<div class="row">
					<div class="col col-md-6 d-flex justify-content-center pr05">
						<div class="card card-o w-100">
							<div class="card-header card-o-header text-center">
								<span class="card-o-title">${locales.translations.finances}</span>
							</div>
							<div class="card-body card-o-body finances_card-body text-center pt-025">
								<div class="d-flex justify-content-center flex-column">
									<div id="balance_currency_side" class="mt-12 mb-09">                          
									</div>
								</div>
								<hr class="mg050">
								<button type="button" class="btn btn-blue w-100 mt-2 dep_with-buttons" data-bs-toggle="modal" data-bs-target="#depositModal">${locales.translations.deposit}</button>
								<button type="button" class="btn btn-blue w-100 mt-2 dep_with-buttons" data-bs-toggle="modal" data-bs-target="#withdrawModal">${locales.translations.withdraw}</button>
							</div>
						</div>
					</div>
					<div class="col col-md-6 d-flex justify-content-center pl05">
						<div class="card card-o w-100">
							<div class="card-header card-o-header text-center">
								<span class="card-o-title">${locales.translations.bestemployee}</span>
							</div>
							<div class="card-body card-o-body bestemployee_card-body text-center">
								<div class="best_employee-div">
									<div class="be">
										<span class="fff">${locales.translations.name}</span>
										<span>${highestTotalSalesName}</span>
									</div>
									<div class="be">
										<span class="fff">${locales.translations.grade}</span>
										<span>${highestTotalSalesGrade}</span>
									</div>
									<div class="be">
										<span class="fff">${locales.translations.totalsales}</span>
										<span>${highestTotalSales}</span>
									</div>
									<div class="be">
										<span class="fff">${locales.translations.totalearned}</span>
										<span>${highestTotalEarned}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card card-o d-flex flex-column">
					<div class="card-header card-o-header text-center">
						<span class="card-o-title">${locales.translations.recentsales}</span>
					</div>
					<div class="card-body card-o-body">
						<div id="last-sold-list" class="row h-100"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
`);

    if ( currencyOnLeft == true ) {
        $('#balance_currency_side').append(`
            <div class="fff fs175">${locales.translations.balance}</div>
            <div class="fs175" id="company_balance">${currency}${storeMoney}</div>
        `);
    } else {
        $('#balance_currency_side').append(`
            <div class="fff fs175">${locales.translations.balance}</div>
            <div class="fs175" id="company_balance">${storeMoney}${currency}</div>
        `);
    }
	
	if ( isOwner == true ) {
		$('#sidebarOverview').append(`
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`);
	}

	let row = '';
	let classes = 'pr05';
	let vehicles = 3;
	let img = 'src="./img/car.png"';

	if (salesHistoryList.length == 0) {
		for(var i = 0; i < 3; i++) {
			if(i == 0){classes = 'pr05'} else if(i == 1){classes = 'pl05 pr05'} else if(i == 2){classes = 'pl05'}

			if (!currencyOnLeft) {
				row += `
				<div class="col col-md-4 d-flex justify-content-center ${classes}">
					<div class="card veh-card w-100">
						<div class="card-header card-o-header veh_borderbot text-center">
							<span class="fff">${locales.translations.nodata}</span>
						</div>
						<div class="card-body text-center veh_height">
							<div class="no_data">?</div>
							<div class="totalsold">${locales.translations.nodata}</div>
						</div>
					</div>
				</div>`;
			} else {
				row += `
				<div class="col col-md-4 d-flex justify-content-center ${classes}">
					<div class="card veh-card w-100">
						<div class="card-header card-o-header veh_borderbot text-center">
							<span class="fff">${locales.translations.nodata}</span>
						</div>
						<div class="card-body text-center veh_height">
							<div class="no_data">?</div>
							<div class="totalsold">${locales.translations.nodata}</div>
						</div>
					</div>
				</div>`;
			} 
			$('#last-sold-list').html(row);
		}

	} else {
		if (salesHistoryList.length < 3) { vehicles = salesHistoryList.length; }
	

		for(var i = 0; i < vehicles; i++) {

			if (!sameImageForVehicles) { img = 'src="./img/' + salesHistoryList[i].vehicle_name + '.png"'; }

			if(i == 0){classes = 'pr05'} else if(i == 1){classes = 'pl05 pr05'} else if(i == 2){classes = 'pl05'}

			if (vehicles == 1) {
				if (!currencyOnLeft) {
					row += `
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${salesHistoryList[i].vehicle_name}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="used_slot">
									<img ${img} class="veh_img">
								</div>
								<div class="totalsold">${locales.translations.soldfor} ${salesHistoryList[i].value}${currency}</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${locales.translations.nodata}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="no_data">?</div>
								<div class="totalsold">${locales.translations.nodata}</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
							<span class="fff">${locales.translations.nodata}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="no_data">?</div>
								<div class="totalsold">${locales.translations.nodata}</div>
							</div>
						</div>
					</div>`;
					
				} else {
					row += `
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${salesHistoryList[i].vehicle_name}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="used_slot">
									<img ${img} class="veh_img">
								</div>
								<div class="totalsold">${locales.translations.soldfor} ${currency}${salesHistoryList[i].value}</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${locales.translations.nodata}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="no_data">?</div>
								<div class="totalsold">${locales.translations.nodata}</div>
							</div>
						</div>
					</div>
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
							<span class="fff">${locales.translations.nodata}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="no_data">?</div>
								<div class="totalsold">${locales.translations.nodata}</div>
							</div>
						</div>
					</div>`;
				} 
			} else {
				if (!currencyOnLeft) {
					row += `
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${salesHistoryList[i].vehicle_name}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="used_slot">
									<img ${img} class="veh_img">
								</div>
								<div class="totalsold">${locales.translations.soldfor} ${salesHistoryList[i].value}${currency}</div>
							</div>
						</div>
					</div>`;
				} else {
					row += `
					<div class="col col-md-4 d-flex justify-content-center ${classes}">
						<div class="card veh-card w-100">
							<div class="card-header card-o-header veh_borderbot text-center">
								<span class="fff">${salesHistoryList[i].vehicle_name}</span>
							</div>
							<div class="card-body text-center veh_height">
								<div class="used_slot">
									<img ${img} class="veh_img">
								</div>
								<div class="totalsold">${locales.translations.soldfor} ${currency}${salesHistoryList[i].value}</div>
							</div>
						</div>
					</div>`;
				} 
			}
		}
		if (vehicles == 2 ) {
			row += `<div class="col col-md-4 d-flex justify-content-center ${classes}">
			<div class="card veh-card w-100">
				<div class="card-header card-o-header veh_borderbot text-center">
				<span class="fff">${locales.translations.nodata}</span>
				</div>
				<div class="card-body text-center veh_height">
					<div class="no_data">?</div>
					<div class="totalsold">${locales.translations.nodata}</div>
				</div>
			</div>
		</div>`;
		} 
		$('#last-sold-list').html(row);
	}
}


// Stock Table

function openStock() {
	selectedWindow = "stock";
	$('#stock_menu').html(``);
	$('#stock_menu').append(`
	<div class="row h-100" id="menu">
	<div class="col-md-2 d-flex flex-column sidebar-s">
		<img src="./img/logo.png" class="logo">
		<hr>
		<span class="sidebar-title">${locales.translations.menu}</span>
		<div id="sidebarStockMenu">
		</div>
		<p id="close_overview" class="sidebar-item mt-auto logout"><i class="fas fa-sign-out-alt"></i></i> <span class="ms-1">${locales.translations.logout}</span></p>
	</div>
	<div class="col-md-10 tab-s">
		<div class="d-flex justify-content-between align-items-center">
			<span class="selected-page"><span id="page-title">${locales.translations.stock}</span></span>
			<div>
				<span class="username align-middle">
					<span id="playerName">${playerName}</span> <span id="avatar">${avatar}</span>
					<div class="grade">${playerRankLabel}</div>
				</span>
			</div>
		</div>
		<hr>
		<div class="d-flex flex-column gap0" id="page_info">
		<div class="d-flex">
			<button type="button" class="btn btn-blue buy-veh" id="getClosestVehicles">${locales.translations.buyvehicle}</button>
		</div>
			<table id="stockTable" class="mt-025">
				<thead>
					<tr>
					<th class="text-center">${locales.translations.vehicle}</th>
					<th class="text-center">${locales.translations.plate}</th>
					<th class="text-center">${locales.translations.status}</th>
					<th class="text-center">${locales.translations.actions}</th>
					</tr>
				</thead>
				<tbody id="stockTableData">
				</tbody>
			</table>
		</div>
	</div>
	`);

	if ( isOwner == true ) {
		$('#sidebarStock').append(`
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`);
	}

	$('#stockTableData').html(``)
	var row = ``

	if (vehiclesList) {
		for (var i = 0; i < vehiclesList.length; i++) {
			var status = '';

			if (vehiclesList[i].auctionended ) { 
				status = locales.translations.auctionendedlist; 
			} else {
				if (vehiclesList[i].forSale ) { 
					if (vehiclesList[i].inauction) {
						status = locales.translations.onauction; 
					} else {
						status = locales.translations.listed; 
					}
				} else { 
					if (vehiclesList[i].inauction) {
						status = locales.translations.onauction; 
					} else {
						status = locales.translations.notlisted; 
					}
				}
			}
			if (vehiclesList[i].auctionended ) { 
				row += `
				<tr>
					<td class="text-center align-middle">${vehiclesList[i].label}</td>
					<td class="text-center align-middle">${vehiclesList[i].plate}</td>
					<td class="text-center align-middle">${status}</td>
					<td class="text-center align-middle"><button type="button" class="btn btn-blue btn-viewstock" data-item_name="${vehiclesList[i].label}" data-item_price="${vehiclesList[i].price}" data-bs-toggle="modal" data-bs-target="#deliverVehicleModal" onClick="deliverVehicle('${vehiclesList[i].plate}')"><i class="fa-solid fa-eye"></i> ${locales.translations.view}</button></td>
				</tr>
				`;

			} else {
				if (vehiclesList[i].inauction) {
					row += `
					<tr>
						<td class="text-center align-middle">${vehiclesList[i].label}</td>
						<td class="text-center align-middle">${vehiclesList[i].plate}</td>
						<td class="text-center align-middle">${status}</td>
						<td class="text-center align-middle"><button type="button" class="btn btn-blue btn-viewstock" data-item_name="${vehiclesList[i].label}" data-item_price="${vehiclesList[i].price}" data-bs-toggle="modal" data-bs-target="#cancelAuctionModal" onClick="viewVehicle('${vehiclesList[i].plate}')"><i class="fa-solid fa-eye"></i> ${locales.translations.view}</button></td>
					</tr>
					`;
				} else {
					row += `
					<tr>
						<td class="text-center align-middle">${vehiclesList[i].label}</td>
						<td class="text-center align-middle">${vehiclesList[i].plate}</td>
						<td class="text-center align-middle">${status}</td>
						<td class="text-center align-middle"><button type="button" class="btn btn-blue btn-viewstock" data-item_name="${vehiclesList[i].label}" data-item_price="${vehiclesList[i].price}" data-bs-toggle="modal" data-bs-target="#viewStockModal" onClick="viewVehicle('${vehiclesList[i].plate}')"><i class="fa-solid fa-eye"></i> ${locales.translations.view}</button></td>
					</tr>
					`;
				}
			}
		}
	}
	 $('#stockTableData').append(row);

	var table_id = document.getElementById('stockTable');
	table.push(new simpleDatatables.DataTable(table_id, {
		perPageSelect: false,
		perPage: 6,
		labels: {
			placeholder: locales.translations.search,
			noRows: locales.translations.noentriesfound,
			noResults: locales.translations.noresults,
		}
	}));

	if (isOwner == true ) {
		$('#sidebarStockMenu').html(`
		<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
		<p class="sidebar-item selected" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
		<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`)
	} else if (isSubOwner == true ) {
		$('#sidebarStockMenu').html(`
		<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
		<p class="sidebar-item selected" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
		<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
		`)
	} else {
		$('#sidebarStockMenu').html(`
		<p class="sidebar-item mt-2 selected" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item-red" id="fire_myself" data-bs-toggle="modal" data-bs-target="#firemyself_modal"><i class="fas fa-user-tie"></i> <span class="ms-1">${locales.translations.quitjob}</span></p>
		`)
	}
}

// Edit Item info

function formatTimeRemaining(time) {
	const hours = Math.floor(time / 3600);
	const minutes = Math.floor((time % 3600) / 60);
	const seconds = time % 60;

	let formattedTime = "";

	if (hours > 0) {
		formattedTime = hours + "h ";
	}

	if (minutes > 0 && hours == 0) {
		formattedTime += minutes + "m ";
	}

	if (seconds > 0  && hours == 0 && minutes == 0 || formattedTime === "") {
		formattedTime += seconds + "s";
	}

	return formattedTime;
}


function deliverVehicle(plate) {
	for (let i = 0; i < vehiclesList.length; i++) {
        if (vehiclesList[i].plate == plate) {
			plateToDeliverDocuments = vehiclesList[i].plate;
			document.getElementById("auction_ended_name").innerHTML = vehiclesList[i].label;
			document.getElementById("auction_ended_plate").innerHTML = vehiclesList[i].plate;
			document.getElementById("auction_ended_buy_price").innerHTML = vehiclesList[i].buyprice;
			document.getElementById("auction_ended_notes").innerHTML = vehiclesList[i].notes || locales.translations.nonotes;
			document.getElementById("auction_ended_highest_bid").innerHTML = vehiclesList[i].price;
			document.getElementById("auction_ended_bidder_name").innerHTML = vehiclesList[i].winnerName;
			document.getElementById("auction_ended_bidder_phone").innerHTML = vehiclesList[i].winnerPhone;
		}
	}
}

function viewVehicle(plate) {
	auctionData.plate = plate;
	for (let i = 0; i < vehiclesList.length; i++) {
        if (vehiclesList[i].plate == plate) {
            modalVehicleLabel = vehiclesList[i].label;
			modalVehiclePlate = vehiclesList[i].plate;
			modalBoughtFor = vehiclesList[i].buyprice;
			modalVehiclePrice = vehiclesList[i].price;
			modalVehicleName = vehiclesList[i].vehicle;
			modalForSale = vehiclesList[i].forSale;
			modalNegotiable = vehiclesList[i].negotiable;
			modalVehicleNotes = vehiclesList[i].notes;
			modalStartingBid = vehiclesList[i].starting_bid;
			modalHigherBid = vehiclesList[i].higher_bid;
			if (vehiclesList[i].inauction) {
				isVehicleInAuction = true
			} else {
				isVehicleInAuction = false
			}
        }
    };
	changeVehicleModalInfo();

	fetch(`https://okokVehicleSales/action`, {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json; charset=UTF-8',
		},
		body: JSON.stringify({
			action: "getVehicleInfo",
			plate: plate
		})
	}).then(resp => resp.json()).then(resp => setVehicleInfo(resp));
}

function setVehicleInfo(auction_data) {
	isOpen = true;
	timeLeft = auction_data.timeLeft;
	auctionData.higher_bid = auction_data.highestBid;
	$("#cancel_auction_startingbid").html(auction_data.startingBid);
	$("#cancel_auction_currentbid").html(auctionData.higher_bid);
	if (auction_data.highestBid > 0) { $("#cancel_auction").attr("disabled", true); } else { $("#cancel_auction").attr("disabled", false); }
	updateTimer(timeLeft);
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "isInAuction",
	}));
}

$('#cancelAuctionModal').on('hidden.bs.modal', function() {
	isOpen = false;
	clearInterval(timerInterval);
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "leaveAuction",
	}));
})

$('#viewStockModal').on('hidden.bs.modal', function() {
	isOpen = false;
	clearInterval(timerInterval);
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "leaveAuction",
	}));
})

function changeVehicleModalInfo() {
	if (modalHigherBid > 0) { $("#cancel_auction").attr("disabled", true); } else { $("#cancel_auction").attr("disabled", false); }
	if (isVehicleInAuction) {
		document.getElementById("cancel_auction_name").innerHTML = modalVehicleLabel;
		document.getElementById("cancel_auction_plate").innerHTML = modalVehiclePlate;
		document.getElementById("cancel_auction_boughtfor").innerHTML = modalBoughtFor;
		if (modalVehicleNotes) {
			document.getElementById("cancel_auction_notes").innerHTML = modalVehicleNotes;
		} else {
			document.getElementById("cancel_auction_notes").innerHTML = locales.translations.nonotes;
		}
		document.getElementById("cancel_auction_startingbid").innerHTML = modalStartingBid;
		document.getElementById("cancel_auction_currentbid").value = modalHigherBid;
	} else {
		document.getElementById("vehicle_name").innerHTML = modalVehicleLabel;
		document.getElementById("vehicle_plate").innerHTML = modalVehiclePlate;
		document.getElementById("bought_for").innerHTML = modalBoughtFor;
		document.getElementById("price_negotiable").checked = modalNegotiable;
		document.getElementById("vehicle_for_sale").checked = modalForSale;
		document.getElementById("new_auction_notes").innerHTML = modalVehicleNotes;
		document.getElementById("new_auction_name").innerHTML = modalVehicleLabel;
		document.getElementById("new_auction_plate").innerHTML = modalVehiclePlate;
		document.getElementById("new_auction_price").innerHTML = modalBoughtFor;

		if (modalVehiclePrice == 0) {
			$("#vehicle_price").attr("placeholder", modalVehiclePrice);
		} else {
			document.getElementById("vehicle_price").value = modalVehiclePrice;
		}
		if (!modalVehicleNotes) {
			$("#vehicle_notes").attr("placeholder", locales.translations.note);
			document.getElementById("new_auction_notes").innerHTML = locales.translations.nonotes;
		} else {
			document.getElementById("new_auction_notes").innerHTML = modalVehicleNotes;
			document.getElementById("vehicle_notes").value = modalVehicleNotes;
		}
	}

	document.getElementById("sell_vehicle_name_player").innerHTML = modalVehicleLabel;
	document.getElementById("sell_vehicle_plate_player").innerHTML = modalVehiclePlate;
}


// Orders Table

function openOrders() {
	selectedWindow = "orders";
	$('#orders_menu').html(``);
	$('#orders_menu').append(`
	<div class="row h-100" id="menu">
		<div class="col-md-2 d-flex flex-column sidebar-s">
			<img src="./img/logo.png" class="logo">
			<hr>
			<span class="sidebar-title">${locales.translations.menu}</span>
			<div id="sidebarOrderMenu">
			</div>
			<p id="close_overview" class="sidebar-item mt-auto logout"><i class="fas fa-sign-out-alt"></i></i> <span class="ms-1">${locales.translations.logout}</span></p>
		</div>
		<div class="col-md-10 tab-s">
			<div class="d-flex justify-content-between align-items-center">
				<span class="selected-page"><span id="page-title">${locales.translations.orders}</span></span>
				<div>
					<span class="username align-middle">
					<span id="playerName">${playerName}</span> <span id="avatar">${avatar}</span>
						<div id="playerGrade" class="grade">${playerRankLabel}</div>
					</span>
				</div>
			</div>
			<hr>
			<div class="d-flex flex-column gap0" id="page_info">
			<div id="createOrders" class="d-flex">
			</div>
			<table id="ordersTable" class="mt-025">
				<thead>
					<tr>
						<th class="text-center">${locales.translations.vehicle}</th>
						<th class="text-center">${locales.translations.customer}</th>
						<th class="text-center">${locales.translations.status}</th>
						<th class="text-center">${locales.translations.actions}</th>
					</tr>
				</thead>
				<tbody id="ordersTableData">
				</tbody>
			</table></div>
		</div>
	</div>
	`)

	if (isOwner == true ) {
		$('#sidebarOrderMenu').html(`
		<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
		<p class="sidebar-item" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item selected" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
		<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`)
		$('#createOrders').html(`
		<button type="button" class="btn btn-blue hire-emp" data-bs-toggle="modal" data-bs-target="#newOrderModal">${locales.translations.neworder}</button>
		`)
	} else if (isSubOwner == true ) {
		$('#sidebarOrderMenu').html(`
		<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
		<p class="sidebar-item" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item selected" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
		<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
		`)
		$('#createOrders').html(`
		<button type="button" class="btn btn-blue hire-emp" data-bs-toggle="modal" data-bs-target="#newOrderModal">${locales.translations.neworder}</button>
		`)
	} else {
		$('#sidebarOrderMenu').html(`
		<p class="sidebar-item mt-2" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item selected"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item-red" id="fire_myself" data-bs-toggle="modal" data-bs-target="#firemyself_modal"><i class="fas fa-user-tie"></i> <span class="ms-1">${locales.translations.quitjob}</span></p>
		`)
		$('#createOrders').html(`
		<button type="button" class="btn btn-blue hire-emp" data-bs-toggle="modal" data-bs-target="#newOrderModal">${locales.translations.neworder}</button>
		`)
	}

	$('#ordersTableData').html(``)
		var status = "";
		var row = ``;
		for (var i = 0; i < ordersList.length; i++) {

			if (ordersList[i].status == 0) {
 				status = `<span>${locales.translations.pending}</span>`; 
			} else if (ordersList[i].status == 1) {
				 status = `<span style="color: #1f5eff;">${locales.translations.awaitingcustomer}</span>`; 
			} else {
				status = `<span>${locales.translations.delivered}</span>`;
			}

			row += `
			<tr>
			<td class="text-center align-middle">${ordersList[i].vehicle}</td>
			<td class="text-center align-middle">${ordersList[i].customer_name}</td>
			<td class="text-center align-middle">${status}</td>
			<td class="text-center align-middle"><button type="button" class="btn btn-blue btn-vieworder" data-bs-toggle="modal" data-bs-target="#viewOrderModal" onClick="editOrder('${ordersList[i].customer_phone}')"><i class="fa-solid fa-eye"></i> ${locales.translations.view}</button></td>
		</tr>
			`;
		} 
	$('#ordersTableData').append(row);

	var table_id = document.getElementById('ordersTable');
	table.push(new simpleDatatables.DataTable(table_id, {
		perPageSelect: false,
		perPage: 6,
		labels: {
			placeholder: locales.translations.search,
			noRows: locales.translations.noentriesfound,
			noResults: locales.translations.noresults,
		}
	}));
}

function editOrder(phone) {

	for (var i = 0; i < ordersList.length; i++) {

		if (ordersList[i].customer_phone == phone) {
			$('#dropdown_order_status').html(``);
			document.getElementById("edit_order_vehicle").value = ordersList[i].vehicle;
			document.getElementById("edit_order_customer").value = ordersList[i].customer_name;
			document.getElementById("edit_order_phone").value = ordersList[i].customer_phone;
			if (!currencyOnLeft) {
				document.getElementById("edit_order_agreed_price").value = ordersList[i].price;
			} else {
				document.getElementById("edit_order_agreed_price").value = currency + ordersList[i].price;
			}
			if (ordersList[i].notes) { 
				document.getElementById("edit_order_notes").value = ordersList[i].notes;
			} else {
				$("#edit_order_notes").attr("placeholder", locales.translations.note);
			}
			if (ordersList[i].status == 2) { 
				$('#order_status').html(`
				<button type="button" id="finish_order" class="btn btn-blue w-100" data-bs-toggle="modal" data-bs-target="#viewOrderModal"></button>`);
				$("#finish_order").html(locales.translations.finish);
			} else {
				$('#order_status').html(`
				<div class="cancelorder" id="cancel_order" data-bs-toggle="modal" data-bs-target="#cancelorder_modal" data-bs-dismiss="modal"></div>
				<button type="button" id="save_order" class="btn btn-blue mt-2 w-100" data-bs-toggle="modal" data-bs-target="#viewOrderModal"></button>`);
				$("#save_order").html(locales.translations.save);
				$("#cancel_order").html(locales.translations.cancelorder);
			}
			orderStatus = ordersList[i].status;
			if (ordersList[i].status == 0) {
				$('#dropdown_order_status').html(`
				<option value="0">${locales.translations.pending}</option>
				<option value="1">${locales.translations.awaitingcustomer}</option>
				<option value="2">${locales.translations.delivered}</option>`);
			} else if (ordersList[i].status == 1) {
				$('#dropdown_order_status').html(`
				<option value="1">${locales.translations.awaitingcustomer}</option>
				<option value="0">${locales.translations.pending}</option>
				<option value="2">${locales.translations.delivered}</option>`);
			} else {
				$('#dropdown_order_status').html(`
				<option value="2">${locales.translations.delivered}</option>
				<option value="0">${locales.translations.pending}</option>
				<option value="1">${locales.translations.awaitingcustomer}</option>`);
			}
		}
	}
}	

// Employees Table

function openEmployees() {
	selectedWindow = "employees";
	$('#employees_menu').html(``);
	$('#employees_menu').append(`
	<div class="row h-100" id="menu">
		<div class="col-md-2 d-flex flex-column sidebar-s">
			<img src="./img/logo.png" class="logo">
			<hr>
			<span class="sidebar-title">${locales.translations.menu}</span>
			<div id="sidebarEmployees">
			<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
			<p class="sidebar-item" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
			<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
			<p class="sidebar-item selected" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
			<p class="sidebar-item" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
			</div>
			<p id="close_overview" class="sidebar-item mt-auto logout"><i class="fas fa-sign-out-alt"></i></i> <span class="ms-1">${locales.translations.logout}</span></p>
		</div>
		<div class="col-md-10 tab-s">
			<div class="d-flex justify-content-between align-items-center">
				<span class="selected-page"><span id="page-title">${locales.translations.employees}</span></span>
				<div>
					<span class="username align-middle">
					<span id="playerName">${playerName}</span> <span id="avatar">${avatar}</span>
						<div class="grade">${playerRankLabel}</div>
					</span>
				</div>
			</div>
			<hr>
			<div class="d-flex flex-column gap0" id="page_info">
			<div class="d-flex">
				<button type="button" id="hireEmployeeButton" class="btn btn-blue hire-emp" data-bs-target="#hireEmployeeModal">${locales.translations.hireemployee}</button>
			</div>
			<table id="employeesTable" class="mt-025">
					<thead>
						<tr>
							<th class="text-center">${locales.translations.name}</th>
							<th class="text-center">${locales.translations.grade}</th>
							<th class="text-center">${locales.translations.totalsales}</th>
							<th class="text-center">${locales.translations.actions}</th>
						</tr>
					</thead>
					<tbody id="employeesTableData">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	`);

	if ( isOwner == true ) {
		$('#sidebarEmployees').append(`
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`);
	}

	$('#employeesTableData').html(``)
	var row = ``
	for (var i = 0; i < employeesList.length; i++) {
		row += `
		<tr>
		<td class="text-center align-middle">${employeesList[i].name}</td>
			<td class="text-center align-middle">${employeesList[i].rankTag}</td>
			<td class="text-center align-middle">${employeesList[i].totalsales}</td>
			<td class="text-center align-middle"><button type="button" class="btn btn-blue btn-editemployee" data-employee_name="${employeesList[i].name}" data-employee_rank="${employeesList[i].rankTag}" data-employee_earned="${employeesList[i].totalsales}" data-bs-toggle="modal" data-bs-target="#editEmployeeModal" onClick="editEmployee('${employeesList[i].name}')"><i class="fa-solid fa-pen-to-square"></i> ${locales.translations.edit}</button></td>
		</tr>
			</tr>
		`;
	}
	
	$('#employeesTableData').append(row);

	var table_id = document.getElementById('employeesTable');
	table.push(new simpleDatatables.DataTable(table_id, {
		perPageSelect: false,
		perPage: 6,
		labels: {
			placeholder: locales.translations.search,
			noRows: locales.translations.noentriesfound,
			noResults: locales.translations.noresults,
		}
	}));
}

// Edit Employees info

function editEmployee(name) {
    for (let i = 0; i < employeesList.length; i++) {
        if (employeesList[i].name == name) {

            modalEmployeeName = employeesList[i].name;
            modalEmployeeTotalOrders = employeesList[i].totalsales;
			modalEmployeeTotalEarned = employeesList[i].totalearned;
            modalEmployeeGrade = employeesList[i].rankTag;
			employeeID = employeesList[i].identifier;
            changeEmployeesModalInfo();
        }
    };
}


// Change the info to fire player

function changeEmployeesModalInfo() {
	document.getElementById("fireEmployeeNameChange").innerHTML = `${locales.translations.fireemployee}` + ' ' + modalEmployeeName + "?";
	document.getElementById("employee_name").innerHTML = modalEmployeeName;
	document.getElementById("employee_total-orders").innerHTML = modalEmployeeTotalOrders;
	document.getElementById("employee_total-earned").innerHTML = modalEmployeeTotalEarned;
	var num = ranks.length;
	var dropdown = ``;
	dropdown += `<option value="${0}">${modalEmployeeGrade}</option>`;
	if(num > 0){
		
		for(var i = 0; i < num; i++) {
			if (ranks[i].label != modalEmployeeGrade) { 
				dropdown += `
					<option value="${ranks[i].rank}">${ranks[i].label}</option>
				`;
			}
		}
	} 
	$('#dropdownRanks').html(dropdown);
} 


// Sale History Table

function openSalesHistory() {
	selectedWindow = "saleshistory";
	$('#sales_menu').html(``);
	$('#sales_menu').append(`
	<div class="row h-100" id="menu">
	<div class="col-md-2 d-flex flex-column sidebar-s">
		<img src="./img/logo.png" class="logo">
		<hr>
		<span class="sidebar-title">${locales.translations.menu}</span>
		<div id="sidebarSalesHistory">
		<p class="sidebar-item mt-2" id="overview_page"><i class="bi bi-grid-1x2-fill"></i> <span class="ms-1">${locales.translations.overview}</span></p>
		<p class="sidebar-item" id="stock_page"><i class="fas fa-warehouse"></i> <span class="ms-1">${locales.translations.stock}</span></p>
		<p class="sidebar-item" id="orders_page"><i class="fas fa-map-location-dot"></i> <span class="ms-1">${locales.translations.orders}</span></p>
		<p class="sidebar-item" id="employees_page"><i class="fas fa-user-friends"></i> <span class="ms-1">${locales.translations.employees}</span></p>
		<p class="sidebar-item selected" id="saleshistory_page"><i class="fas fa-chart-column"></i> <span class="ms-1">${locales.translations.saleshistory}</span></p>
		</div>
		<p id="close_overview" class="sidebar-item mt-auto logout"><i class="fas fa-sign-out-alt"></i></i> <span class="ms-1">${locales.translations.logout}</span></p>
	</div>
	<div class="col-md-10 tab-s">
		<div class="d-flex justify-content-between align-items-center">
			<span class="selected-page"><span id="page-title">${locales.translations.saleshistory}</span></span>
			<div>
				<span class="username align-middle">
				<span id="playerName">${playerName}</span> <span id="avatar">${avatar}</span>
					<div class="grade">${playerRankLabel}</div>
				</span>
			</div>
		</div>
		<hr>
		<div class="d-flex flex-column gap0" id="page_info">
		<table id="salesHistoryTable" class="mt-295">
			<thead>
				<tr>
					<th class="text-center">${locales.translations.date}</th>
					<th class="text-center">${locales.translations.vehicle}</th>
					<th class="text-center">${locales.translations.value}</th>
					<th class="text-center">${locales.translations.seller}</th>
				</tr>
			</thead>
			<tbody id="salesHistoryTableData">
			</tbody>
		</table>
		</div>
	</div>
	`);

	if ( isOwner == true ) {
		$('#sidebarSalesHistory').append(`
		<p class="sidebar-item-red" id="sell_business" data-bs-toggle="modal" data-bs-target="#sellbusiness_modal"><i class="fas fa-building"></i> <span class="ms-1">${locales.translations.sellbusiness}</span></p>
		`);
	}

	$('#salesHistoryTableData').html(``)
	var row = ``

	for (var i = 0; i < salesHistoryList.length; i++) {
		if (!currencyOnLeft) {
			row += `
			<tr>
				<td class="text-center align-middle">${salesHistoryList[i].date}</td>
				<td class="text-center align-middle">${salesHistoryList[i].vehicle_name} (${salesHistoryList[i].plate})</td>
				<td class="text-center align-middle">${salesHistoryList[i].value}${currency}</td>
				<td class="text-center align-middle">${salesHistoryList[i].seller_name}</td>
			</tr>
				</tr>
			`;
		} else {
			row += `
			<tr>
				<td class="text-center align-middle">${salesHistoryList[i].date}</td>
				<td class="text-center align-middle">${salesHistoryList[i].vehicle_name} (${salesHistoryList[i].plate})</td>
				<td class="text-center align-middle">${currency}${salesHistoryList[i].value}</td>
				<td class="text-center align-middle">${salesHistoryList[i].seller_name}</td>
			</tr>
				</tr>
			`;
		}
	}
	
	$('#salesHistoryTableData').append(row);

	var table_id = document.getElementById('salesHistoryTable');
	table.push(new simpleDatatables.DataTable(table_id, {
		perPageSelect: false,
		perPage: 6,
		labels: {
			placeholder: locales.translations.search,
			noRows: locales.translations.noentriesfound,
			noResults: locales.translations.noresults,
		}
	}));
}


function openInspectVehicle() {
	selectedWindow = "inspectvehicle";

	$("#inspect_vehicle_name").html(inspectVehicleInfo.label);
	$("#inspect_vehicle_plate").html(inspectVehicleInfo.plate);
	$("#inspect_vehicle_price").html(inspectVehicleInfo.price);
	$("#inspect_vehicle_notes").html(inspectVehicleInfo.notes);
	$("#inspect_vehicle_title").html(locales.translations.vehicleinfo);
	$("#inspect_vehicle_name_title").html(locales.translations.name);
	$("#inspect_vehicle_plate_title").html(locales.translations.plate);
	$("#inspect_vehicle_notes_title").html(locales.translations.notes);

	if(inspectVehicleInfo.notes == "") {
		$("#inspect_vehicle_notes").html(locales.translations.nonotes);
	}

	if (!inspectVehicleInfo.negotiable) {
		$("#inspect_vehicle_price_title").html(locales.translations.price + ' (' + currency + ')' );
	} else {
		$("#inspect_vehicle_price_title").html(locales.translations.price + ' (' + currency + ') ' + `<div class="neg">${locales.translations.negotiable}</div>`);
	}

	if (buyVehicleOutright) {
		$("#buy_outright").html(`
		<div class="d-flex justify-content-center mt-3">
			<button id="purchase_vehicle" type="button" class="btn btn-blue ci-option"></button>
		</div>`);
	} else { 
		$("#buy_outright").html(`
		<div class="d-flex justify-content-center mt-3">
			<button id="contact_owner" type="button" class="btn btn-blue ci-option"></button>
		</div>`);
	}

	if (inspectVehicleInfo.forSale) {
		$("#purchase_vehicle").attr("disabled", false);
		$("#contact_owner").attr("disabled", false);
	} else {
		$("#purchase_vehicle").attr("disabled", true);
		$("#contact_owner").attr("disabled", true);
	}

	$("#purchase_vehicle").html(locales.translations.purchasebutton);
	$("#contact_owner").html(locales.translations.contactbutton);

	$('#inspect_menu').fadeIn();

	setupContacts();
}

function setupContacts() { 
	$("#contacts_store_name").html(storeName);
	var contactsetup = ``;
	var hrTop = ``;
	if (employeesStatus.length > 6) { 
		document.getElementById("contact_menu").classList.add("p103437511");
	} else {
		document.getElementById("contact_menu").classList.add("p106562511");
	}

	for (var i = 0; i < employeesStatus.length; i++) {
		if (!i == 0) {hrTop = `<hr class="mg034375">`}
		if (i % 2 == 0) {
			contactsetup += `
			${hrTop}
			<div class="employee-div">
				<div class="employee-h brgray">
					<div class="ee">
						<span class="fff">${locales.translations.name}</span>
						<span>${employeesStatus[i].name}</span>
					</div>
					<div class="ee">
						<span class="fff">${locales.translations.grade}</span>
						<span>${employeesStatus[i].rank}</span>
					</div>
					<div class="ee">
						<span class="fff">${locales.translations.phonenumber}</span>
						<span><i class="fa-solid fa-copy" onClick="viewPhoneNumber('${employeesStatus[i].phone}')"></i> ${employeesStatus[i].phone}</span>
					</div>
					<div class="ee">
						<span class="fff">${locales.translations.status}</span>
						<span><span class="emp-status ${employeesStatus[i].online ? 'online' : 'offline'}"></span> ${employeesStatus[i].online ? locales.translations.online : locales.translations.offline}</span>
					</div>
				</div> `;
		} else {
			contactsetup += `
				<div class="employee-div">
					<div class="employee-h pr-034375">
						<div class="ee">
							<span class="fff">${locales.translations.name}</span>
							<span>${employeesStatus[i].name}</span>
						</div>
						<div class="ee">
							<span class="fff">${locales.translations.grade}</span>
							<span>${employeesStatus[i].rank}</span>
						</div>
						<div class="ee">
							<span class="fff">${locales.translations.phonenumber}</span>
							<span><i class="fa-solid fa-copy" onClick="viewPhoneNumber('${employeesStatus[i].phone}')"></i> ${employeesStatus[i].phone}</span>
						</div>
						<div class="ee">
							<span class="fff">${locales.translations.status}</span>
							<span><span class="emp-status ${employeesStatus[i].online ? 'online' : 'offline'}"></span> ${employeesStatus[i].online ? locales.translations.online : locales.translations.offline}</span>
						</div>
					</div>
				</div> 
			</div>`;
		}
	}
	$("#employees_contact_list").html(contactsetup);
}

function viewPhoneNumber(phone) {

	for (var i = 0; i < employeesStatus.length; i++) {
		if (employeesStatus[i].phone == phone) {
			const textarea = document.createElement('textarea');
			textarea.value = phone;
			textarea.style.position = 'fixed';
			document.body.appendChild(textarea);
			textarea.select();
			document.execCommand('copy');
			document.body.removeChild(textarea);
			$.post('https://okokVehicleSales/action', JSON.stringify({
				action: "copiedToClipboard",
				phone: phone,
				user: employeesStatus[i].name
			}));
		}
	}
}

function openAuction() {

	function test(time) {
		const hours = Math.floor(time / 3600);
		const minutes = Math.floor((time % 3600) / 60);
		const seconds = time % 60;

		let formattedTime = "";

		if (hours > 0) {
			formattedTime += hours + "h ";
		}

		if (minutes > 0 && hours == 0) {
			formattedTime += minutes + "m ";
		}

		if (seconds > 0 && hours == 0 && minutes == 0 || formattedTime === "") {
			formattedTime += seconds + "s";
		}

		return formattedTime;
	}
	test(timeLeft)

	auctionmenu = `
	<div id="${auctionData.bidID}" class="auction_menu">
		<span class="close-button ob" id="closeAuctionMenu"><i class="fas fa-times"></i></span>
		<div class="section">
			<span id="auction_info_title" class="page-title ob"></span>
			<hr class="mg060 ob">
			<div class="auction_div">
				<div id="winner_${auctionData.bidID}" class="auction_winner"></div>
				<div class="auction_column ob">
					<span id="auction_store_name_title" class="cat-t"></span>
					<span id="auction_store_name" class="form-control inspect-fc"></span>
					<span id="auction_vehicle_name_title" class="cat-t mt-2"></span>
					<span id="auction_vehicle_name" class="form-control inspect-fc"></span>
					<span id="auction_plate_title" class="cat-t mt-2"></span>
					<span id="auction_plate" class="form-control inspect-fc"></span>
					<span id="auction_notes_title" class="cat-t mt-2"></span>
					<span id="auction_notes" class="auction-ta"></span>
				</div>
				<div class="auction_column ob">
					<span id="starting_bid_title_client" class="cat-t"></span>
					<span id="starting_bid_client" class="form-control inspect-fc"></span>
					<span id="total_bids_title" class="cat-t mt-2"></span>
					<span id="total_bids" class="form-control inspect-fc"></span>
					<span id="time_left_title" class="cat-t mt-2"></span>
					<span id="time_left" class="form-control inspect-fc"></span>
					<span id="current_bid_title" class="cat-t mt-2"></span>
					<span id="current_highest_bid" class="form-control inspect-fc"></span>
					<span id="your_bid_title" class="cat-t mt-2"></span>
					<div class="input-group">
						<input id="your_bid" type="number" class="form-control yourbid-fc" onkeyup="checkIfEmpty()">
						<button id="make_new_bid" class="btn btn-blue btn-bid" type="button"></button>
					</div>
				</div>
			</div>
		</div>
	</div>`;

	$(".auctions").html(auctionmenu);

	document.getElementById('time_left').textContent = test(timeLeft);

	updateTimer(timeLeft);

	if (timeLeft <= 0) { finishAuction(); }
	if (playerBank >= auctionData.higher_bid) {
		document.getElementById('make_new_bid').disabled = false;
	} else {
		document.getElementById('make_new_bid').disabled = true;
	}
	if (auctionData.higher_bid == 0) {
		$("#your_bid").val(Number(auctionData.starting_bid) + 1);
	} else {
		$("#your_bid").val(Number(auctionData.higher_bid) + 1);
	}

	if (isOpen) {
		selectedWindow = "auction";
	}
	$("#auction_info_title").html(locales.translations.auctioninfo);
	$("#auction_store_name_title").html(locales.translations.seller);
	$("#auction_store_name").html(auctionData.store_name);
	$("#auction_vehicle_name_title").html(locales.translations.vehicle);
	$("#auction_vehicle_name").html(inspectVehicleInfo.label);
	$("#auction_plate_title").html(locales.translations.plate);
	$("#auction_plate").html(inspectVehicleInfo.plate);
	$("#auction_notes_title").html(locales.translations.notes);
	$("#auction_notes").html(inspectVehicleInfo.notes);

	if(inspectVehicleInfo.notes == "") {
		$("#auction_notes").html(locales.translations.nonotes);
	}

	$("#starting_bid_title_client").html(locales.translations.startingbid + ' (' + currency + ')');
	$("#total_bids_title").html(locales.translations.totalbids);
	$("#time_left_title").html(locales.translations.timeleft);
	$("#current_bid_title").html(locales.translations.currentbid + ' (' + currency + ')');
	$("#your_bid_title").html(locales.translations.yourbid + ' (' + currency + ')');
	$("#make_new_bid").html(locales.translations.bidbutton);
	$("#starting_bid_client").html(auctionData.starting_bid);
	$("#total_bids").html(auctionData.total_bids); 
	if (!auctionData.hasBided) {
		$("#current_highest_bid").html(auctionData.higher_bid);
	} else {
		if (highestbidder) {
			$("#current_highest_bid").html(`<i class="fa-solid fa-bullseye bid-won"></i> ` + auctionData.higher_bid);
		} else {
			$("#current_highest_bid").html(`<i class="fa-solid fa-bullseye outbid"></i> ` + auctionData.higher_bid);
		}
	}

	$("#your_bid").html(auctionData.starting_bid + 1);

	$(`#${auctionData.bidID}`).fadeIn();
}

function openSellVehicle() {
	selectedWindow = "sellVehicle";
	$("#sell_vehicle_plate").html(sellVehicleInfo.plate);
	$('.sellvehicle_menu').fadeIn();
}

function setupBuyVehicleFromDealership() {
	$("#buy_vehicle_player_title").html(locales.translations.buyvehicle);
	$("#buy_vehicle_name_player_title").html(locales.translations.name);
	$("#buy_vehicle_plate_player_title").html(locales.translations.plate);
	$("#buy_for_player_title").html(locales.translations.price + ' (' + currency + ')');
	$("#buy_from_dealership_vehicle").html(locales.translations.buybutton);
	document.getElementById("buy_vehicle_name_player").innerHTML = vehicleBuyInfo.vehicle;
	document.getElementById("buy_vehicle_plate_player").innerHTML = vehicleBuyInfo.plate;
	$("#buy_vehicle_name_player").html(vehicleBuyInfo.vehicle);
	$("#buy_vehicle_plate_player").html(vehicleBuyInfo.plate);
	$("#buy_for_player").html(vehicleBuyInfo.price);
	$('.buy_from_dealership_menu').fadeIn();
}

function numberWithSpaces(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function checkIfEmpty() {
	if (isOwner || isSubOwner) {
		var forSale = false;
		var negotiable = false;
		var forSaleValue = document.getElementById("vehicle_for_sale").checked;
		var negotiableValue = document.getElementById("price_negotiable").checked;
		var vehicleValue = modalVehiclePrice;

		if (modalForSale) {forSale = true}
		if (modalNegotiable) {negotiable = true}

		if (document.getElementById("deposit_money").value != "" && document.getElementById("deposit_money").value > 0) {
			document.getElementById('deposit').disabled = false;
		} else {
			document.getElementById('deposit').disabled = true;
		}
		if (document.getElementById("withdraw_money").value != "" && document.getElementById("withdraw_money").value > 0) {
			document.getElementById('withdraw').disabled = false;
		} else {
			document.getElementById('withdraw').disabled = true;
		}
		if (document.getElementById("vehicle_notes").value != "" || document.getElementById("vehicle_price").value != vehicleValue || forSaleValue != forSale || negotiableValue != negotiable) {	
			document.getElementById('save_vehicle').disabled = false;
		} else {
			document.getElementById('save_vehicle').disabled = true;
		}
		if (document.getElementById("starting_bid_value").value != "" && document.getElementById("starting_bid_value").value != 0) {
			document.getElementById('start_auction').disabled = false;
		} else {
			document.getElementById('start_auction').disabled = true;
		}
	}
	if (document.getElementById("new_order_vehicle").value != "" && document.getElementById("new_order_customer").value != "" && document.getElementById("new_order_phone").value != "" && document.getElementById("new_order_agreed").value > 0) {
		document.getElementById('create_order').disabled = false;
	} else {
		document.getElementById('create_order').disabled = true;
	}
	if (document.getElementById("buy_price").value != "" && document.getElementById("dropdown_vehicle_list").value != 0) {
		document.getElementById('buy_veh').disabled = false;
	} else {
		document.getElementById('buy_veh').disabled = true;
	}
	if (document.getElementById("sell_for_player").value != "" && document.getElementById("sell_for_player").value != 0 && document.getElementById("dropdown_closest_players").value != 0) {
		document.getElementById('sell_to_player_vehicle').disabled = false;
	} else {
		document.getElementById('sell_to_player_vehicle').disabled = true;
	}
	if (document.getElementById("your_bid")) {
		if (document.getElementById("your_bid").value < auctionData.higher_bid + 1) {
			document.getElementById('your_bid').value = Number(auctionData.higher_bid) + 1;
		}
		if (playerBank < document.getElementById("your_bid").value) {
			document.getElementById('make_new_bid').disabled = true;
		} else {
			document.getElementById('make_new_bid').disabled = false;
		}
	}
}

function abortTimer() {
	clearTimeout(tid);
}


// Close Menu

function closeMenu() {
	isOpenedByStaff = false;
	openedDealershipMenu = false;
	isOpen = false;
	clearInterval(timerInterval);
	isMenuOpened = false;
	cartPrice = 0;
	var time = 300
	abortTimer();
	if (selectedWindow == "buyBusiness") {
		$("#buyBusinessModal").modal('hide');
		selectedWindow = "";
		time = 0;
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "close",
		}));
	}

	if (selectedWindow == "auction") {
		$('.auction_menu').fadeOut();
		selectedWindow = "";
		time = 0;
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "close",
		}));
	}

	if (selectedWindow == "inspectvehicle") {
		$('#inspect_menu').fadeOut();
		$('#contact_menu').fadeOut();
		selectedWindow = "";
		time = 0;
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "close",
		}));
	}

	if (selectedWindow == "sellVehicle") {
		$('.sellvehicle_menu').fadeOut();
		selectedWindow = "";
		time = 0;
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "close",
		}));
	}

	if (selectedWindow != "" && selectedWindow != "buy_menu") {
		$('.loading').fadeIn();
		$('.loadingtxt').html(`${locales.translations.loggingout}`);
		time = 300
	}

	if (selectedWindow == "buy_menu") {
		$('.buy_menu').fadeOut();
		selectedWindow = "";
		time = 0
	}
	
	setTimeout(function() {
		if (selectedWindow == "loading") {
			$(".loading").fadeOut();
		} else if (selectedWindow == "overview") {
			$(".overview").fadeOut();
		} else if (selectedWindow == "stock") {
			$(".stock").fadeOut();
		}  else if (selectedWindow == "orders") {
			$(".orders").fadeOut();
		} else if (selectedWindow == "employees") {
			$(".employees").fadeOut();
		} else if (selectedWindow == "saleshistory") {
			$(".sales").fadeOut();
		}

		selectedWindow = "";

		setTimeout(function() {
			$('.loading').fadeOut();
			$.post('https://okokVehicleSales/action', JSON.stringify({
				action: "close",
			}));
			setTimeout(function() {
				$('.loadingtxt').html(`${locales.translations.loadingdata}`);
			}, 700);
		}, time);
	}, time);

	setTimeout(function(){
		$('.modal').modal('hide');
	}, time);
}

$(document).on('click', "#closeInspectMenu", function() {
	closeMenu();
});

$('#buyVehicleModal').on('hidden.bs.modal', function() {
	$("#buy_price").val("");
})

$(document).on('click', "#close_overview", function() {
	closeMenu();
});

$(document).ready(function() {
	document.onkeyup = function(data) {
		if (data.which == 27) {
			closeMenu();
		}
	};
});

$(document).on('click', "#closeAuctionMenu", function() {
	closeMenu();
});

$(document).on('click', "#closeContactMenu", function() {
	$('#contact_menu').fadeOut();
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "close",
	}));
});


// Buy Business Modal

$(document).on('click', "#closeBuyBusinessModal, #closeBuyBusinessButton", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "close",
	}));
});

$(document).on('click', "#buybusiness_btn_modal", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "buyBusiness"
	}));
});

$(document).on('click', "#cancel_auction", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "cancelAuction",
		plate: modalVehiclePlate
	}));
});


// Sell Business Modals

$(document).on('click', "#sellbusiness_button_modal", function() {
	closeMenu();
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "sellBusiness",
		storeID: storeID,
		businessPrice: businessPrice
	}));
});

$(document).on('click', "#buy_from_dealership_vehicle", function() {
	var vehicle = vehicleBuyInfo.vehicle;
	var plate = vehicleBuyInfo.plate;
	var price = vehicleBuyInfo.price;
	var storeID = vehicleBuyInfo.storeID;
	var employeecitizenid = vehicleBuyInfo.employeecitizenid;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "buyVehicleFromDealership",
		storeID: storeID,
		vehicle: vehicle,
		plate: plate,
		price: price,
		employeecitizenid: employeecitizenid
	}));
	$('.buy_from_dealership_menu').fadeOut();
});


// Deposit Modals

$(document).on('click', "#depositModal", function() {
	$('#depositModal').fadeIn();
});

$('#depositModal').on('hidden.bs.modal', function() {
	$("#deposit_money").val("");
})

$(document).on('click', "#deposit", function() {
	if (document.getElementById("deposit_money").value > 0) {
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "depositMoney",
			companyID: storeID,
			amount: document.getElementById("deposit_money").value,
			storeMoney: storeMoney
		}));
	}
});


// Withdraw Modals

$(document).on('click', "#withdrawModal", function() {
	$('#withdrawModal').fadeIn();
});

$('#withdrawModal').on('hidden.bs.modal', function() {
	$("#withdraw_money").val("");
})

$(document).on('click', "#withdraw", function() {

	if (document.getElementById("withdraw_money").value > 0) {
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "withdrawMoney",
			companyID: storeID,
			amount: document.getElementById("withdraw_money").value,
			storeMoney: storeMoney
		}));
	}
});


// Hire Players Modal

$(document).on('click', "#hireEmployeeButton", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "getClosePeople",
	}));
});

document.getElementById("dropdown_to_hire").addEventListener("change", function() {
	var hireValue = document.getElementById("dropdown_to_hire").value;
	if (hireValue != 0) {
		document.getElementById("hire_employee").removeAttribute("disabled");
	} else if (hireValue == 0) {
		document.getElementById("hire_employee").setAttribute("disabled", "disabled");
	}
  });

$(document).on('click', "#hire_employee", function() {
	var hiredPerson = document.getElementById('dropdown_to_hire').value
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "hireEmployee",
		hiredPerson: hiredPerson,
		storeID: storeID,
	}));
});


// Fire Player Modal

$(document).on('click', "#fire_employee", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "fireEmployee",
		storeID: storeID,
		employeeID: employeeID,
	}));
});


// Fire Myself Modal

$(document).on('click', "#firemyself_button_modal", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "fireMyself",
		storeID: storeID,
		employeeCitizen: employeeCitizen,
		firstOwner: firstOwner
	}));
	closeMenu();
});

// Edit Employees Modal

document.getElementById("dropdownRanks").addEventListener("change", function() {
	rank = document.getElementById("dropdownRanks").value;
	if (rank != 0) {
		document.getElementById("edit_employee").removeAttribute("disabled");
	} else if (rank == 0) {
		document.getElementById("edit_employee").setAttribute("disabled", "disabled");
	}
  });

$(document).on('click', "#edit_employee", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "editEmployee",
		storeID: storeID,
		employeeID: employeeID,
		employeeRank: rank,
	}));
	document.getElementById("edit_employee").setAttribute("disabled", "disabled");
});


// Save Vehicle Info

$(document).on('click', "#save_vehicle", function() {
	var newPrice = document.getElementById("vehicle_price").value;
	var notes = document.getElementById("vehicle_notes").value;
	var forSale = document.getElementById("vehicle_for_sale").checked;
	var negotiable = document.getElementById("price_negotiable").checked;
	var plate = document.getElementById("vehicle_plate").value;

	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "saveVehicleInfo",
		newPrice: newPrice,
		oldPrice: modalVehiclePrice,
		notes: notes,
		vehicle: modalVehicleLabel,
		forSale: forSale,
		negotiable: negotiable,
		plate: modalVehiclePlate,
		storeID: storeID
	}));
	document.getElementById("save_vehicle").setAttribute("disabled", "disabled");
	document.getElementById("vehicle_price").value = "";
	document.getElementById("vehicle_notes").value = "";
});


// Create Order

$(document).on('click', "#create_order", function() {
	var vehicleName = document.getElementById("new_order_vehicle").value;
	var customer = document.getElementById("new_order_customer").value;
	var phone = document.getElementById("new_order_phone").value;
	var agreedPrice = document.getElementById("new_order_agreed").value;
	var notex = document.getElementById("new_order_notes").value;
	var note = notex ? notex : ""; 
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "createOrder",
		vehicleName: vehicleName,
		customer: customer,
		phone: phone,
		agreedPrice: agreedPrice,
		note: note,
		storeID: storeID
	}));
	document.getElementById("create_order").setAttribute("disabled", "disabled");
	document.getElementById("new_order_vehicle").value = "";
	document.getElementById("new_order_customer").value = "";
	document.getElementById("new_order_phone").value = "";
	document.getElementById("new_order_agreed").value = "";
	document.getElementById("new_order_notes").value = "";
});


// Edit Order

$(document).on('click', "#save_order", function() {
	var notes = document.getElementById("edit_order_notes").value;
	var status = document.getElementById("dropdown_order_status").value;
	var vehicle = document.getElementById("edit_order_vehicle").value;
	var customer = document.getElementById("edit_order_customer").value;
	var phone = document.getElementById("edit_order_phone").value;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "editOrder",
		status: status,
		notes: notes,
		vehicle: vehicle,
		customer: customer,
		phone: phone,
		storeID: storeID
	}));

	document.getElementById("save_order").setAttribute("disabled", "disabled");
	document.getElementById("edit_order_notes").value = "";
	document.getElementById("dropdown_order_status").value = "";
});


// Finish Order

$(document).on('click', "#finish_order", function() {
	var vehicle = document.getElementById("edit_order_vehicle").value;
	var customer = document.getElementById("edit_order_customer").value;
	var phone = document.getElementById("edit_order_phone").value;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "finishOrder",
		phone: phone,
		vehicle: vehicle,
		customer: customer,
		storeID: storeID
	}));
});


// Confirm Cancel Order

$(document).on('click', "#cancel_order_confirm", function() {
	var phone = document.getElementById("edit_order_phone").value;
	var vehicle = document.getElementById("edit_order_vehicle").value;
	var customer = document.getElementById("edit_order_customer").value;

	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "cancelOrder",
		phone: phone,
		vehicle: vehicle,
		customer: customer,
		storeID: storeID
	}));
});


// Get Closest Vehicles

$(document).on('click', "#getClosestVehicles", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "getClosestVehicles",
		storeID: storeID
	}));
});


// Auctions 

$(document).on('click', "#start_auction", function() {
	var startingBid = document.getElementById("starting_bid_value").value;
	var plate = document.getElementById("new_auction_plate").textContent;
	var time = document.getElementById("dropdown_times").value;
	var vehicle = document.getElementById("new_auction_name").textContent;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "startAuction",
		startingbid: startingBid,
		vehicle: vehicle,
		plate: plate,
		time: time,
		storeID: storeID,
	}));
	document.getElementById("starting_bid_value").value = "";
});

$(document).on('click', "#make_new_bid", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "makeBid",
		storeID: storeID,
		bid: document.getElementById("your_bid").value,
		plate: inspectVehicleInfo.plate,
		under30: under30,
		timeToAdd: timeToAdd,
	}));
});

$(document).on('click', "#exit_auction", function() {
	selectedWindow = "auction";
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "close",
	}));
	$('.auction_menu').fadeOut();
});


// Buy Vehicle Modal

$(document).on('click', "#buy_veh", function() {
	for (var i = 0; i < nearestVehicles.length; i++) {
		if (nearestVehicles[i].vehiclePlate == document.getElementById("dropdown_vehicle_list").value) {
			vehicleName = nearestVehicles[i].vehicleName;
			var vehiclePrice = document.getElementById("buy_price").value;
		}
	}
	var plate = document.getElementById("dropdown_vehicle_list").value;
	var price = document.getElementById("buy_price").value;
	closeMenu();
	setTimeout(function() {
		$.post('https://okokVehicleSales/action', JSON.stringify({
			action: "buyVehicle",
			plate: plate,
			price: price,
			storeID: storeID,
			vehicleName: vehicleName,
			vehiclePrice: vehiclePrice
		}));
	}, 600);
});

$(document).on('click', "#purchase_vehicle", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "purchaseVehicle",
		price: inspectVehicleInfo.price,
		plate: inspectVehicleInfo.plate,
		vehicle: inspectVehicleInfo.label,
		storeID: storeID,
		zone: zoneID,
		vehicleEntity: vehicleEntity,
		vehicleCoords: vehicleCoords,
		vehicleHeading: vehicleHeading,
		vehicleProps: vehicleProps,
	}));
});	


// Sell Vehicle Modal

$(document).on('click', "#sell_vehicle", function() {
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "sellVehicle",
		plate: vehiclePlate,
		price: vehicleSellPrice,
		storeID: storeID,
		vehicle: vehicleName,
		buyerCitizenID: buyerCitizenID
	}));
});


$(document).on('click', "#sell_vehicle_to_player", function() {
	$('#viewStockModal').modal('hide');
});


$(document).on('click', "#sell_to_player_vehicle", function() {
	var vehicle = document.getElementById("sell_vehicle_name_player").textContent;
	var plate = document.getElementById("sell_vehicle_plate_player").textContent;
	var price = document.getElementById("sell_for_player").value;
	var buyer = document.getElementById('dropdown_closest_players').value;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "sellVehicleToPlayerMenu",
		price: price,
		plate: plate,
		vehicle: vehicle,
		storeID: storeID,
		buyer: buyer,
	}));
	closeMenu();
	document.getElementById("sell_for_player").value = "";
});


// Deliver Vehicle

$(document).on('click', "#deliver_vehicle", function() {
	var plate = plateToDeliverDocuments;
	$.post('https://okokVehicleSales/action', JSON.stringify({
		action: "deliverDocumentsToPlayer",
		plate: plate,
		storeID: storeID,
	}));
});	


// Contact Owner

$(document).on('click', "#contact_owner", function() {
	$('.inspect_menu').fadeOut();
	$('#contact_menu').fadeIn();
});


// Page Changes

$(document).on('click', "#overview_page", function() {
	$('.orders, .employees, .sales, .stock').hide();
	openOverview();
	$('.overview').show();

});

$(document).on('click', "#orders_page", function() {
	$('.overview, .employees, .sales, .stock').hide();
	openOrders();
	$('.orders').show();

});

$(document).on('click', "#employees_page", function() {
	$('.orders, .overview, .sales, .stock').hide();
	openEmployees();
	$('.employees').show();
});

$(document).on('click', "#saleshistory_page", function() {
	$('.orders, .overview, .employees, .stock').hide();
	openSalesHistory();
	$('.sales').show();
});

$(document).on('click', "#stock_page", function() {
	$('.orders, .overview, .employees, .sales').hide();
	openStock();
	$('.stock').show();
});