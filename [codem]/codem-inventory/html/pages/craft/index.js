import importTemplate from '../../js/util/importTemplate.js';


export default {
    template: await importTemplate('pages/craft/index.html'),
    components: {

    
    },

    data: () => ({
        islearnedpage : false,

        poscraftdata : undefined,
        inlearned : false,
        intervalId : 0,
       
    }),
    beforeDestroy() {
       
    },
    methods: {
        craftdrag() {
            $('.craftinventorydraggable').draggable({
                helper: "clone",
                revertDuration: 0,
                revert: false,
                cancel: ".item-nodrag",
                scroll: true,
                start: function (event, ui) {
                    if ($(this).children().length === 0) {
                        event.preventDefault();
                       
                        return;
                    }
                    ui.helper.addClass('from-craft');
                    ui.helper.css('width', '5.7%')
                    ui.helper.css('height', '11%')
                    ui.helper.css('opacity', '0.0')
                    
                    ui.helper.animate({
                        opacity: 1.0
                    },250);
                 },
                drag: function (event, ui) { },
                stop: (event, ui) => {
                    ui.helper.removeClass('from-craft');
                    ui.helper.removeClass('from-mainInventory');
                    ui.helper.removeClass('from-ground');
                    this.$store.dispatch('clicksound', 'click');
                }
            });
          
        },

        GetBg(data) {
            setTimeout(() => {
                this.craftdrop()
                this.craftdrag()
            }, 500);
            if (!data) {
                return "rgba(217, 217, 217, 0.33)"
            } else if (data && !data.pass) {
                return "rgba(255, 167, 167, 0.33)"
            } else if (data && data.pass) {
                return "rgba(0, 133, 255, 0.33)"
            }
        },

        GetBgForButton(data) {
            if (data && !data.pass) {
                return "rgba(255, 255, 255, 0.33)"
            } else if (data && data.pass) {
                return "#0085FF"
            }
        },

        Craft() {
            if (this.poscraftdata && this.poscraftdata.pass) {
                $.post("https://codem-inventory/CraftItem", JSON.stringify({craftdata : this.poscraftdata, inlearned : this.inlearned}))
            }
        },
        SetCount(increase) {
            if (!increase) {
                this.$store.state.craftitemcount++
            } else {
                if (this.$store.state.craftitemcount - 1 < 1) {
                    return
                }
                this.$store.state.craftitemcount--
            }
            $.post("https://codem-inventory/UpdateCraftItemCount", JSON.stringify({requiredcount : this.$store.state.craftitemcount}))
        },

        AddToLearnedBook() {
            $.post("https://codem-inventory/AddToLearnedBook", JSON.stringify({craftdata : this.poscraftdata}))
        },

        craftdrop() {
          
            
            $('.craftinventorydroppable').droppable({
                tolerance: 'pointer',
                drop: (event, ui) => {
                    if (this.$store.state.selectedinventorycategory != 0) {return}
                    var amountdiv = this.$store.state.itemCount
                    let isFromMainInventory = $(ui.helper).hasClass('from-mainInventory');
                    if (isFromMainInventory) {
                        let draggedIndex = parseInt($(ui.draggable).attr('data-id'));
                        let draggedItem = this.$store.state.inventoryData[draggedIndex]
                        if (draggedItem) {
                            let targetindex = parseInt($(event.target).attr('data-id'));
                            let targetItem = this.$store.state.craftinventory[targetindex]
                            if (amountdiv <= 0 || amountdiv >= draggedItem.count ) {
                                amountdiv = draggedItem.count
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    this.$store.commit('deleteInventoryData', draggedIndex);
                                    draggedItem.slot = targetindex
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [targetindex]: draggedItem
                                    };
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'player',
                                        rightinvtype : 'Craft',
                                        count : amountdiv,
                                        type : draggedItem.type,
                                        craftcount : this.$store.state.craftitemcount
                                    }))
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex
                                        targetItem.slot = draggedIndex
                                        this.$store.state.craftinventory = {
                                            ...this.$store.state.craftinventory,
                                            [targetindex]: draggedItem
                                        };
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [draggedIndex]: targetItem
                                        };
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'player',
                                            rightinvtype : 'Craft',
                                            count : amountdiv,
                                            type : draggedItem.type,
                                            craftcount : this.$store.state.craftitemcount
                                        }))
                                    } else {
                                        this.$store.commit('deleteInventoryData', draggedIndex);
                                        targetItem.count += draggedItem.count;
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'player',
                                            rightinvtype : 'Craft',
                                            count : amountdiv,
                                            type : draggedItem.type,
                                            craftcount : this.$store.state.craftitemcount
                                        }))
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    draggedItem.slot = targetindex
                                    targetItem.slot = draggedIndex
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [targetindex]: draggedItem
                                    };
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: targetItem
                                    };
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'player',
                                        rightinvtype : 'Craft',
                                        count : amountdiv,
                                        type : draggedItem.type,
                                        craftcount : this.$store.state.craftitemcount
                                    }))
                                }
                            } else if (amountdiv < draggedItem.count) {
                                amountdiv = Number(amountdiv)
                                if (!targetItem) {
                                    draggedItem.count -= amountdiv
                                    this.$store.state.inventoryData = {
                                        ...this.$store.state.inventoryData,
                                        [draggedIndex]: draggedItem
                                    };
                                    var newItemData = {
                                        name : draggedItem.name,
                                        label : draggedItem.label,
                                        count : amountdiv,
                                        unique : draggedItem.unique,
                                        weight : draggedItem.weight,
                                        info : draggedItem.info,
                                        slot : targetindex,
                                        type : draggedItem.type,
                                        closeafteruse : draggedItem.closeafteruse,
                                    }
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'player',
                                        rightinvtype : 'Craft',
                                        count : amountdiv,
                                        type : draggedItem.type,
                                        craftcount : this.$store.state.craftitemcount
                                    }))
                                    this.$store.state.craftinventory = {
                                        ...this.$store.state.craftinventory,
                                        [targetindex]: newItemData
                                    };
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        return
                                    } else {
                                        draggedItem.count -= amountdiv
                                        this.$store.state.inventoryData = {
                                            ...this.$store.state.inventoryData,
                                            [draggedIndex]: draggedItem
                                        };
                                        targetItem.count += amountdiv;
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'player',
                                            rightinvtype : 'Craft',
                                            count : amountdiv,
                                            type : draggedItem.type,
                                            craftcount : this.$store.state.craftitemcount
                                        }))
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return
                                }
                            }
                        }                 
                       
                    }
                    this.$store.dispatch('calculateTotalWeight'); 
                    
                }
            });
           
        },
        GetItemBackground(item, craft) {
            if (item && craft) {
                return "craftitembg"
            }
            if (item == undefined) {
                return "freeslotbg"
            } else if (item && item.type == "weapon" || item && item.type == "ammo") {
                return "weaponslotbg"
            } else if (item && item.type == "food") {
                return "fooditembg"
            } else if (item && item.type == "item") {
                return "freeslotbg"
            } else if (item && item.type == "craft") {
                return "craftitembg"
            } else if (item && item.type == undefined) {
                return "freeslotbg"
            }
        },
        animateWidthToTarget(elementId, targetWidth, durationInSeconds) {
            const animatedElement = document.getElementById(elementId);
            const interval = 1000; // Interval süresi (ms)
            const steps = durationInSeconds * 1000 / interval; // Adım sayısı
          
            let currentWidth = 0;
            let step = 0;
          
            const incrementWidth = () => {
              step++;
              currentWidth = (step / steps) * targetWidth;
              animatedElement.style.width = `${currentWidth}%`;
              const percentage = (currentWidth / targetWidth) * 100;
              this.$store.state.craftpercentage = `${percentage.toFixed(2)}%`;
              if (step >= steps) {
                clearInterval(this.intervalId);
              }
            };
            this.intervalId = setInterval(incrementWidth, interval);
          },
          StopCraft() {
            if (this.poscraftdata) {
                this.poscraftdata.started = false
            }
            this.$store.state.itemlock = false
            const animatedElement = document.getElementById("craftweight");
            let currentWidth = 0
            animatedElement.style.width = `${currentWidth}%`;
            const percentage = 0;
            this.$store.state.craftpercentage = `${percentage.toFixed(2)}%`;
            clearInterval(this.intervalId);
            $.post("https://codem-inventory/StopCraft", JSON.stringify({}))
            
        },
    },

    computed: {
      
    },
    mounted() {
        $.post("https://codem-inventory/RemovePed",{});
        setTimeout(() => {
            this.craftdrop()
            this.craftdrag()
        }, 50);
        window.addEventListener('message', this.eventHandler)
        window.addEventListener("message", (event) => {
            if (event.data.action == "updatepossiblecraftData") {
                this.poscraftdata = event.data.craftdata
                this.inlearned = false
                setTimeout(() => {
                    this.craftdrop()
                    this.craftdrag()
                }, 50);
            } else if (event.data.action == "lockcraftitems") {
                this.poscraftdata.started = true
                this.$store.state.itemlock = true
                this.animateWidthToTarget("craftweight", 100, event.data.time);
            } else if (event.data.action == "unlockcraftitems") {
                this.$store.state.craftinventory = {}
                this.poscraftdata = undefined
                //this.poscraftdata.started = false
                this.$store.state.itemlock = false
            }
        })
    },
    
}




