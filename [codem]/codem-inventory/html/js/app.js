import groundModule from "./modules/ground.js";
import clothesModule from "./modules/clothes.js";
import weaponModule from "./modules/weapon.js";
import craftModule from "./modules/craft.js";
import { sendInfoData } from "./info.js";

const Modules = {
    groundTemplate: groundModule,
    clothesTemplate: clothesModule,
    weaponTemplate: weaponModule,
    craftTemplate: craftModule
};

import groundTemplate from "../pages/ground/index.js";
import clothesTemplate from "../pages/clothes/index.js";
import weaponTemplate from "../pages/weapon/index.js";
import craftTemplate from "../pages/craft/index.js";

const store = Vuex.createStore({
    components: {
        groundTemplate: groundTemplate,
        clothesTemplate: clothesTemplate,
        weaponTemplate: weaponTemplate,
        craftTemplate: craftTemplate
    },
    state: {
        CurrentInventoryData: {},
        selectedinventorycategory: 0,
        craftpercentage: "0%",
        hotbaropen: false,
        rucksack: "Rucksack",
        hotbarInventory: {},
        itemlock: false,
        Translate: {
            ["maxweight"]: "There is not enough free space!",
            ["cantopen"]: "You cant open this inventory rn!",
            ["raisehands"]: "The person didnt raise her hands!",
            ["requireweapon"]: "You dont have any weapon!",
            ["playernotfound"]: "There is no player nearby!",
            ["deadcheck"]: "The player is not dead",
            ["itemadded"]: "You gave %s to %s with %s",
            ["notadded"]: "Item not added",
            ["itemcantforund"]: "Item cant found!",
            ["playernotfound"]: "Player not found",
            ["parsed"]: "Items are parsed",
            ["inventorycleared"]: "Player's inventory cleared!",
            ["notenoughmoney"]: "You don't have enough money for buy this item!",
            ["notenoughmoneyforrepair"]: "You don't have enough money for repair this weapon!",
            ["weaponcannotfind"]: "Weapon can't find!",
            ["cantuse"]: "You can't use this weapon bcs broken!",
            ["maxammo"]: "Max Ammo",
            ["incooldown"]: "You are in cooldown please wait!",
            ["weaponfixed"]: "Your weapon has been repaired!",
            ["add"]: "Added",
            ["remove"]: "Removed",
            ["use"]: "Used",
            ["holster"]: "Holster",
            ["unholster"]: "Unholster",
            ["ammoadded"]: "Ammo added",
            ["ammoadding"]: "Ammo addin",
            ["itemaddtitle"]: "Item Added",
            ["itemremovetitle"]: "Item Removed",
            ["itemaddlog"]: "Player **%s** took **%s** - **%s** from **%s**",
            ["itemremovelog"]: "Player **%s** removed **%s** - **%s** from **%s**",
            ["inventorytext"]: "INVENTORY",
            ["attachmentstext"]: "ATTACHMENTS",
            ["crafttext"]: "CRAFT",
            ["craftbook"]: "CRAFT BOOK",
            ["clothestext"]: "CLOTHES",
            ["usetext"]: "USE",
            ["givetext"]: "GIVE",
            ["parsetext"]: "PARSE",
            ["backpack"]: "BACKPACK",
            ["info"]: "INFO",
            ["durability"]: "Durability",
            ["nearbyplayers"]: "Nearby Players",
            ["closeesc"]: "ESC",
            ["close"]: "CLOSE",
            ["craftprogress"]: "Craft an item to see the progres...",
            ["craftstarted"]: "Crafting...",
            ["preview"]: "Preview",
            ["customize"]: "CUSTOMIZE",
            ["changecolors"]: "Change colors",
            ["reset"]: "RESET",
            ["revert"]: "Revelt to default",
            ["settings"]: "SETTINGS",
            ["settingstext"]: "Change features",
            ["settingsinfo"]: "Show info on click",
            ["settingssound"]: "Enable/Disable Sound",
            ["settingsblur"]: "Blur Background",
            ["settingssort"]: "Automatic Sort",
            ["maincolor"]: "Main Color",
            ["bordercolor"]: "Border Color",
            ["buttonscolor"]: "Buttons Color",
            ["itemnameunderline"]: "Item Name Underline",
            ["hat"]: "HAT",
            ["upperbody"]: "UPPER BODY",
            ["learneditems"]: "Learned items",
            ["putitem"]: "Please put item in slots to preview possible crafting.",
            ["crafterror"]: "No craftings with those items",
            ["selectitem"]: "Select an item receipe from craftbook to craft item",
            ["tobecraft"]: "To be crafted",
            ["ingredients"]: "Ingredients",
            ["processtime"]: "Process Time",
            ["lackofingredients"]: "Lack of ingredients",
            ["craftsecond"]: "seconds crafting time per one",
            ["needingredients"]: "You need more ingredients to craft",
            ["cancel"]: "CANCEL",
            ["ammo"]: "Ammo",
            ["weight"]: "Weight",
            ["eject"]: "Eject",
            ["magazine"]: "Magazine"
        },

        craftitemcount: 1,
        enablecraft: false,
        craftinventory: {},
        enablesecretslot: true,
        maxWeight: 35000,
        plyinvslot: 0,
        itemboxData: [],
        colorsettings: {
            bgcolor: "rgba(217, 217, 217, 0.25)",
            bordercolor: "rgba(217, 217, 217, 0.37)",
            underlinecolor: "rgba(0, 0, 0, 0.65)",
            buttonscolor: "rgba(217, 217, 217, 0.33);"
        },
        localstoragedata: {
            showinfoonclick: false,
            enablesound: false,
            blurbg: false,
            autosort: false
        },
        learnedcraftitems: {},
        itemboxtype: {
            ["add"]: "addbackground",
            ["remove"]: "removebackground",
            ["use"]: "usebackground",
            ["holster"]: "holster",
            ["unholster"]: "unholster"
        },
        activePage: "groundTemplate",
        clickedweapondata: {},
        clickeditem: {},
        selectedweaponattachmenttype: -1,
        rightinvid: -1,
        rightInventoryName: "Hasan Stash",
        rightInventoryType: "Stash",
        rightinvslot: 30,
        rightinvmaxWeight: 80000,

        //{"1":{"unique":false,"closeafteruse":true,"description":"CPH 4","count":1,"type":"craft","name":"cph4","label":"C.P.H.4","weight":500,"info":[{"quality":100}],"slot":"1"}}
        inventoryData: {
            // ["1"] : {
            //     unique : false,
            //     closeafteruse : true,
            //     description : "",
            //     count : 1,
            //     type : "craft",
            //     name : "cph4",
            //     label : "cph4",
            //     weight : 500,
            //     info : {
            //         [0] : {
            //             quality : 100
            //         }
            //     }
            // }
        },
        groundItemTable: {},
        itemCount: 1,
        inventoryWeight: 0,
        audioPlayer: null,
        rightinventoryWeight: 0,
        AttachmentList: {}
    },
    getters: {},
    mutations: {
        deleteInventoryData(state, index) {
            //state.inventoryData[index] = undefined
            delete state.inventoryData[index];
        },
        deleteGroundItemData(state, index) {
            delete state.groundItemTable[index];
        },
        AddItemtoRightInventory(state, itemdata) {
            state.groundItemTable[itemdata.slot] = {
                name: itemdata.name,
                label: itemdata.label,
                count: itemdata.count,
                unique: itemdata.unique,
                weight: itemdata.weight,
                info: itemdata.info,
                slot: itemdata.slot,
                type: itemdata.type,
                closeafteruse: itemdata.closeafteruse
            };
        },
        AddItemtoPlayerInventory(state, itemdata) {
            state.inventoryData[itemdata.slot] = {
                name: itemdata.name,
                label: itemdata.label,
                count: itemdata.count,
                unique: itemdata.unique,
                weight: itemdata.weight,
                info: itemdata.info,
                slot: itemdata.slot,
                type: itemdata.type,
                closeafteruse: itemdata.closeafteruse
            };
        }
    },
    actions: {
        calculateTotalWeight() {
            let totalWeight = 0;
            let selectedcolordata = 1;
            let backgroundVariables = {
                [1]: "#FFFFFF",
                [2]: "#FFD37C",
                [3]: "#FF847C"
            };
            for (let key in this.state.inventoryData) {
                let item = this.state.inventoryData[key];
                if (item) {
                    totalWeight += item.weight * item.count;
                } else {
                }
            }

            this.state.inventoryWeight = totalWeight;

            let percent = (this.state.inventoryWeight / this.state.maxWeight) * 100;
            if (percent > 100) {
                percent = 100;
            }
            if (percent <= 50) {
                this.state.rucksack = "Rucksack";
                selectedcolordata = backgroundVariables[1];
            } else if (percent >= 51 && percent <= 84) {
                this.state.rucksack = "Rucksack2";
                selectedcolordata = backgroundVariables[2];
            } else if ((percent > 84 && percent < 100) || percent > 100) {
                this.state.rucksack = "Rucksack3";
                selectedcolordata = backgroundVariables[3];
            }
            let element = document.getElementById("inventory-weight");
            element.style.width = percent + "%";
            element.style.background = selectedcolordata;
        },

        calculateRightInventoryWeight() {
            let totalWeight = 0;
            let selectedcolordata = 1;
            let backgroundVariables = {
                [1]: "#FFFFFF",
                [2]: "#FFD37C",
                [3]: "#FF847C"
            };
            for (let key in this.state.groundItemTable) {
                let item = this.state.groundItemTable[key];
                if (item) {
                    totalWeight += item.weight * item.count;
                } else {
                }
            }

            this.state.rightinventoryWeight = totalWeight;

            let percent = (this.state.rightinventoryWeight / this.state.rightinvmaxWeight) * 100;
            if (percent > 100) {
                percent = 100;
            }
            if (percent <= 50) {
                selectedcolordata = backgroundVariables[1];
            } else if (percent >= 51 && percent <= 84) {
                selectedcolordata = backgroundVariables[2];
            } else if ((percent > 84 && percent < 100) || percent > 100) {
                selectedcolordata = backgroundVariables[3];
            }
            let element = document.getElementById("rightinventory-weight");
            if (element) {
                element.style.width = percent + "%";
                element.style.background = selectedcolordata;
            }
        },
        clicksound({ state }, text) {
            if (this.state.localstoragedata.enablesound) {
                let audioPath = "./sound/" + text + ".ogg";
                this.state.audioPlayer = new Howl({
                    src: [audioPath]
                });
                this.state.audioPlayer.volume(0.6);
                this.state.audioPlayer.play();
            }
        }
    },

    modules: Modules
});

