<template>
    <div>
        <hr>
        <button class="btn btn-warning" @click.prevent="addProductTOCart()">Add to Cart</button>
    </div>
</template>

<script>
    export default {
        data(){
            return{

            }
        },
        props:[
            'productId',
            'userId'
        ],
        methods:{
            async addProductTOCart(){
                // console.log("hello")

                //Checking whether user is logged in or not

                if(this.userId == 0){
                    this.$toastr.e("You have to login to add product to Cart");
                    return;
                }

                //if user is logged in then add item to Cart
                let response= await axios.post('/cart', {
                    'product_id': this.productId
                });
                

                this.$root.$emit('changeInCart', response.data.items)
            }
        },
        mounted(){
            
        }
    }
</script>

<style scoped>

</style>