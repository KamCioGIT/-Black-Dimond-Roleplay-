import importTemplate from '../../js/util/importTemplate.js';


export default {
    template: await importTemplate('pages/clothes/index.html'),
    components: {

    
    },

    data: () => ({
      

     
    
           
       
    }),
    beforeDestroy() {
       
    },
    methods: {
        GetPhotoIndex(data, type) {
            if (type == "hat") {
                if (data == 1) {
                    return {image : '/html/template/hat.png', name : "Hat", isprop : true}
                } else if (data == 2) {
                    return {image : '/html/template/mask.png', name : "Mask"}
                } else if (data == 3) {
                    return {image : '/html/template/glasses.png', name : "Glasses", isprop : true}
                }
            } else if (type == "upperbody") {
                if (data == 1) {
                    return {image : '/html/template/tshirt.png', name : "Shirt"}
                } else if (data == 2) {
                    return {image : '/html/template/jackets.png', name : "Top"}
                } else if (data == 3) {
                    return {image : '/html/template/armor.png', name : "Vest"}
                } else if (data == 4) {
                    return {image : '/html/template/backpack.png', name : "Bag"}
                } else if (data == 5) {
                    return {image : '/html/template/gloves.png', name : "Gloves"}
                }  else if (data == 6) {
                    return {image : '/html/template/watch.png', name : "Watch", isprop : true}
                }
            } else if (type == "lowerboddy") {
                if (data == 1) {
                    return {image : '/html/template/pant.png', name : "Pants"}
                } else if (data == 2) {
                    return {image : '/html/template/shoes.png', name : "Shoes"}
                } 
            }
        },

        SetClothes(data, type) {
            $.post("https://codem-inventory/UpdateClothes", JSON.stringify({id: data, type: type}), function(data) {
            });
        }
    },

    computed: {
      
    },
    mounted() {
        $.post("https://codem-inventory/CreatePedScreen", {}, function(data) {
            $.each(data, function (k, v) { 
                
            });
        });
    },
    
}