const app = Vue.createApp({
    components: {
        groundTemplate: groundTemplate,
        clothesTemplate: clothesTemplate,
        weaponTemplate: weaponTemplate,
        craftTemplate: craftTemplate
    },
    data: () => ({
        slotCount: 35,
        hover: false,
        nearbyplayers: {},
        isShiftPressed: false,
        isRightClicked: false,
        draggedIndex: null,

        attachmentdataforeject: undefined,

        showstyle: "settings",
        durationBox: {
            width: "2.5vw",
            height: "4vh",

            opacity: 0,
            transition: "width 0.2s, height 0.2s"
        },

        settingsbox: {
            width: "2.5vw",
            height: "4vh",

            opacity: 0,
            transition: "width 0.2s, height 0.2s"
        },
        giveBox: {
            width: "100%",
            height: "9%",
            bgColor: "rgba(217, 217, 217, 0.33)",
            opacity: 0,
            transition: "width 0.2s, height 0.2s",
            expanded: false
        },
        playername: "",
        playerjob: "",
        playerimage: "",
        SearchItemData: "",
        expanded: false,
        settingsboxopen: false,
        inventoryCategory: [
            { name: "all", icon: "backpack-icon", selectedicon: "backpack-iconselected" },
            { name: "weapons", icon: "gun-icon", selectedicon: "gun-iconselected" },
            { name: "foods", icon: "food-icon", selectedicon: "food-iconselected" },
            { name: "craft", icon: "table-icon", selectedicon: "table-iconselected" },
            { name: "search", icon: "search-icon", selectedicon: "search-iconselected" }
        ],
        currentItem: false
    }),
    computed: {
        ...Vuex.mapState({
            activePage: state => state.activePage
        })
    },

    watch: {},

    beforeDestroy() {
        window.removeEventListener("keyup", this.updateNavbarActive);
    },

    mounted() {
        $.post("https://codem-inventory/RemovePed", {});
        window.addEventListener("message", event => {
            if (event.data.action == "open") {
                this.$store.state.inventoryData = [];
                if (this.$store.state.localstoragedata.blurbg) {
                    $.post("https://codem-inventory/Blurtobg", JSON.stringify({}));
                }
                this.$store.state.maxWeight = Number(event.data.maxweight);
                this.slotCount = event.data.slot;
                this.$store.state.plyinvslot = event.data.slot;
                this.$store.state.rightinvslot = event.data.rightinv.slot;
                (this.$store.state.rightInventoryName = event.data.rightinv.name),
                    (this.$store.state.rightInventoryType = event.data.rightinv.type),
                    (this.$store.state.rightinvmaxWeight = Number(event.data.rightinv.maxweight));
                this.$store.state.rightinvid = event.data.rightinv.id;
                this.$store.state.inventoryData = event.data.playerinv;
                this.$store.state.groundItemTable = event.data.rightinv.items;
                this.playername = event.data.playerinfo.name;
                this.playerjob = event.data.playerinfo.job;
                this.playerimage = event.data.playerinfo.image;
                this.$store.state.learnedcraftitems = event.data.learnedcrafts;
                this.durationBox.width = "2.5vw";
                this.durationBox.height = "4vh";
                this.durationBox.opacity = 0;
                this.expanded = !this.expanded;
                setTimeout(() => {
                    this.durationBox.opacity = 1;
                }, 3 * 100);
                this.expanded = false;
                this.currentItem = false;

                this.$store.state.activePage = "groundTemplate";
                this.$store.dispatch("calculateTotalWeight");
                this.$store.dispatch("calculateRightInventoryWeight");
                var underlinedata = localStorage.getItem("codeminv-underlinecolor");
                if (underlinedata == null) {
                    localStorage.setItem("codeminv-underlinecolor", this.$store.state.colorsettings.underlinecolor);
                } else {
                    this.$store.state.colorsettings.underlinecolor = underlinedata;
                }
                var bgcolor = localStorage.getItem("codeminv-bgcolor");
                if (bgcolor == null) {
                    localStorage.setItem("codeminv-bgcolor", this.$store.state.colorsettings.bgcolor);
                } else {
                    this.$store.state.colorsettings.bgcolor = bgcolor;
                }
                var bordercolor = localStorage.getItem("codeminv-bordercolor");
                if (bordercolor == null) {
                    localStorage.setItem("codeminv-bordercolor", this.$store.state.colorsettings.bordercolor);
                } else {
                    this.$store.state.colorsettings.bordercolor = bordercolor;
                }
                var buttonscolor = localStorage.getItem("codeminv-buttonscolor");
                if (buttonscolor == null) {
                    localStorage.setItem("codeminv-buttonscolor", this.$store.state.colorsettings.buttonscolor);
                } else {
                    this.$store.state.colorsettings.buttonscolor = buttonscolor;
                }

                
                
                $(".maindiv").fadeIn(300);
                setTimeout(() => {
                    this.mainInventoryDrag();
                    this.mainInventoryDrop();
                    //this.ItemDroppableList()
                    this.$store.dispatch("clicksound", "click");
                }, 30);
            } else if (event.data.action == "close") {
                $.post("https://codem-inventory/RemovePed", {});
                $(".maindiv").fadeOut(300);
            } else if (event.data.action == "updatenearbyplayers") {
                this.nearbyplayers = event.data.players;
            } else if (event.data.action == "itembox") {
                this.$store.state.itemboxData.push(event.data.itemdata);
                this.StartTimer();
            } else if (event.data.action == "resetcolordata") {
                this.$store.state.colorsettings.underlinecolor.temp = "rgb(0,0,0,0.65)";
                this.$store.state.colorsettings.underlinecolor.set = "rgba(0,0,0,0.65)";
                this.$store.state.colorsettings.bgcolor.temp = "rgb(217, 217, 217, 0.12)";
                this.$store.state.colorsettings.bgcolor.set = "rgba(217, 217, 217, 0.12)";
                this.$store.state.colorsettings.bordercolor.temp = "rgb(217, 217, 217, 0.40)";
                this.$store.state.colorsettings.bordercolor.set = "rgba(217, 217, 217, 0.40)";
                this.$store.state.colorsettings.buttonscolor.temp = "rgb(217, 217, 217, 0.33)";
                this.$store.state.colorsettings.buttonscolor.set = "rgba(217, 217, 217, 0.33)";
                localStorage.setItem("codeminv-underlinecolor", this.$store.state.colorsettings.underlinecolor.temp);
                localStorage.setItem("codeminv-bgcolor", this.$store.state.colorsettings.bgcolor.temp);
                localStorage.setItem("codeminv-bordercolor", this.$store.state.colorsettings.bordercolor.temp);
                localStorage.setItem("codeminv-buttonscolor", this.$store.state.colorsettings.buttonscolor.temp);
            } else if (event.data.action == "updatelearned") {
                this.$store.state.learnedcraftitems = event.data.data;
            } else if (event.data.action == "InitAttachmentList") {
                this.$store.state.AttachmentList = event.data.attachments;
                this.$store.state.enablesecretslot = event.data.secretslot;
                this.$store.state.enablecraft = event.data.craft;
                this.$store.state.Translate = event.data.translate;
            } else if (event.data.action == "updateinventory") {
                this.$store.state.inventoryData = event.data.inv;
                setTimeout(() => {
                    this.mainInventoryDrag();
                    this.mainInventoryDrop();
                    //this.ItemDroppableList()
                    
                }, 50);
            } else if (event.data.action == "hotbar") {
                this.$store.state.hotbarInventory = event.data.inventory;
                this.$store.state.hotbaropen = event.data.enable;
            } else if (event.data.action == "NuiCheck") {
                $.post("https://codem-inventory/uiload", JSON.stringify({}));
                
            }
        });

        setTimeout(() => {
            this.mainInventoryDrag();
            this.mainInventoryDrop();
            //this.ItemDroppableList()
            this.$store.dispatch("clicksound", "click");
        }, 50);

        $(document).on("keydown", function () {
            switch (event.keyCode) {
                case 27: // ESC
                    $(".maindiv").fadeOut(300);
                    $.post("https://codem-inventory/RemovePed", {});
                    $.post("https://codem-inventory/close", JSON.stringify({}));
                    break;
            }
        });
    },

    methods: {
        handleMouseMove(event, item) {
            this.isShiftPressed = event.shiftKey;

            this.isRightClicked = event.button === 2;

            if (this.isShiftPressed && this.isRightClicked) {
            }
        },
        handleContextMenu(event, item) {
            this.isShiftPressed = event.shiftKey;
            event.preventDefault();
            if (this.isShiftPressed && item) {
                if (this.$store.state.activePage == "groundTemplate") {
                    let swapcount = Number(this.$store.state.itemCount);
                    if (swapcount <= 0 || swapcount >= item.count) {
                        swapcount = item.count;
                    }
                    var fountslot = false;
                    //if (frominv == "player") {
                    for (let i = 1; i < this.$store.state.rightinvslot; i++) {
                        if (this.$store.state.groundItemTable[i]) {
                            if (this.$store.state.groundItemTable[i].name == item.name) {
                                if (swapcount == item.count) {
                                    if (!item.unique) {
                                        this.$store.state.groundItemTable[i].count += swapcount;
                                        delete this.$store.state.inventoryData[item.slot];
                                        fountslot = true;
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: item,
                                                targetitem: this.$store.state.groundItemTable[i],
                                                draggedindex: item.slot,
                                                targetindex: i,
                                                targetinv: "right",
                                                frominv: "player",
                                                rightinvid: this.$store.state.rightinvid,
                                                rightinvtype: this.$store.state.rightInventoryType,
                                                count: swapcount
                                            })
                                        );
                                        break;
                                    }
                                } else {
                                    if (!item.unique) {
                                        this.$store.state.groundItemTable[i].count += swapcount;
                                        this.$store.state.inventoryData[item.slot].count -= swapcount;
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: item,
                                                targetitem: this.$store.state.groundItemTable[i],
                                                draggedindex: item.slot,
                                                targetindex: i,
                                                targetinv: "right",
                                                frominv: "player",
                                                rightinvid: this.$store.state.rightinvid,
                                                rightinvtype: this.$store.state.rightInventoryType,
                                                count: swapcount
                                            })
                                        );
                                        fountslot = true;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (!fountslot) {
                        for (let i = 1; i < this.$store.state.rightinvslot; i++) {
                            var slot = i;
                            //if (slot != i) {
                            if (this.$store.state.groundItemTable[i] == undefined) {
                                if (swapcount == item.count) {
                                    var newItemData = {
                                        name: item.name,
                                        label: item.label,
                                        count: swapcount,
                                        unique: item.unique,
                                        weight: item.weight,
                                        info: item.info,
                                        slot: slot,
                                        type: item.type,
                                        closeafteruse: item.closeafteruse
                                    };
                                    this.$store.state.groundItemTable[i] = newItemData;
                                    delete this.$store.state.inventoryData[item.slot];
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: item,
                                            targetitem: this.$store.state.groundItemTable[i],
                                            draggedindex: item.slot,
                                            targetindex: i,
                                            targetinv: "right",
                                            frominv: "player",
                                            rightinvid: this.$store.state.rightinvid,
                                            rightinvtype: this.$store.state.rightInventoryType,
                                            count: swapcount
                                        })
                                    );
                                    break;
                                } else {
                                    item.count -= swapcount;
                                    var newItemData = {
                                        name: item.name,
                                        label: item.label,
                                        count: swapcount,
                                        unique: item.unique,
                                        weight: item.weight,
                                        info: item.info,
                                        slot: i,
                                        type: item.type
                                    };
                                    this.$store.state.groundItemTable[i] = newItemData;
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: item,
                                            targetitem: this.$store.state.groundItemTable[i],
                                            draggedindex: item.slot,
                                            targetindex: i,
                                            targetinv: "right",
                                            frominv: "player",
                                            rightinvid: this.$store.state.rightinvid,
                                            rightinvtype: this.$store.state.rightInventoryType,
                                            count: swapcount
                                        })
                                    );
                                    break;
                                }
                            }
                            //}
                        }
                    }
                    this.$store.dispatch("calculateTotalWeight");
                    this.$store.dispatch("calculateRightInventoryWeight");
                    //}
                }
            }
            setTimeout(() => {
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                
            }, 50);
        },

        openColoris: function () {
            Coloris({
                theme: "polaroid",
                themeMode: "light",
                alpha: true,
                formatToggle: false,
                selectInput: false,
                clearButton: false,
                focusInput: false
            });
        },
        ResetData() {
            this.$store.state.colorsettings.underlinecolor = "rgba(0,0,0,0.65)";
            this.$store.state.colorsettings.bgcolor = "rgba(217, 217, 217, 0.12)";
            this.$store.state.colorsettings.bordercolor = "rgba(217, 217, 217, 0.40)";
            this.$store.state.colorsettings.buttonscolor = "rgba(217, 217, 217, 0.33)";
            localStorage.setItem("codeminv-underlinecolor", this.$store.state.colorsettings.underlinecolor);
            localStorage.setItem("codeminv-bgcolor", this.$store.state.colorsettings.bgcolor);
            localStorage.setItem("codeminv-bordercolor", this.$store.state.colorsettings.bordercolor);
            localStorage.setItem("codeminv-buttonscolor", this.$store.state.colorsettings.buttonscolor);
        },
        SortAllItemsData() {
            const startIndex = 5;
            const maxItemCount = this.slotCount;
            let itemCount = 0;
            let lastslot = 5;
            const sortedInventory = {};
            var inventoryData = this.$store.state.inventoryData;

            for (let i = 6; i < maxItemCount; i++) {
                if (inventoryData[i.toString()]) {
                    var newslot = lastslot + 1;
                    inventoryData[i.toString()].slot = newslot;
                    this.$store.state.inventoryData[newslot.toString()] = inventoryData[i.toString()];
                    if (i != newslot) {
                        delete this.$store.state.inventoryData[i.toString()];
                    }
                    lastslot++;
                }
            }
            setTimeout(() => {
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                
            }, 50);
            // luada
            $.post("https://codem-inventory/SortInventory", JSON.stringify({}));
        },
        StartTimer() {
            for (let i = 0; i < Object.keys(this.$store.state.itemboxData).length; i++) {
                if (this.$store.state.itemboxData[i].show) {
                    (index => {
                        setTimeout(() => {
                            this.$store.state.itemboxData.splice(index, 1);
                        }, 2000);
                    })(i);
                }
            }
        },
        CloseNui() {
            $(".maindiv").fadeOut(300);
            $.post("https://codem-inventory/RemovePed", {});
            $.post("https://codem-inventory/close", JSON.stringify({}));
        },
        GetNearbyPlayers() {
            $.post("https://codem-inventory/GetNearbyPlayers", JSON.stringify({}));
        },
        GetSelectedInventoryData() {
            if (this.$store.state.selectedinventorycategory == 0) {
                this.$store.state.CurrentInventoryData = this.$store.state.inventoryData;
                return this.$store.state.inventoryData;
            } else if (this.$store.state.selectedinventorycategory == 1) {
                var playeritemtable = this.$store.state.inventoryData;
                var newtable = {};
                var counter = 6;
                for (let i = 6; i < this.slotCount; i++) {
                    if (playeritemtable[i]) {
                        if ((playeritemtable[i].type && playeritemtable[i].type == "weapon") || playeritemtable[i].type == "ammo") {
                            newtable[counter] = playeritemtable[i];
                            counter++;
                        }
                    }
                }
                this.$store.state.CurrentInventoryData = newtable;
                return newtable;
            } else if (this.$store.state.selectedinventorycategory == 2) {
                var playeritemtable = this.$store.state.inventoryData;
                var newtable = {};
                var counter = 6;
                for (let i = 6; i < this.slotCount; i++) {
                    if (playeritemtable[i]) {
                        if (playeritemtable[i].type && playeritemtable[i].type == "food") {
                            newtable[counter] = playeritemtable[i];
                            counter++;
                        }
                    }
                }
                this.$store.state.CurrentInventoryData = newtable;
                return newtable;
            } else if (this.$store.state.selectedinventorycategory == 3) {
                var playeritemtable = this.$store.state.inventoryData;
                var newtable = {};
                var counter = 6;
                for (let i = 6; i < this.slotCount; i++) {
                    if (playeritemtable[i]) {
                        if (playeritemtable[i].type && playeritemtable[i].type == "craft") {
                            newtable[counter] = playeritemtable[i];
                            counter++;
                        }
                    }
                }
                this.$store.state.CurrentInventoryData = newtable;
                return newtable;
            } else if (this.$store.state.selectedinventorycategory == 4) {
                this.$store.state.CurrentInventoryData = this.$store.state.inventoryData;
                if (this.SearchItemData == "") {
                    return this.$store.state.inventoryData;
                } else {
                    const filteredItems = Object.values(this.$store.state.CurrentInventoryData).filter(
                        item => item.label.toLowerCase().includes(this.SearchItemData.toLowerCase()) && item.slot > 5
                    );

                    const filteredKeysWithData = Object.keys(this.$store.state.CurrentInventoryData)
                        .filter(key => filteredItems.includes(this.$store.state.CurrentInventoryData[key]))
                        .reduce((acc, key) => {
                            acc[key] = this.$store.state.CurrentInventoryData[key];
                            return acc;
                        }, {});
                    return filteredKeysWithData;
                }
            }
            
        },
        GetFirstFreeSlot(istargetinv) {
            if (!istargetinv) {
                var inventoryData = this.$store.state.inventoryData;
                for (let i = 6; i < maxItemCount; i++) {
                    if (inventoryData[i.toString()]) {
                    }
                }
            } else {
            }
        },
        openMenu(itemdata) {
            var stringix = itemdata.name;
            if (stringix.match("weapon")) {
                this.$store.state.clickedweapondata = itemdata;
                this.$store.dispatch("clicksound", "click");
                this.$store.state.activePage = "weaponTemplate";
            }
            setTimeout(() => {
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                
            }, 50);
        },
        HandleAutoSort(frominv, toinv, draggeditem, count, slot) {
            var fountslot = false;
            var swapcount = Number(count);
            if (frominv == toinv) {
                if (frominv == "player") {
                    for (let i = 1; i < this.slotCount; i++) {
                        if (this.$store.state.inventoryData[i] && slot != i) {
                            if (this.$store.state.inventoryData[i].name == draggeditem.name) {
                                if (swapcount == draggeditem.count) {
                                    if (!draggeditem.unique) {
                                        this.$store.state.inventoryData[i].count += swapcount;
                                        delete this.$store.state.inventoryData[slot];
                                        fountslot = true;
                                        break;
                                    }
                                } else {
                                    if (!draggeditem.unique) {
                                        this.$store.state.inventoryData[i].count += swapcount;
                                        this.$store.state.inventoryData[slot].count -= swapcount;
                                        fountslot = true;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (!fountslot) {
                        for (let i = 1; i < this.slotCount; i++) {
                            if (slot != i) {
                                if (this.$store.state.inventoryData[i] == undefined) {
                                    if (swapcount == draggeditem.count) {
                                        draggeditem.slot = i;
                                        this.$store.state.inventoryData[i] = draggeditem;
                                        delete this.$store.state.inventoryData[slot];
                                        break;
                                    } else {
                                        draggeditem.count -= swapcount;
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [slot]: draggeditem
                                        };
                                        var newItemData = {
                                            name: draggeditem.name,
                                            label: draggeditem.label,
                                            count: swapcount,
                                            unique: draggeditem.unique,
                                            weight: draggeditem.weight,
                                            info: draggeditem.info,
                                            slot: i,
                                            type: draggeditem.type
                                        };
                                        this.$store.state.inventoryData[i] = newItemData;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            $.post(
                "https://codem-inventory/HandleAutoSort",
                JSON.stringify({
                    draggeditem: draggeditem,
                    count: count,
                    slot: slot
                })
            );
            setTimeout(() => {
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                
            }, 50);
        },
        GetItemBackground(item) {
            if (
                this.currentItem != undefined &&
                this.currentItem != false &&
                item &&
                item.name &&
                this.currentItem.name == item.name &&
                this.currentItem.slot == item.slot
            ) {
                return "itemhover-bg";
            }
            if (item == undefined) {
                return "freeslotbg";
            } else if ((item && item.type == "weapon") || (item && item.type == "ammo")) {
                return "weaponslotbg";
            } else if (item && item.type == "food") {
                return "fooditembg";
            } else if (item && item.type == "item") {
                return "freeslotbg";
            } else if (item && item.type == "craft") {
                return "craftitembg";
            } else if (item && item.type == undefined) {
                return "freeslotbg";
            }
        },

        HexToRGBA(hex) {
            var c;
            if (/^#([A-Fa-f0-9]{3}){1,2}$/.test(hex)) {
                c = hex.substring(1).split("");
                if (c.length == 3) {
                    c = [c[0], c[0], c[1], c[1], c[2], c[2]];
                }
                c = "0x" + c.join("");
                return "rgba(" + [(c >> 16) & 255, (c >> 8) & 255, c & 255].join(",") + ", 0.47)";
            }
        },
        hexToRgb(hex) {
            hex = hex.replace(/^#/, "");

            if (hex.length !== 3 && hex.length !== 6) {
                return;
            }

            if (hex.length === 3) {
                hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
            }

            // Hex değerini RGB değerlerine dönüştür
            var r = parseInt(hex.substring(0, 2), 16);
            var g = parseInt(hex.substring(2, 4), 16);
            var b = parseInt(hex.substring(4, 6), 16);

            return "rgb(" + r + ", " + g + ", " + b + ")";
        },

        ColorPicker(type) {
            if (type == "underlinecolor") {
                localStorage.setItem("codeminv-underlinecolor", this.HexToRGBA(this.$store.state.colorsettings.underlinecolor));
                this.$store.state.colorsettings.underlinecolor = this.HexToRGBA(this.$store.state.colorsettings.underlinecolor);
            } else if (type == "bgcolor") {
                localStorage.setItem("codeminv-bgcolor", this.HexToRGBA(this.$store.state.colorsettings.bgcolor));
                this.$store.state.colorsettings.bgcolor = this.HexToRGBA(this.$store.state.colorsettings.bgcolor);
            } else if (type == "bordercolor") {
                localStorage.setItem("codeminv-bordercolor", this.HexToRGBA(this.$store.state.colorsettings.bordercolor));
                this.$store.state.colorsettings.bordercolor = this.HexToRGBA(this.$store.state.colorsettings.bordercolor);
            } else if (type == "buttonscolor") {
                localStorage.setItem("codeminv-buttonscolor", this.HexToRGBA(this.$store.state.colorsettings.buttonscolor));
                this.$store.state.colorsettings.buttonscolor = this.HexToRGBA(this.$store.state.colorsettings.buttonscolor);
            }
        },

        UseItemDbl(item) {
            if (item) {
                if (this.currentItem.closeafteruse) {
                    $(".maindiv").fadeOut(300);
                    $.post("https://codem-inventory/RemovePed", {});
                    $.post("https://codem-inventory/close", JSON.stringify({}));
                }
                $.post("https://codem-inventory/UseItem", JSON.stringify({ itemdata: this.currentItem }));
            }
            setTimeout(() => {
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                
            }, 50);
        },
        SetAction(type, id) {
            if (!this.currentItem) {
                return;
            }
            var amountdiv = this.$store.state.itemCount;
            if (amountdiv <= 0 || amountdiv >= this.currentItem.count) {
                amountdiv = this.currentItem.count;
            }
            if (type == "use") {
                if (this.currentItem.closeafteruse) {
                    $(".maindiv").fadeOut(300);
                    $.post("https://codem-inventory/RemovePed", {});
                    $.post("https://codem-inventory/close", JSON.stringify({}));
                }
                $.post("https://codem-inventory/UseItem", JSON.stringify({ itemdata: this.currentItem }));
            } else if (type == "give") {
                $.post(
                    "https://codem-inventory/GiveItem",
                    JSON.stringify({
                        item: this.currentItem,
                        slot: this.currentItem.slot,
                        count: amountdiv,
                        targetplayerid: id
                    })
                );
            } else if (type == "parse") {
                $.post(
                    "https://codem-inventory/ParseItem",
                    JSON.stringify({
                        item: this.currentItem,
                        slot: this.currentItem.slot,
                        count: amountdiv
                    })
                );
            }
        },
        restrictToPositiveNumbers() {
            this.$store.state.itemCount = this.$store.state.itemCount.replace(/[^0-9]/g, "");

            if (parseInt(this.$store.state.itemCount) < 0) {
                this.$store.state.itemCount = 0;
            }
        },
        ClickedIsItemWeapon() {
            if (this.currentItem && this.currentItem.type && this.currentItem.type == "weapon") {
                this.$store.state.clickedweapondata = this.currentItem;
                return true;
            }
            return false;
        },
        mainInventoryDrag() {
            $(".screetslotdraggable").draggable({
                helper: "clone",
                revertDuration: 0,
                revert: false,
                cancel: ".item-nodrag",
                containment: ".playerinv",
                scroll: true,
                start: function (event, ui) {
                    if ($(this).children().length === 0) {
                        event.preventDefault();

                        return;
                    }
                    ui.helper.addClass("from-mainInventory");
                    ui.helper.css("width", "5.7%");
                    ui.helper.css("height", "11%");
                    ui.helper.css("opacity", "0.0");

                    ui.helper.animate(
                        {
                            opacity: 1.0
                        },
                        400
                    );
                },
                drag: function (event, ui) {},
                stop: (event, ui) => {
                    this.mainInventoryDrop();
                    ui.helper.removeClass("from-ground");
                    ui.helper.removeClass("from-mainInventory");
                    this.$store.dispatch("clicksound", "click");
                }
            });

            $(".mainInventorySlot").draggable({
                helper: "clone",
                revertDuration: 0,
                revert: false,
                cancel: ".item-nodrag",
                collision : "fit",
                within: "body",
                containment: "body",
                scroll: true,
                start: function (event, ui) {
                    if ($(this).children().length === 0) {
                        event.preventDefault();

                        return;
                    }

                    ui.helper.addClass("from-mainInventory");
                    ui.helper.css("width", "5.7%");
                    ui.helper.css("height", "11%");
                    ui.helper.css("opacity", "0.0");

                    ui.helper.animate(
                        {
                            opacity: 1.0
                        },
                        400
                    );
                },
                drag: function (event, ui) {},
                stop: (event, ui) => {
                    this.mainInventoryDrop();
                    ui.helper.removeClass("from-ground");
                    ui.helper.removeClass("from-mainInventory");
                    this.$store.dispatch("clicksound", "click");
                }
            });

            $(".top5Draggable").draggable({
                helper: "clone",
                revertDuration: 0,
                revert: false,
                cancel: ".item-nodrag",
                containment: "test",
                scroll: false,
                start: function (event, ui) {
                    if ($(this).children().length === 0) {
                        event.preventDefault();

                        return;
                    }

                    ui.helper.addClass("from-mainInventory");
                    ui.helper.css("width", "5.7%");
                    ui.helper.css("height", "11%");
                },

                drag: function (event, ui) {},
                stop: (event, ui) => {
                    this.mainInventoryDrop();
                    ui.helper.removeClass("from-ground");
                    ui.helper.removeClass("from-mainInventory");
                    ui.helper.removeClass("from-secret");
                    this.$store.dispatch("clicksound", "click");
                }
            });
        },

        mainInventoryDrop() {
            $(".screetslotdroppable").droppable({
                tolerance: "pointer",
                drop: (event, ui) => {
                    var amountdiv = this.$store.state.itemCount;
                    let isFromGround = $(ui.helper).hasClass("from-ground");
                    let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                    let targetplayerid = parseInt($(event.target).attr("id"));
                    let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                    let isFromCraft = $(ui.helper).hasClass("from-craft");
                    let draggedItem = this.$store.state.CurrentInventoryData[draggedIndex];
                    if (this.$store.state.selectedinventorycategory != 0) {
                        return;
                    }
                    //this.$store.commit('deleteGroundItemData', draggedIndex);
                    if (isFromMainInventory) {
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let draggedItem = this.$store.state.inventoryData[draggedIndex];
                        let targetItem = this.$store.state.inventoryData[targetindex];
                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (this.$store.state.localstoragedata.autosort) {
                            this.HandleAutoSort("player", "player", draggedItem, amountdiv, draggedIndex);
                            return;
                        }
                        if (!draggedItem) {
                            return;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                this.$store.commit("deleteInventoryData", draggedIndex);
                                draggedItem.slot = targetindex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };

                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: targetItem
                                    };
                                } else {
                                    this.$store.commit("deleteInventoryData", draggedIndex);
                                    targetItem.count += draggedItem.count;
                                }
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: amountdiv
                                    })
                                );
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                }
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: amountdiv
                                    })
                                );
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }
                    if (isFromGround) {
                        if (this.$store.state.selectedinventorycategory != 0) {
                            return;
                        }
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.groundItemTable[draggedIndex];
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let targetItem = this.$store.state.inventoryData[targetindex];

                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                this.$store.commit("deleteGroundItemData", draggedIndex);
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                } else {
                                    targetItem.count += draggedItem.count;
                                    this.$store.commit("deleteGroundItemData", draggedIndex);
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.groundItemTable = {
                                    ...this.$store.state.groundItemTable,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.groundItemTable = {
                                    ...this.$store.state.groundItemTable,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }
                    if (isFromCraft) {
                        if (this.$store.state.selectedinventorycategory != 0) {
                            return;
                        }
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.craftinventory[draggedIndex];
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let targetItem = this.$store.state.inventoryData[targetindex];

                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                delete this.$store.state.craftinventory[draggedIndex];
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                } else {
                                    targetItem.count += draggedItem.count;
                                    delete this.$store.state.craftinventory[draggedIndex];
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.craftinventory = {
                                    ...this.$store.state.craftinventory,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.craftinventory = {
                                    ...this.$store.state.craftinventory,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }
                }
            }),
                $(".giveitembutton").droppable({
                    tolerance: "pointer",
                    drop: (event, ui) => {
                        var amountdiv = this.$store.state.itemCount;
                        let isFromGround = $(ui.helper).hasClass("from-ground");
                        let fromsecret = $(ui.helper).hasClass("from-secret");
                        let fromcraft = $(ui.helper).hasClass("from-craft");
                        let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                        let targetplayerid = parseInt($(event.target).attr("id"));
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.CurrentInventoryData[draggedIndex];
                        if (isFromGround) {
                            return;
                        }
                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (fromsecret || fromcraft) {
                        } else {
                            $.post(
                                "https://codem-inventory/GiveItem",
                                JSON.stringify({
                                    item: draggedItem,
                                    slot: draggedIndex,
                                    count: amountdiv,
                                    targetplayerid: targetplayerid
                                })
                            );
                        }
                    }
                }),
                $(".parsebutton").droppable({
                    tolerance: "pointer",
                    drop: (event, ui) => {
                        var amountdiv = this.$store.state.itemCount;
                        let isFromGround = $(ui.helper).hasClass("from-ground");
                        let fromsecret = $(ui.helper).hasClass("from-secret");
                        let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.CurrentInventoryData[draggedIndex];
                        if (isFromGround) {
                            return;
                        }
                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (fromsecret) {
                        } else {
                            $.post(
                                "https://codem-inventory/ParseItem",
                                JSON.stringify({
                                    item: draggedItem,
                                    slot: draggedItem.slot,
                                    count: amountdiv
                                })
                            );
                        }
                    }
                }),
                $(".top5Droppable").droppable({
                    tolerance: "pointer",
                    drop: (event, ui) => {
                        var amountdiv = this.$store.state.itemCount;
                        let isFromGround = $(ui.helper).hasClass("from-ground");
                        let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                        let isFromCraft = $(ui.helper).hasClass("from-craft");
                        if (isFromMainInventory) {
                            if (this.$store.state.selectedinventorycategory != 0) {
                                return;
                            }
                            let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                            let draggedItem = this.$store.state.inventoryData[draggedIndex];
                            //this.$store.commit('deleteGroundItemData', draggedIndex);
                            let targetindex = parseInt($(event.target).attr("data-id"));
                            let targetItem = this.$store.state.inventoryData[targetindex];
                            if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                                amountdiv = draggedItem.count;
                            }
                            if (this.$store.state.localstoragedata.autosort) {
                                this.HandleAutoSort("player", "player", draggedItem, amountdiv, draggedIndex);
                                return;
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    this.$store.commit("deleteInventoryData", draggedIndex);
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData); // item eklenecek
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "player",
                                            count: draggedItem.count
                                        })
                                    );
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex;
                                        targetItem.slot = draggedIndex;
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [targetindex]: draggedItem
                                        };
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [draggedIndex]: targetItem
                                        };
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: draggedItem,
                                                targetitem: targetItem,
                                                draggedindex: draggedIndex,
                                                targetindex: targetindex,
                                                targetinv: "player",
                                                frominv: "player",
                                                count: draggedItem.count
                                            })
                                        );
                                    } else {
                                        targetItem.count += draggedItem.count;
                                        this.$store.commit("deleteInventoryData", draggedIndex);
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [targetindex]: targetItem
                                        };
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: draggedItem,
                                                targetitem: targetItem,
                                                draggedindex: draggedIndex,
                                                targetindex: targetindex,
                                                targetinv: "player",
                                                frominv: "player",
                                                count: draggedItem.count
                                            })
                                        );
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "player",
                                            count: draggedItem.count
                                        })
                                    );
                                }
                            } else if (amountdiv < draggedItem.count) {
                                amountdiv = Number(amountdiv);
                                if (!targetItem) {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: draggedItem
                                    };
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "player",
                                            count: amountdiv
                                        })
                                    );
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData); // item eklenecek
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        return;
                                    } else {
                                        draggedItem.count -= amountdiv;
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [draggedIndex]: draggedItem
                                        };
                                        targetItem.count += amountdiv;
                                    }
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "player",
                                            count: amountdiv
                                        })
                                    );
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return;
                                }
                            }
                        }
                        if (isFromGround) {
                            if (this.$store.state.selectedinventorycategory != 0) {
                                return;
                            }
                            let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                            let draggedItem = this.$store.state.groundItemTable[draggedIndex];
                            //this.$store.commit('deleteGroundItemData', draggedIndex);
                            let targetindex = parseInt($(event.target).attr("data-id"));
                            let targetItem = this.$store.state.inventoryData[targetindex];

                            if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                                amountdiv = draggedItem.count;
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    this.$store.commit("deleteGroundItemData", draggedIndex);
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: draggedItem.count
                                        })
                                    );
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex;
                                        targetItem.slot = draggedIndex;
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [targetindex]: draggedItem
                                        };
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [draggedIndex]: targetItem
                                        };
                                    } else {
                                        targetItem.count += draggedItem.count;
                                        this.$store.commit("deleteGroundItemData", draggedIndex);
                                    }
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: draggedItem.count
                                        })
                                    );
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: draggedItem.count,
                                            type: draggedItem.type
                                        })
                                    );
                                }
                            } else if (amountdiv < draggedItem.count) {
                                amountdiv = Number(amountdiv);
                                if (!targetItem) {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: draggedItem
                                    };
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        return;
                                    } else {
                                        draggedItem.count -= amountdiv;
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [draggedIndex]: draggedItem
                                        };
                                        targetItem.count += amountdiv;
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: draggedItem,
                                                targetitem: targetItem,
                                                draggedindex: draggedIndex,
                                                targetindex: targetindex,
                                                targetinv: "player",
                                                frominv: "right",
                                                frominvid: this.$store.state.rightinvid,
                                                frominvtype: this.$store.state.rightInventoryType,
                                                count: amountdiv
                                            })
                                        );
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return;
                                }
                            }
                        }
                        if (isFromCraft) {
                            if (this.$store.state.selectedinventorycategory != 0) {
                                return;
                            }
                            let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                            let draggedItem = this.$store.state.craftinventory[draggedIndex];
                            //this.$store.commit('deleteGroundItemData', draggedIndex);
                            let targetindex = parseInt($(event.target).attr("data-id"));
                            let targetItem = this.$store.state.inventoryData[targetindex];

                            if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                                amountdiv = draggedItem.count;
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    delete this.$store.state.craftinventory[draggedIndex];
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: draggedItem.count
                                        })
                                    );
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex;
                                        targetItem.slot = draggedIndex;
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [targetindex]: draggedItem
                                        };
                                        this.$store.state.craftinventory = {
                                            ...this.$store.state.craftinventory,
                                            [draggedIndex]: targetItem
                                        };
                                    } else {
                                        targetItem.count += draggedItem.count;
                                        delete this.$store.state.craftinventory[draggedIndex];
                                    }
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: draggedItem.count
                                        })
                                    );
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: draggedItem.count,
                                            type: draggedItem.type
                                        })
                                    );
                                }
                            } else if (amountdiv < draggedItem.count) {
                                amountdiv = Number(amountdiv);
                                if (!targetItem) {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: draggedItem
                                    };
                                    var newItemData = {
                                        name: draggedItem.name,
                                        label: draggedItem.label,
                                        count: amountdiv,
                                        unique: draggedItem.unique,
                                        weight: draggedItem.weight,
                                        info: draggedItem.info,
                                        slot: targetindex,
                                        type: draggedItem.type,
                                        closeafteruse: draggedItem.closeafteruse
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv
                                        })
                                    );
                                    this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        return;
                                    } else {
                                        draggedItem.count -= amountdiv;
                                        this.$store.state.craftinventory = {
                                            ...this.$store.state.craftinventory,
                                            [draggedIndex]: draggedItem
                                        };
                                        targetItem.count += amountdiv;
                                        $.post(
                                            "https://codem-inventory/UpdateInventoryData",
                                            JSON.stringify({
                                                draggeditem: draggedItem,
                                                targetitem: targetItem,
                                                draggedindex: draggedIndex,
                                                targetindex: targetindex,
                                                targetinv: "player",
                                                frominv: "right",
                                                frominvid: this.$store.state.rightinvid,
                                                frominvtype: "Craft",
                                                count: amountdiv
                                            })
                                        );
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return;
                                }
                            }
                        }

                        this.$store.dispatch("calculateTotalWeight");
                        this.$store.dispatch("calculateRightInventoryWeight");
                    }
                });

            $(".usedroppable").droppable({
                tolerance: "pointer",
                drop: (event, ui) => {
                    let isFromGround = $(ui.helper).hasClass("from-ground");
                    let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                    if (isFromGround) {
                        return console.log("try dupe");
                    }
                    let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                    let draggedItem = this.$store.state.CurrentInventoryData[draggedIndex];
                    if (draggedItem) {
                        if (draggedItem.closeafteruse) {
                            $(".maindiv").fadeOut(300);
                            $.post("https://codem-inventory/RemovePed", {});
                            $.post("https://codem-inventory/close", JSON.stringify({}));
                        }
                        $.post("https://codem-inventory/UseItem", JSON.stringify({ itemdata: draggedItem }));
                    }
                }
            });
            $(".mainInventorySlotDrop").droppable({
                tolerance: "pointer",
                drop: (event, ui) => {
                    if (this.$store.state.selectedinventorycategory != 0) {
                        return;
                    }
                    let isFromGround = $(ui.helper).hasClass("from-ground");
                    let isFromMainInventory = $(ui.helper).hasClass("from-mainInventory");
                    let isFromCraft = $(ui.helper).hasClass("from-craft");
                    var amountdiv = this.$store.state.itemCount;
                    if (isFromMainInventory) {
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let draggedItem = this.$store.state.inventoryData[draggedIndex];
                        let targetItem = this.$store.state.inventoryData[targetindex];
                        if (amountdiv <= 0 || draggedItem && amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (this.$store.state.localstoragedata.autosort) {
                            this.HandleAutoSort("player", "player", draggedItem, amountdiv, draggedIndex);
                            return;
                        }
                        if (!draggedItem) {
                            return;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                this.$store.commit("deleteInventoryData", draggedIndex);
                                draggedItem.slot = targetindex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: targetItem
                                    };
                                } else {
                                    this.$store.commit("deleteInventoryData", draggedIndex);
                                    targetItem.count += draggedItem.count;
                                }
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: draggedItem.count
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: amountdiv
                                    })
                                );
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                }
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "player",
                                        count: amountdiv
                                    })
                                );
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }
                    if (isFromGround) {
                        if (this.$store.state.selectedinventorycategory != 0) {
                            return;
                        }
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.groundItemTable[draggedIndex];
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let targetItem = this.$store.state.inventoryData[targetindex];

                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                this.$store.commit("deleteGroundItemData", draggedIndex);
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                } else {
                                    targetItem.count += draggedItem.count;
                                    this.$store.commit("deleteGroundItemData", draggedIndex);
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.groundItemTable = {
                                    ...this.$store.state.groundItemTable,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.groundItemTable = {
                                    ...this.$store.state.groundItemTable,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: this.$store.state.rightInventoryType,
                                        count: amountdiv
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: this.$store.state.rightInventoryType,
                                            count: amountdiv
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }
                    if (isFromCraft) {
                        if (this.$store.state.selectedinventorycategory != 0) {
                            return;
                        }
                        let draggedIndex = parseInt($(ui.draggable).attr("data-id"));
                        let draggedItem = this.$store.state.craftinventory[draggedIndex];
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                        let targetindex = parseInt($(event.target).attr("data-id"));
                        let targetItem = this.$store.state.inventoryData[targetindex];

                        if (amountdiv <= 0 || amountdiv >= draggedItem.count) {
                            amountdiv = draggedItem.count;
                        }
                        if (amountdiv == draggedItem.count) {
                            if (!targetItem) {
                                delete this.$store.state.craftinventory[draggedIndex];
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    draggedItem.slot = targetindex;
                                    targetItem.slot = draggedIndex;
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                } else {
                                    targetItem.count += draggedItem.count;
                                    delete this.$store.state.craftinventory[draggedIndex];
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                draggedItem.slot = targetindex;
                                targetItem.slot = draggedIndex;
                                this.$store.state.inventoryData = {
                                    ...this.$store.state.inventoryData,
                                    [targetindex]: draggedItem
                                };
                                this.$store.state.craftinventory = {
                                    ...this.$store.state.craftinventory,
                                    [draggedIndex]: targetItem
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                            }
                        } else if (amountdiv < draggedItem.count) {
                            amountdiv = Number(amountdiv);
                            if (!targetItem) {
                                draggedItem.count -= amountdiv;
                                this.$store.state.craftinventory = {
                                    ...this.$store.state.craftinventory,
                                    [draggedIndex]: draggedItem
                                };
                                var newItemData = {
                                    name: draggedItem.name,
                                    label: draggedItem.label,
                                    count: amountdiv,
                                    unique: draggedItem.unique,
                                    weight: draggedItem.weight,
                                    info: draggedItem.info,
                                    slot: targetindex,
                                    type: draggedItem.type,
                                    closeafteruse: draggedItem.closeafteruse
                                };
                                $.post(
                                    "https://codem-inventory/UpdateInventoryData",
                                    JSON.stringify({
                                        draggeditem: draggedItem,
                                        targetitem: targetItem,
                                        draggedindex: draggedIndex,
                                        targetindex: targetindex,
                                        targetinv: "player",
                                        frominv: "right",
                                        frominvid: this.$store.state.rightinvid,
                                        frominvtype: "Craft",
                                        count: amountdiv,
                                        craftcount: this.$store.state.craftitemcount
                                    })
                                );
                                this.$store.commit("AddItemtoPlayerInventory", newItemData);
                            } else if (targetItem && targetItem.name == draggedItem.name) {
                                if (targetItem.unique || draggedItem.unique) {
                                    return;
                                } else {
                                    draggedItem.count -= amountdiv;
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [draggedIndex]: draggedItem
                                    };
                                    targetItem.count += amountdiv;
                                    $.post(
                                        "https://codem-inventory/UpdateInventoryData",
                                        JSON.stringify({
                                            draggeditem: draggedItem,
                                            targetitem: targetItem,
                                            draggedindex: draggedIndex,
                                            targetindex: targetindex,
                                            targetinv: "player",
                                            frominv: "right",
                                            frominvid: this.$store.state.rightinvid,
                                            frominvtype: "Craft",
                                            count: amountdiv,
                                            craftcount: this.$store.state.craftitemcount
                                        })
                                    );
                                }
                            } else if (targetItem && targetItem.name != draggedItem.name) {
                                return;
                            }
                        }
                    }

                    this.$store.dispatch("calculateTotalWeight");
                    this.$store.dispatch("calculateRightInventoryWeight");
                }
            });
        },

        changeInventoryPage(page) {
            this.$store.state.activePage = page;
            this.$store.dispatch("calculateRightInventoryWeight");
            //if (this.$store.state.activePage == 'groundTemplate') {
            setTimeout(() => {
                this.$store.dispatch("calculateTotalWeight");
                this.$store.dispatch("calculateRightInventoryWeight");
                this.mainInventoryDrag();
                this.mainInventoryDrop();
                //this.ItemDroppableList()
                this.$store.dispatch("clicksound", "click");
            }, 50);
            //}
        },
        showItemAccount(item) {
            this.$store.dispatch("clicksound", "click");
            if (this.currentItem && this.currentItem.slot && this.currentItem.slot == item.slot) {
                if (!this.expanded && this.$store.state.localstoragedata.showinfoonclick) {
                    this.resizeBox();
                }
                return;
            }
            this.currentItem = item;

            if (!this.expanded && this.$store.state.localstoragedata.showinfoonclick) {
                this.resizeBox();
            }
        },
        GetCalculatedInfo(item) {
            return sendInfoData(item);
        },

        SetLocalStorageData(name, data) {
            if (name == "codeminv-autoshowitem") {
                localStorage.setItem(name, this.$store.state.localstoragedata.showinfoonclick);
            } else if (name == "codeminv-enablesound") {
                localStorage.setItem(name, this.$store.state.localstoragedata.enablesound);
            } else if (name == "codeminv-blurbg") {
                localStorage.setItem(name, this.$store.state.localstoragedata.blurbg);
                if (!this.$store.state.localstoragedata.blurbg) {
                    $.post("https://codem-inventory/Blurtobg", JSON.stringify({}));
                } else {
                    $.post("https://codem-inventory/RemoveBlur", JSON.stringify({}));
                }
            } else if (name == "codeminv-autosort") {
                localStorage.setItem(name, this.$store.state.localstoragedata.autosort);
            }
        },
        //animasyonlar
        resizeBox() {
            if (this.currentItem == false) {
                return;
            }
            if (this.expanded && this.currentItem) {
                this.durationBox.width = "2.5vw";
                this.durationBox.height = "4vh";
                this.durationBox.opacity = 0;
                this.expanded = !this.expanded;
                setTimeout(() => {
                    this.durationBox.opacity = 1;
                }, 3 * 100);
            } else if (!this.expanded && this.currentItem) {
                this.durationBox.width = "100%";
                this.durationBox.height = "100%";
                this.durationBox.opacity = 0;
                this.expanded = !this.expanded;
                setTimeout(() => {
                    this.durationBox.opacity = 1;
                }, 3 * 100);
            }
        },
        resizeBoxSettings() {
            if (this.settingsboxopen) {
                this.settingsbox.width = "2.5vw";
                this.settingsbox.height = "4vh";
                this.settingsbox.opacity = 0;
            } else {
                this.settingsbox.width = "100%";
                this.settingsbox.height = "100%";
                this.settingsbox.opacity = 0;
            }
            this.settingsboxopen = !this.settingsboxopen;
            setTimeout(() => {
                this.settingsbox.opacity = 1;
            }, 3 * 100);
        },
        giveBoxButton() {
            if (this.giveBox.expanded) {
                this.giveBox.width = "100%";
                this.giveBox.height = "9%";
                this.giveBox.opacity = 0;
            } else {
                this.giveBox.width = "100%";
                this.giveBox.height = "42%";
                this.giveBox.opacity = 0;
                $.post("https://codem-inventory/GetNearbyPlayers", JSON.stringify({}));
            }
            this.giveBox.expanded = !this.giveBox.expanded;
        }
    }
});
app.use(store).mount("#app");
var resourceName = "codem-inventory";

if (window.GetParentResourceName) {
    resourceName = window.GetParentResourceName();
}

window.postNUI = async (name, data) => {
    try {
        const response = await fetch(`https://${resourceName}/${name}`, {
            method: "POST",
            mode: "cors",
            cache: "no-cache",
            credentials: "same-origin",
            headers: {
                "Content-Type": "application/json"
            },
            redirect: "follow",
            referrerPolicy: "no-referrer",
            body: JSON.stringify(data)
        });
        return !response.ok ? null : response.json();
    } catch (error) {
        // console.log(error)
    }
};
