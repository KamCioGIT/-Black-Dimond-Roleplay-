import importTemplate from '../../js/util/importTemplate.js';


export default {
    template: await importTemplate('pages/ground/index.html'),
    components: {

    
    },

    data: () => ({
      
        
    
           
       
    }),
    methods: {

        handleMouseMove(event, item) {
            // "shift" tuşuna basılı tutulup tutulmadığını kontrol et
            this.isShiftPressed = event.shiftKey;
      
            // Fare sağ tıklandı mı kontrol et
            this.isRightClicked = event.button === 2;
      
            // İşlem yapmak istediğiniz kodu buraya ekleyin
            if (this.isShiftPressed && this.isRightClicked) {
            //   console.log('Shift tuşuna basılı tutularak sağ tıklandı.');
            }
          },
          handleContextMenu(event, item) {
            // "shift" tuşuna basılı tutulup tutulmadığını kontrol et
            this.isShiftPressed = event.shiftKey;
      
            // Sağ tıklama olayını engelle
            event.preventDefault();
            // İşlem yapmak istediğiniz kodu buraya ekleyin
            if (this.isShiftPressed && item) {
              if (this.$store.state.activePage == 'groundTemplate') {
                let swapcount = Number(this.$store.state.itemCount)
                if (swapcount <= 0 || swapcount >= item.count ) {
                    swapcount = item.count
                }
                var fountslot = false
                //if (frominv == "player") {
                    for (let i = 1; i < this.$store.state.plyinvslot; i++) { // inventoryData // groundItemTable
                        if (this.$store.state.inventoryData[i]) {
                            if (this.$store.state.inventoryData[i].name == item.name) {
                                if (swapcount == item.count) {
                                    if (!item.unique) {
                                        this.$store.state.inventoryData[i].count += swapcount
                                        delete this.$store.state.groundItemTable[item.slot]
                                        fountslot = true
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : item,
                                            targetitem : this.$store.state.inventoryData[i],
                                            draggedindex : item.slot,
                                            targetindex : i,
                                            targetinv : 'player',
                                            frominv : 'right',
                                            frominvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : swapcount
                                        }))
                                        break
                                    } 
                                } else {
                                    if (!item.unique) {
                                        this.$store.state.inventoryData[i].count += swapcount
                                        this.$store.state.groundItemTable[item.slot].count -= swapcount 

                                        fountslot = true
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : item,
                                            targetitem : this.$store.state.inventoryData[i],
                                            draggedindex : item.slot,
                                            targetindex : i,
                                            targetinv : 'player',
                                            frominv : 'right',
                                            frominvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : swapcount
                                        }))
                                        break
                                    }
                                }
                            }
                        }
                       
                    }
                    
                    if (!fountslot) {
                        for (let i = 1; i < this.$store.state.plyinvslot; i++) {
                            //if (slot != i) {
                                if (!this.$store.state.inventoryData[i]) {
                                    if (swapcount == item.count) {
                                        var newItemData = {
                                            name : item.name,
                                            label : item.label,
                                            count : swapcount,
                                            unique : item.unique,
                                            weight : item.weight,
                                            info : item.info,
                                            slot : i,
                                            type : item.type,
                                            closeafteruse : item.closeafteruse
                                        }
                                        this.$store.commit('deleteGroundItemData', item);
                                        this.$store.commit('AddItemtoPlayerInventory', newItemData);
                                        delete this.$store.state.groundItemTable[item.slot]
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : item,
                                            targetitem : this.$store.state.inventoryData[i],
                                            draggedindex : item.slot,
                                            targetindex : i,
                                            targetinv : 'player',
                                            frominv : 'right',
                                            frominvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : swapcount
                                        }))
                                        break
                                    } else {
                                        item.count -= swapcount
                                        var newItemData = {
                                            name : item.name,
                                            label : item.label,
                                            count : swapcount,
                                            unique : item.unique,
                                            weight : item.weight,
                                            info : item.info,
                                            slot : i,
                                            type : item.type
                                        }
                                        this.$store.state.inventoryData[i] = newItemData
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : item,
                                            targetitem : this.$store.state.inventoryData[i],
                                            draggedindex : item.slot,
                                            targetindex : i,
                                            targetinv : 'player',
                                            frominv : 'right',
                                            frominvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : swapcount
                                        }))
                                        break
                                    }
                                }
                            //}
                           
                        }
                    }
                    this.$store.dispatch('calculateTotalWeight'); 
                    this.$store.dispatch('calculateRightInventoryWeight'); 
                //}
              }
            }
          },
        groundInventoryDrag() {
            $('.groundDraggable').draggable({
                helper: "clone",
                revertDuration: 0,
                revert: false,
                cancel: ".item-nodrag",
                containment: "body",
                scroll: false,
                start: function (event, ui) {
                    if ($(this).children().length === 0) {
                        event.preventDefault();
                       
                        return;
                    }
                    ui.helper.addClass('from-ground');
                    ui.helper.css('width', '5.7%')
                    ui.helper.css('height', '11%')
                    ui.helper.css('opacity', '0.0')
                    
                    ui.helper.animate({
                        opacity: 1.0
                    },250);
                 },
                drag: function (event, ui) { },
                stop: (event, ui) => {
                    ui.helper.removeClass('from-ground');
                    ui.helper.removeClass('from-mainInventory');
                    this.$store.dispatch('clicksound', 'click');
                }
            });
          
        },
        GetItemBackground(item) {
            if (item == undefined && this.$store.state.rightInventoryType == "Shop") {
                return ""
            }
            if (item == undefined) {
                return "freeslotbg"
            } else if (item && item.type == "weapon" || item && item.type == "ammo") {
                return "weaponslotbg"
            } else if (item && item.type == "food") {
                return "fooditembg"
            } else if (item && item.type == "item") {
                return "freeslotbg"
            } else if (item && item.type == undefined) {
                return "freeslotbg"
            } else if (item && item.type == "craft") {
                return "craftitembg"
            }
             
        },
        groundInventoryDrop() {
          
            
            $('.groundDropped').droppable({
                tolerance: 'pointer',
                drop: (event, ui) => {
                    
                    if (this.$store.state.selectedinventorycategory != 0) {return}
                    if (this.$store.state.rightInventoryType == "Shop") {return}
                    var amountdiv = this.$store.state.itemCount
                    let isFromMainInventory = $(ui.helper).hasClass('from-mainInventory');
                    if (isFromMainInventory) {
                       
                        let draggedIndex = parseInt($(ui.draggable).attr('data-id'));
                        let draggedItem = this.$store.state.inventoryData[draggedIndex]
                        if (draggedItem) {
                            
                            let targetindex = parseInt($(event.target).attr('data-id'));
                            let targetItem = this.$store.state.groundItemTable[targetindex]
                            if (draggedItem.name == "bag" || targetItem && targetItem.name == "bag"  && this.$store.state.rightinvid.match("Bag")) {return}
                            if (amountdiv <= 0 || amountdiv >= draggedItem.count ) {
                                amountdiv = draggedItem.count
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    this.$store.commit('deleteInventoryData', draggedIndex);
                                    draggedItem.slot = targetindex
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
                                        [targetindex]: draggedItem
                                    };
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'player',
                                        rightinvid : this.$store.state.rightinvid,
                                        rightinvtype : this.$store.state.rightInventoryType,
                                        count : amountdiv,
                                        type : draggedItem.type,
                                    }))
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex
                                        targetItem.slot = draggedIndex
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
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
                                            rightinvid : this.$store.state.rightinvid,
                                            rightinvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv,
                                            
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
                                            rightinvid : this.$store.state.rightinvid,
                                            rightinvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv
                                        }))
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    draggedItem.slot = targetindex
                                    targetItem.slot = draggedIndex
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
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
                                        rightinvid : this.$store.state.rightinvid,
                                        rightinvtype : this.$store.state.rightInventoryType,
                                        count : amountdiv
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
                                        closeafteruse : draggedItem.closeafteruse
                                    }
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'player',
                                        rightinvid : this.$store.state.rightinvid,
                                        rightinvtype : this.$store.state.rightInventoryType,
                                        count : amountdiv
                                    }))
                                    this.$store.commit('AddItemtoRightInventory', newItemData);
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
                                            rightinvid : this.$store.state.rightinvid,
                                            rightinvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv
                                        }))
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return
                                }
                            }
                        }
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                          
                        
                    } else {
                        
                        let draggedIndex = parseInt($(ui.draggable).attr('data-id'));
                        let draggedItem = this.$store.state.groundItemTable[draggedIndex]  
                        //this.$store.commit('deleteGroundItemData', draggedIndex);
                        let targetindex = parseInt($(event.target).attr('data-id'));
                        let targetItem = this.$store.state.groundItemTable[targetindex]
                        if (draggedItem) {
                            if (amountdiv <= 0 || amountdiv >= draggedItem.count ) {
                                amountdiv = draggedItem.count
                            }
                            if (amountdiv == draggedItem.count) {
                                if (!targetItem) {
                                    this.$store.commit('deleteGroundItemData', draggedIndex);
                                    var newItemData = {
                                        name : draggedItem.name,
                                        label : draggedItem.label,
                                        count : amountdiv,
                                        unique : draggedItem.unique,
                                        weight : draggedItem.weight,
                                        info : draggedItem.info,
                                        slot : targetindex,
                                        type : draggedItem.type,
                                        closeafteruse : draggedItem.closeafteruse
                                    }
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'right',
                                        rightinvid : this.$store.state.rightinvid,
                                        frominvtype : this.$store.state.rightInventoryType,
                                        count : amountdiv
                                    }))
                                    this.$store.commit('AddItemtoRightInventory', newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        draggedItem.slot = targetindex
                                        targetItem.slot = draggedIndex
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [targetindex]: draggedItem
                                        };
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [draggedIndex]: targetItem
                                        };
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'right',
                                            rightinvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv
                                        }))
                                    } else {
                                        targetItem.count += draggedItem.count;
                                        this.$store.commit('deleteGroundItemData', draggedIndex);
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [targetindex]: targetItem
                                        };
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'right',
                                            rightinvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv
                                        }))
                                    }
                                }
                            } else if (amountdiv < draggedItem.count) {
                                amountdiv = Number(amountdiv)
                                if (!targetItem) {
                                    draggedItem.count -= amountdiv
                                    this.$store.state.groundItemTable = {
                                        ...this.$store.state.groundItemTable,
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
                                        closeafteruse : draggedItem.closeafteruse
                                    }
                                    $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                        draggeditem : draggedItem,
                                        targetitem : targetItem,
                                        draggedindex : draggedIndex,
                                        targetindex : targetindex,
                                        targetinv : 'right',
                                        frominv : 'right',
                                        rightinvid : this.$store.state.rightinvid,
                                        frominvtype : this.$store.state.rightInventoryType,
                                        count : amountdiv
                                    }))
                                    this.$store.commit('AddItemtoRightInventory', newItemData);
                                } else if (targetItem && targetItem.name == draggedItem.name) {
                                    if (targetItem.unique || draggedItem.unique) {
                                        return
                                    } else {
                                        draggedItem.count -= amountdiv
                                        this.$store.state.groundItemTable = {
                                            ...this.$store.state.groundItemTable,
                                            [draggedIndex]: draggedItem
                                        };
                                        targetItem.count += amountdiv;
                                        $.post("https://codem-inventory/UpdateInventoryData", JSON.stringify({
                                            draggeditem : draggedItem,
                                            targetitem : targetItem,
                                            draggedindex : draggedIndex,
                                            targetindex : targetindex,
                                            targetinv : 'right',
                                            frominv : 'right',
                                            rightinvid : this.$store.state.rightinvid,
                                            frominvtype : this.$store.state.rightInventoryType,
                                            count : amountdiv
                                        }))
                                    }
                                } else if (targetItem && targetItem.name != draggedItem.name) {
                                    return
                                }
                            }
                        }
                       
                    }
                    this.$store.dispatch('calculateTotalWeight'); 
                    this.$store.dispatch('calculateRightInventoryWeight'); 
                    
                }
            });
           
        },

        // groundInventoryDrag(e, index) {
        //     e.dataTransfer.setData('text', index + 1);
        //     e.dataTransfer.setData('source', 'groundInventory'); 
        // },
        // groundInventoryDrop(e, index) {
        //     if(this.$store.state.itemCount > 1){
        //         let source = e.dataTransfer.getData('source');
        //         if(source === 'groundInventory'){
        //             return false;
        //         }
               

        //         let draggedIndex = e.dataTransfer.getData('text');
        //         let draggedItem = this.$store.state.inventoryData[draggedIndex]
        //         let targetItem = this.$store.state.inventoryData[draggedIndex]
            
        //         this.$store.commit('deleteInventoryData', draggedIndex,targetItem.count);
        //         let groundIndex = Object.keys(this.$store.state.groundItemTable).length + 1 ;
        //         this.$store.state.groundItemTable= {
        //             ...this.$store.state.groundItemTable,
        //             [groundIndex]: draggedItem,
                   
        //         };    
        //         this.$store.dispatch('calculateTotalWeight'); 
        //     }else{
        //         let source = e.dataTransfer.getData('source');
        //         if(source === 'groundInventory'){
        //             return false;
        //         }
        //         let draggedIndex = e.dataTransfer.getData('text');
        //         let draggedItem = this.$store.state.inventoryData[draggedIndex]
        //         this.$store.commit('deleteInventoryData', draggedIndex,1);
        //         let groundIndex = Object.keys(this.$store.state.groundItemTable).length + 1 ;
        //         this.$store.state.groundItemTable= {
        //             ...this.$store.state.groundItemTable,
        //             [groundIndex]: draggedItem,
                   
        //         }; 
        //         this.$store.dispatch('calculateTotalWeight');
        //     }


           
       
              
        // },  
    },

    computed: {
      
    },

    mounted() {
        window.addEventListener("message", (event) => {
            if (event.data.action == "open") {
                setTimeout(() => {
                    this.groundInventoryDrop()
                    this.groundInventoryDrag()
                }, 50);
            }
        })
        $.post("https://codem-inventory/RemovePed",{});
        setTimeout(() => {
            this.groundInventoryDrop()
            this.groundInventoryDrag()
        }, 50);
        window.addEventListener('message', this.eventHandler)
    },
    beforeDestroy(){
        window.removeEventListener('message', this.eventHandler)
    }
}




