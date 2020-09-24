
module.exports = async function () {

this.on('hello', async(req) => {
        
        console.log("Hello Is called"+req.data);
        return "hello World:"+JSON.stringify(req.data);
    })


    /*
    this.after('hello', async(req) => {
        console.log("fillFutureItemValues");
        /*var procedure = 'call "com.tbs.hf.db.sales.order.forecast::SYNC_PRODUCTS_ROLLING_PERIOD"()'
        const tx = cds.transaction(req);
        return tx.run(procedure);
    })*/

    this.on('test', async(req) => {
        console.log("test");
        var procedureStart = 'call "training.procedures::TEST"(';
        var procedure = procedureStart.concat('P_ID =>\'', req.data.ID, '\')');
        const tx = cds.transaction(req);
        tx.run(procedure);
        return "Success";
    })


     this.before(['CREATE','UPDATE'], 'Products', async (req) => {
        //req.data.ID = uuid().replace(/-/g, "");
        //req.data.BASE_PRICE = req.data.BASE_PRICE * 1.5;
    })
    /*this.after(['READ'], 'Products', async (products, req) => {
        //req.data.ID = uuid().replace(/-/g, "");


        products.map(product => {
            product.SALES_PRICE = product.BASE_PRICE * 1.5;
        });
    })*/
}