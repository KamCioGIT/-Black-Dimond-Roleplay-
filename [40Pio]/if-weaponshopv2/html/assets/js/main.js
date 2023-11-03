$(function () {
  $(".filter-button").click(function () {
    const value = $(this).attr("data-filter");
    if (value == "all") {
      $(".filter").show("2000");
    } else {
      $(".filter").not("." + value).hide("2000");
      $(".filter").filter("." + value).show("2000");
    };

    $(".filter-button a").removeClass("active");
    $(this).children().addClass("active");
  });
  
  function display(bool) {
    if (bool) {
      $("body").show();
    } else {
      $("body").hide();
    }
  };
  display(false);

  window.addEventListener('message', function (event) {
    const item = event.data;
    if (item.type === "ui") {
      if (item.status) {
        display(true)
      } else {
        display(false)
      }
    } else if (item.type == "add") {
      $('.gunShop__content').append(`
        <div class="gunShop__cart filter ${item.category}" data-weapon="${item.spawnName}">
          <div class="cart__header">
            <div class="left-cart__header">
              <!--<p>${item.category}</p>-->
              <h4>${item.displayName}</h4>
            </div>
            <div class="right-cart__header">
              <p>Price:</p>
              <h4>$ <span>${item.price}</span></h4>
              ${item.ammoPrice && item.ammoPrice > -1 ? `
                <p class="ammo">Ammo:</p>
                <h3>$ <span>${item.ammoPrice}</span></h3>
              ` : ''}
            </div>
          </div>
          <div class="cart__illustration">
            <img src="assets/img/weapons/${item.spawnName}.png">
          </div>
          <div class="cart__footer">
            <div class="ratios__items">
              <div class="ratios__items-single">
                <div class="progress">
                  <div
                    class="progress-chart"
                    id="weight"
                    data-percent="${item.infos.weight}"
                    data-scale-color="#ffb400"
                  ></div>
                  <span class="progress-data">${item.infos.weight}kg</span>
                </div>
                <p>Weight</p>
              </div>
              <div class="ratios__items-single">
                <div class="progress">
                  <div
                    class="progress-chart"
                    id="damage"
                    data-percent="${item.infos.damage}"
                    data-scale-color="#ffb400"
                  ></div>
                  <span class="progress-data">${item.infos.damage}%</span>
                </div>
                <p>Damage</p>
              </div>
              <div class="ratios__items-single">
                <div class="progress">
                  <div
                    class="progress-chart"
                    id="speed"
                    data-percent="${item.infos.speed}"
                    data-scale-color="#ffb400"
                  ></div>
                  <span class="progress-data">${item.infos.speed}%</span>
                </div>
                <p>Speed</p>
              </div>
              <div class="ratios__items-single">
                <div class="progress">
                  <div
                    class="progress-chart"
                    id="returns"
                    data-percent="${item.infos.returns}"
                    data-scale-color="#ffb400"
                  ></div>
                  <span class="progress-data">${item.infos.returns}%</span>
                </div>
                <p>Returns</p>
              </div>
            </div>
            <div class="cart__btns">
              <div class="top-cart__btns">
                <a href="#" class="button button-active" onclick="buy('${item.spawnName}')">Buy</a>
                ${item.ammoPrice && item.ammoPrice > -1 ? `<a href="#" class="button button-default" onclick="buy2('${item.spawnName}')">Buy ammo</a>` : ''}
              </div>
              <div class="bottom-cart__btns">
                ${item.showTestGunButton ? `<a href="#" class="button button-seconday" onclick="getWeapon('${item.spawnName}')"> Test gun </a>` : ''}
              </div>
            </div>
          </div>
        </div>  
      `);
      new ldBar(`div[data-weapon="${item.spawnName}"] .progress-chart#weight`, {
        "stroke": '#0375f1',
        "stroke-width": 8,
        "stroke-trail-width": 8,
        "preset": "circle",
        "stroke-trail": "#F5F5F50A",
        "value": item.infos.weight
      });
      new ldBar(`div[data-weapon="${item.spawnName}"] .progress-chart#damage`, {
        "stroke": '#0375f1',
        "stroke-width": 8,
        "stroke-trail-width": 8,
        "preset": "circle",
        "stroke-trail": "#F5F5F50A",
        "value": item.infos.damage
      });
      new ldBar(`div[data-weapon="${item.spawnName}"] .progress-chart#speed`, {
        "stroke": '#0375f1',
        "stroke-width": 8,
        "stroke-trail-width": 8,
        "preset": "circle",
        "stroke-trail": "#F5F5F50A",
        "value": item.infos.speed
      });
      new ldBar(`div[data-weapon="${item.spawnName}"] .progress-chart#returns`, {
        "stroke": '#0375f1',
        "stroke-width": 8,
        "stroke-trail-width": 8,
        "preset": "circle",
        "stroke-trail": "#F5F5F50A",
        "value": item.infos.returns
      });
    
    } else if (item.type == "clearAll") {
      $('.gunShop__content').empty();
    }
  });

  $('.gunShop__close').click(function () {
    $.post('https://if-weaponshopv2/exit', '{}');
  });

  document.onkeyup = function (data) {
    if (data.which == 27) {
      $.post('https://if-weaponshopv2/exit', '{}');
    }
  };

  $.post('https://if-weaponshopv2/ready', '{}');
});

function buy(weapon, price) {
  $.post('https://if-weaponshopv2/buy', JSON.stringify({
    weapon
  }))
};
function buy2(weapon, ammoPrice) {
  $.post('https://if-weaponshopv2/buy2', JSON.stringify({
    weapon
  }))
};
function getWeapon(weapon) {
  $.post('https://if-weaponshopv2/shootingRange', JSON.stringify({
    weapon
  }));
}