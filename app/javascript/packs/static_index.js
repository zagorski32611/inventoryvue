import Vue from 'vue/dist/vue.esm'

document.addEventListener ('DOMContentLoaded', () => {


    var allProducts = new Vue({
        el: "#all_products_button",
        data: {
            isShow: false,
        }    
    })

    var addProducts = new Vue({
        el: "#add_products_button",
        data: {
            isShow: false,
        }    
    })

    var sellProducts = new Vue({
        el: "#sell_products_button",
        data: {
            isShow: false,
        }    
    })

    var showCustomer = new Vue({
        el: "#show_customers_button",
        data: {
            isShow: false,
        }    
    })

    var newCustomer = new Vue({
        el: "#new_customer_button",
        data: {
            isShow: false
        }
    })
})