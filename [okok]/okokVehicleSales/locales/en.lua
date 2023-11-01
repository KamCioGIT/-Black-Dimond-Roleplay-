Locales['en'] = {

    -- TextUI

    ['buy_business'] = {
        text = '[E] Buy ${road} ${name} for ${price}' .. Config.Currency,
        color = 'darkblue',
        side = 'right'
    },

    ['access_business'] = {
        text = '[E] Open ${name}',
        color = 'darkblue',
        side = 'right'
    },

    ['unlock_vehicle'] = {
        text = '[E] Unlock Vehicle',
        color = 'darkblue',
        side = 'right'
    },

    ['check_information'] = {
        text = '[E] Check Vehicle',
        color = 'darkblue',
        side = 'right'
    },

    -- Requests

    ['hired_requests'] = {
        text = 'Do you want to be hired by',
    },

    -- Error Notifications

    ['something_wrong'] = {
        title = 'Dealership',
        text = 'Something went wrong, try again later',
        type = 'error',
        time = 5000,
    },

    ['not_enough_money'] = {
        title = 'Dealership',
        text = 'You don\'t have enough money',
        type = 'error',
        time = 5000,
    },

    ['not_enough_money_business'] = {
        title = 'Dealership',
        text = 'You don\'t have enough money on the business',
        type = 'error',
        time = 5000,
    },

    ['max_stores'] = {
        title = 'Dealership',
        text = 'You have reached the maximum of stores owned',
        type = 'error',
        time = 5000,
    },
    
    ['near_error'] = {
        title = 'Dealership',
        text = 'There is no one nearby',
        type = 'error',
        time = 5000,
    },

    ['near_error_vehicle'] = {
        title = 'Dealership',
        text = 'There are no vehicles nearby',
        type = 'error',
        time = 5000,
    },

    ['already_employee'] = {
        title = 'Dealership',
        text = '${name} is already employed at your Dealership',
        type = 'error',
        time = 5000,
    },

    ['max_employees'] = {
        title = 'Dealership',
        text = 'You can\'t hire ${name} because you reached the max of ${max} employees at the Dealership',
        type = 'error',
        time = 5000,
    },

    ['cant_hire_yourself'] = {
        title = 'Dealership',
        text = 'You can\'t hire yourself',
        type = 'error',
        time = 5000,
    },

    ['change_own_grade'] = {
        title = 'Dealership',
        text = 'You can\'t change your own grade',
        type = 'error',
        time = 5000,
    },

    ['employee_not_exist'] = {
        title = 'Dealership',
        text = 'That employee doesn\'t exist',
        type = 'error',
        time = 5000,
    },

    ['got_fired'] = {
        title = 'Dealership',
        text = 'You got fired from ${store_name}',
        type = 'error',
        time = 5000,
    },

    ['fired_himself'] = {
        title = 'Dealership',
        text = '${playerName} fired himself',
        type = 'error',
        time = 5000,
    },

    ['order_cancelled'] = {
        title = 'Dealership',
        text = 'The order for ${customer}\'s ${vehicle} has been cancelled',
        type = 'error',
        time = 5000,
    },

    ['plate_not_exist'] = {
        title = 'Dealership',
        text = 'The vehicle with plate ${plate} is not owned by anyone',
        type = 'error',
        time = 5000,
    },

    ['owner_not_online'] = {
        title = 'Dealership',
        text = 'The owner of the vehicle with plate ${plate} is not online',
        type = 'error',
        time = 5000,
    },

    ['vehicle_from_business'] = {
        title = 'Dealership',
        text = 'That vehicle is from the business',
        type = 'error',
        time = 5000,
    },

    ['need_item'] = {
        title = 'Dealership',
        text = 'You need a ${item} to send the offer',
        type = 'error',
        time = 5000,
    },

    ['bid_higher'] = {
        title = 'Dealership',
        text = 'You need to bid higher than the current bid <b>(${currentbid}' .. Config.Currency .. ')</b>',
        type = 'error',
        time = 5000,
    },

    ['auction_cancelled'] = {
        title = 'Dealership',
        text = 'You cancelled the auction for the ${vehicle}',
        type = 'error',
        time = 5000,
    },

    ['owner_not_close'] = {
        title = 'Dealership',
        text = 'The owner of the ${vehicle} <b>(${plate})</b> is not close to you',
        type = 'error',
        time = 5000,
    },

    ['vehicle_displayed'] = {
        title = 'Dealership',
        text = 'The vehicle needs to be displayed in order to start an auction',
        type = 'error',
        time = 5000,
    },

    -- Success Notifications

    ['bought_store'] = {
        title = 'Dealership',
        text = 'You bought the ${name} for ${price}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['money_deposited'] = {
        title = 'Dealership',
        text = 'You deposited ${money}' .. Config.Currency .. ' into the business',
        type = 'success',
        time = 5000,
    },

    ['money_withdrawn'] = {
        title = 'Dealership',
        text = 'You withdrawn ${money}' .. Config.Currency .. ' from the business',
        type = 'success',
        time = 5000,
    },

    ['sold_business'] = {
        title = 'Dealership',
        text = 'You sold the business for ${money}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['change_rank'] = {
        title = 'Dealership',
        text = 'You changed the rank of ${name} to ${job}',
        type = 'success',
        time = 5000,
    },

    ['got_hired'] = {
        title = 'Dealership',
        text = 'You were hired for the ${store_name}',
        type = 'success',
        time = 5000,
    },

    ['success_hired'] = {
        title = 'Dealership',
        text = 'You hired ${hired_name}',
        type = 'success',
        time = 5000,
    },

    ['success_fired'] = {
        title = 'Dealership',
        text = 'You fired ${fired_name}',
        type = 'success',
        time = 5000,
    },

    ['fired_yourself'] = {
        title = 'Dealership',
        text = 'You successfully fired yourself',
        type = 'success',
        time = 5000,
    },

    ['vehicle_info_updated'] = {
        title = 'Dealership',
        text = 'The vehicle info for the ${vehicle} with plate ${plate} has been updated',
        type = 'success',
        time = 5000,
    },

    ['order_created'] = {
        title = 'Dealership',
        text = 'The order for ${customer}\'s ${vehicle} was successfully created for ${price}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['order_updated'] = {
        title = 'Dealership',
        text = 'The order for ${customer}\'s ${vehicle} was successfully updated',
        type = 'success',
        time = 5000,
    },

    ['order_finished'] = {
        title = 'Dealership',
        text = 'The order for ${customer}\'s ${vehicle} has been finished',
        type = 'success',
        time = 5000,
    },

    ['vehicle_saved'] = {
        title = 'Dealership',
        text = 'Vehicle Saved',
        type = 'success',
        time = 5000,
    },

    ['vehicle_opened'] = {
        title = 'Dealership',
        text = 'Vehicle Opened',
        type = 'success',
        time = 5000,
    },

    ['offer_accepted'] = {
        title = 'Dealership',
        text = 'You accepted the offer of the ${vehicle} for ${price}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['accepted_order'] = {
        title = 'Dealership',
        text = 'The offer for the ${vehicle} was accepted for ${price}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['vehicle_bought'] = {
        title = 'Dealership',
        text = 'You bought ${vehicle} for ${price}' .. Config.Currency,
        type = 'success',
        time = 5000,
    },

    ['auction_started'] = {
        title = 'Dealership',
        text = 'The auction for the <b>${vehicle}</b> has been started with a starting bid of <b>${price}' .. Config.Currency .. '</b> at <b>${store}</b>',
        type = 'success',
        time = 5000,
    },

    ['bid_placed'] = {
        title = 'Dealership',
        text = 'You placed a bid of <b>${price}' .. Config.Currency .. '</b> on the <b>${vehicle}</b>',
        type = 'success',
        time = 5000,
    },

    ['auction_won'] = {
        title = 'Dealership',
        text = 'You won the auction of the <b>${vehicle}</b> with the last bid of <b>${price}</b>' .. Config.Currency .. ', talk with the employees to redeem your vehicle',
        type = 'success',
        time = 5000,
    },

    ['copied_to_clipboard'] = {
        title = 'Dealership',
        text = 'You copied <b>${user}</b>\'s phone number <b>(${phone})</b> to the clipboard',
        type = 'success',
        time = 5000,
    },

    ['documents_delivered'] = {
        title = 'Dealership',
        text = 'You delivered the documents related to the ${vehicle}<b> (${plate})</b> to <b>${customer}</b>',
        type = 'success',
        time = 5000,
    },

    ['documents_received'] = {
        title = 'Dealership',
        text = 'You received the documents related to the ${vehicle}<b> (${plate})</b>',
        type = 'success',
        time = 5000,
    },

    -- Info Notifications

    ['offer_received'] = {
        title = 'Dealership',
        text = 'You received an offer',
        type = 'info',
        time = 5000,
    },

    ['offer_sent'] = {
        title = 'Dealership',
        text = 'You sent an offer',
        type = 'info',
        time = 5000,
    },

    -- UI

    ['translations'] = {
        menu = 'Menu',
        overview = 'Overview',
        stock = 'Stock',
        orders = 'Orders',
        neworder = 'New Order',
        employees = 'Employees',
        saleshistory = 'Sales History',
        auctions = 'Auctions',
        logout = 'Logout',
        finances = 'Finances',
        balance = 'Balance',
        deposit = 'Deposit',
        withdraw = 'Withdraw',
        depositmoney = 'Deposit Money',
        withdrawmoney = 'Withdraw Money',
        bestemployee = 'Best Employee',
        recentsales = 'Recent Sales',
        owner = 'Owner',
        loggingout = 'Logging out...',
        loadingdata = 'Loading Data...',
        search = 'Search...',
        noentriesfound = 'No entries found',
        noresults = 'No results match your search query',
        sellbusiness = 'Sell Business',
        buybusiness = 'Buy Business',
        areyousure = 'Are you sure?',
        doyouwanttobuy = 'Do you want to buy',
        sellbusinessfor = 'Do you want to sell the business for',
        buyfor = 'for',
        cancelbutton = 'Cancel',
        buybutton = 'Buy',
        sellbutton = 'Sell',
        notOwnedStoreName = 'Vehicle Sales',
        store = 'Store',
        vehicle = 'Vehicle',
        customer = 'Customer',
        plate = 'Plate',
        view = 'View',
        actions = 'Actions',
        status = 'Status',
        awaitingcustomer = 'Awaiting Customer',
        pending = 'Pending',
        amount = 'Amount',
        name = 'Name',
        grade = 'Grade',
        save = 'Save',
        edit = 'Edit',
        hire = 'Hire',
        totalorders = 'Total Orders',
        hireemployee = 'Hire Employee',
        fireemployeetitle = 'Fire Employee',
        editemployee = 'Edit Employee',
        selectuser = 'Select a person',
        fireemployee = 'Do you want to fire',
        firemyself = 'Do you want to fire yourself?',
        firebutton = 'Fire',
        quitjob = 'Quit Job',
        confirm = 'Confirm',
        note = 'Engine Level 4',
        vehicleinfo = 'Vehicle Info',
        boughtfor = 'Bought for',
        notes = 'Notes',
        negotiable = 'Negotiable',
        pricenegotiable = 'Price is negotiable',
        vehiclesale = 'Vehicle is for sale',
        price = 'Price',
        date = 'Date',
        value = 'Value',
        seller = 'Seller',
        create = 'Create',
        agreedprice = 'Agreed Price',
        phone = 'Phone Number',
        nameplaceholder = 'Entity XF',
        customerplaceholder = 'Tommy Champion',
        phoneplaceholder = '917826572',
        agreedpriceplaceholder = '480000',
        delivered = 'Delivered',
        orderinfo = 'Order Info',
        cancelorder = 'Cancel Order',
        pending = 'Pending',
        awaitingcustomer = 'Awaiting Customer',
        delivered = 'Delivered',
        confirmcancelorder = 'Do you want to cancel the order?',
        buyvehicle = 'Buy Vehicle',
        selectvehicle = 'Select a Vehicle',
        purchasebutton = 'PURCHASE',
        contactbutton = 'CONTACT',
        sellbutton = 'SELL',
        bidbutton = 'BID',
        sellvehicle = 'Sell Vehicle',
        buyer = 'Buyer',
        priceplaceholder = '50000',
        none = 'None',
        soldfor = 'Sold for',
        finish = 'Finish',
        start = 'Start',
        startauction = 'Start Auction',
        startingbid = 'Starting Bid',
        currentbid = 'Current Bid',
        yourbid = 'Your Bid',
        totalbids = 'Total Bids',
        timeleft = 'Time Left',
        startingbidplaceholder = '2000',
        duration = 'Duration',
        nodata = 'No Data',
        listed = 'Listed',
        notlisted = 'Not Listed',
        onauction = 'On Auction',
        auctioninfo = 'Auction Info',
        auctionstarted = 'Auction Started',
        auctionended = 'Auction Has Ended',
        auctionendedlist = 'Auction Ended',
        exitauction = 'Exit Auction',
        finalbidamount = 'Final Bid Amount',
        winner = 'Winner',
        thankyou = 'Thank you',
        hour = 'h',
        minute = 'm',
        notwinner = 'Thank you for participating in the auction. Unfortunately, you didn\'t win this time, but don\'t worry, there will be more opportunities in the future.',
        auctionwinner = 'Thank you for participating and congratulations on your winning bid! Enjoy your new vehicle.',
        nonotes = 'N/A',
        totalsales = 'Total Sales',
        totalearned = 'Total Earned',
        phonenumber = 'Phone Number',
        online = 'Online',
        offline = 'Offline',
        nowinner = 'No winner',
        deliver = 'Deliver',
        delivervehicle = 'Deliver Vehicle',
        auctionedfor = 'Auctioned for',
    },
}