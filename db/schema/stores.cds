using from './common';
using from './products';
using from './salesorder';

context training.stores{

entity TBL_STORES{
    key ID: Integer;
    NAME: String(50);
    REGION: String(50);
    PHONE: Integer;
    STATUS:training.common.STATUS_TYPE;

    //SALESORDERS: Composition of many training.salesorder.TBL_SALESORDER on training.salesorder.TBL_SALESORDER.STORE = $self;
}

}