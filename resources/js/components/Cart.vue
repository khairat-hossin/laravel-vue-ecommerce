<template>
    <div>
        <li class="nav-item">
            <a href="/checkout" class="btn btn-sm btn-warning">Cart {{ itemCount }}</a>
        </li>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                itemCount: ''
            }
        },
        mounted(){
            this.$root.$on('changeInCart', (items) =>{
                this.itemCount= items
            })
        },
        methods:{
            async getCartItemOnPageLoad(){
                let response = await axios.post('/cart');
                this.itemCount= response.data.items;
            }
        },
        created(){
            this.getCartItemOnPageLoad();
        }
    }
</script>

<style scoped>

</style>