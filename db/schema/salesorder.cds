using from './common';
using from './products';
using from './stores';

context training.salesorder{

entity TBL_SALESORDER{
    key ID: Integer;
    QUANTITY: Decimal;
    SALES_PRICE: Decimal;
    STATUS: training.common.STATUS_TYPE;

    PRODUCT: Association to training.products.TBL_PRODUCTS;
    STORE: Association to  training.stores.TBL_STORES;
}

}