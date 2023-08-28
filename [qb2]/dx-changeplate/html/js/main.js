let userdata = [{ 1: "1", 2: "2", 3: "3", 4: "4", 5: "5", 6: "6", 7: "7", 8: "8", 9: "9" }]
let harfdata = [{ 1: "A", 2: "B", 3: "C", 4: "D", 5: "E", 6: "F", 7: "G", 8: "H", 9: "I", 10: "J", 11: "K", 12: "L", 13: "M", 14: "N", 15: "O", 16: "P", 17: "Q", 18: "R", 19: "S", 20: "T", 21: "U", 22: "V", 23: "W", 24: "X", 25: "Y", 26: "Z", 27: "1", 28: "2", 29: "3", 30: "4", 31: "5", 32: "6", 33: "7", 34: "8", 35: "9" }]

window.addEventListener('message', function(event) {
    var item = event.data;
 
    if (item.type === "ui") {
        $('body').css("display", "block");
    } else if (item.type = 'close') {
        $('body').css("display", "none");
    }
});

$(".arttir").click(function() {
    var values = Object.values(harfdata[0]);
    var elementDatasi = $(this).parent().find('.text1').text();
    if (elementDatasi == values[values.length - 1]) return console.log('Max Reached Limit.');
    for (let i = 0; i < values.length; i++) {
        if (values[i] == elementDatasi) {
            elementDatasi = values[i + 1];
            var id = '#' + $(this).parent().data('id');
            $(id).text(elementDatasi);
            return;
        }
    }
});

$(".azalt").click(function() {
    var values = Object.values(harfdata[0]);
    var elementDatasi = $(this).parent().find('.text1').text();
    for (let i = 0; i < values.length; i++) {
        if (values[i] == elementDatasi && values[i - 1] != undefined) {
            elementDatasi = values[i - 1];
            var id = '#' + $(this).parent().data('id');
            $(id).text(elementDatasi);
            return;
        }
    }
});

$(".arttirharf").click(function() {
    var values = Object.values(harfdata[0]);
    var elementDatasi = $(this).parent().find('.text1').text();
    if (elementDatasi == values[values.length - 1]) return console.log('Max Reached Limit.');
    for (let i = 0; i < values.length; i++) {
        if (values[i] == elementDatasi) {
            elementDatasi = values[i + 1];
            var id = '#' + $(this).parent().data('id');
            $(id).text(elementDatasi);
            return;
        }
    }
});

$(".azaltharf").click(function() {
    var values = Object.values(harfdata[0]);
    var elementDatasi = $(this).parent().find('.text1').text();
    for (let i = 0; i < values.length; i++) {
        if (values[i] == elementDatasi && values[i - 1] != undefined) {
            elementDatasi = values[i - 1];
            var id = '#' + $(this).parent().data('id');
            $(id).text(elementDatasi);
            return;
        }
    }
});
 
$(".kaydetyazi").click(function() { 
   $('body').css("display", "none");
   $.post('https://dx-changeplate/change', JSON.stringify({ plate: getPlate() }));
});

$(".fa-save").click(function() { 
   $('body').css("display", "none");
   $.post('https://dx-changeplate/change', JSON.stringify({ plate: getPlate() }));
});


$(".iptal").click(function() { 
   $('body').css("display", "none");
   $.post("https://dx-changeplate/change");
});

$(".iptalyazi").click(function() { 
   $('body').css("display", "none");
   $.post("https://dx-changeplate/change");
});

function getPlate() {
    var plate = "";
    var objects = $(".box");
    plate += $(objects).find('.text1').text();
    console.log(plate);
    return plate;

}