using {training.products} from '../schema/products';
using{training.stores} from '../schema/stores';
 
namespace training.productviews;
 
    define view ProductView as
 
        select from products.TBL_PRODUCTS{
            *
        };
 
    define view ProductTypeView as
 
        select from products.TBL_PRODUCT_TYPE{
            *
        };
 
    define view ProductWithTypeView as
 
        select from products.TBL_PRODUCTS{
            ID,
            SHORT_DESCRIPTION,
            LONG_DESCRIPTION,
            PRODUCT_TYPE.DESCRIPTION as PRODUCT_TYPE,
            BASE_PRICE
        };
 
    define view ProductByStoreView as
 
        select from products.TBL_PRODUCTS{
            ID,
            SHORT_DESCRIPTION,
            LONG_DESCRIPTION,
            PRODUCT_TYPE.DESCRIPTION as PRODUCT_TYPE,
            BASE_PRICE,
            STORE.NAME,
            STORE.REGION
        };

    