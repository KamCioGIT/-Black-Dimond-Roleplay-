export function sendInfoData(item) {
    let iteminfo = item.info[0];
    let returnString = "";
    if (item.name == "id_card") {
        let man = "Man";

        if (iteminfo.gender == 1) {
            man = "Woman";
        }
        returnString =
            iteminfo.firstname +
            " | " +
            iteminfo.lastname +
            " | " +
            iteminfo.citizenid +
            " |  " +
            iteminfo.birthdate +
            "  | " +
            man +
            " | " +
            iteminfo.nationality;
    } else if (item.name.match("driver_license")) {
        returnString = iteminfo.firstname + " | " + iteminfo.lastname + " | " + iteminfo.birthdate + "  | " + iteminfo.type;
    } else if (item.name.match("harnes")) {
        returnString = iteminfo.uses;
    } else if (item.name.match("markedbills")) {
        returnString = iteminfo.worth;
    } else if (item.name.match("printerdocument")) {
        returnString = iteminfo.url;
    } else if (item.name.match("weapon")) {
        returnString = iteminfo.serial + " | " + iteminfo.ammo;
    }

    if (returnString == "") {
        returnString = iteminfo.description;
    } else {
        return returnString;
    }
}
