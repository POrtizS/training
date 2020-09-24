using from './common';
using from './stores';

context training.products {
    type PRODUCTS_TYPE : String(1) enum {
        PRODUCT  = 'P';
        MATERIAL = 'M';
    }

    entity TBL_PRODUCTS {
        key ID                : Integer;
            SHORT_DESCRIPTION : String(100);
            LONG_DESCRIPTION  : String(500);
            BASE_PRICE        : Decimal;
            STATUS            : training.common.STATUS_TYPE;
            PRODUCT_TYPE      : Association to TBL_PRODUCT_TYPE;
            STORE : Association to training.stores.TBL_STORES; 
    }

    entity TBL_PRODUCT_TYPE {
        key ID          : Integer;
            DESCRIPTION : String(100);
            PRODUCTS    : Composition of many TBL_PRODUCTS on PRODUCTS.PRODUCT_TYPE = $self
    }

}
