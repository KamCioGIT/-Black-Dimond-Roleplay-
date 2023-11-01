import importTemplate from '../../js/util/importTemplate.js';


export default {
    template: await importTemplate('pages/weapon/index.html'),
    components: {

    
    },

    data: () => ({
      

     
    
           
       
    }),
    methods: {
    GetSelectedItemData() {
        if( this.$store.state.clickedweapondata.name) {
          for(let key in this.$store.state.AttachmentList){
              //let item = this.state.inventoryData[key];
              for(let weapon in this.$store.state.AttachmentList[key]){
                  if (weapon == this.$store.state.clickedweapondata.name) {
                      return {
                          title : key,
                          label : this.$store.state.AttachmentList[key][weapon].label,
                          attachments : this.$store.state.AttachmentList[key][weapon].attachments,
                          skins : this.$store.state.AttachmentList[key][weapon].skin,
                          itemdata : this.$store.state.clickedweapondata,
                          image : "./itemimages/"+this.$store.state.clickedweapondata.name+".png"
                      }
                  }
              }
          }
        }
    },

    GetTypeCountFromType(data, type) {
        if (this.$store.state.AttachmentList[data.title] && this.$store.state.AttachmentList[data.title][data.itemdata.name] && this.$store.state.AttachmentList[data.title][data.itemdata.name].attachments) {
            if (this.$store.state.AttachmentList[data.title][data.itemdata.name].attachments[type]) {
                return this.$store.state.AttachmentList[data.title][data.itemdata.name].attachments[type]
            }
        }
    },

    PlayerHaveAttachment(data, type) {
        if (this.$store.state.clickedweapondata && this.$store.state.clickedweapondata.info && this.$store.state.clickedweapondata.info[0] && this.$store.state.clickedweapondata.info[0].attachments) {
            if (this.$store.state.clickedweapondata.info[0].attachments[type]) {
                return {
                    bool  :  true,
                    image : this.$store.state.clickedweapondata.info[0].attachments[type].item,
                    label : this.$store.state.clickedweapondata.info[0].attachments[type].label
                }
            }
        }
        return {
            bool : false
        }
    },

    DetachAttachment(itemdata, type) {
        if (itemdata.info && itemdata.info[0] && itemdata.info[0].attachments && itemdata.info[0].attachments[type]) {
           delete this.$store.state.inventoryData[itemdata.slot].info[0].attachments[type] 
           // luada attachment cikartilacak
           $.post("https://codem-inventory/DetachAttachment", JSON.stringify({
                item : itemdata,
                type : type
           })) 
        }
    },

    PlayerHaveItem(itemname) {
        var itemdata = this.$store.state.inventoryData
        for(let slot in itemdata){
            if (itemdata[slot]) {
                if (itemdata[slot].name == itemname) {
                    return {bool : true, itemname : itemdata[slot].name, itemlabel : itemdata[slot].label}
                }
            }
        }
        return {bool :false}
    },

    EjectWeaponAttachment(attachmentdata, itemdata, type) {
        this.$store.state.inventoryData[itemdata.slot].info[0].attachments[type] = {
            hash : attachmentdata.hash, item : attachmentdata.name, label : attachmentdata.label
        }
        $.post("https://codem-inventory/AddWeaponAttachment", JSON.stringify({
            item : itemdata, hash : attachmentdata.hash, name : attachmentdata.name, label : attachmentdata.label, type : type
       }))
        this.$store.state.attachmentdataforeject = undefined
        this.$store.state.selectedweaponattachmenttype = -1

    },
    EjectWeaponMagazine(itemdata) {
        $.post("https://codem-inventory/EjectWeaponMagazine", JSON.stringify({
            item : itemdata
       }))
    }
    },

    computed: {
      
    },

    mounted() {
        $.post("https://codem-inventory/RemovePed",{});
        window.addEventListener('message', this.eventHandler)
    },
    beforeDestroy(){
        window.removeEventListener('message', this.eventHandler)
    }
}




