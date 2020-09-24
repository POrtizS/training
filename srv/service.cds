using{training.products as products} from '../db/schema/products';
using{training.salesorder as salesorder} from '../db/schema/salesorder';
using{training.stores as stores} from '../db/schema/stores';
using{training.teste as teste} from '../db/schema/teste';
using{training.productviews as productviews} from '../db/views/ProductViews';

service MyServices{

    entity Products as projection on products.TBL_PRODUCTS;
    entity ProductType as projection on products.TBL_PRODUCT_TYPE;
    entity SalesOrder as projection on salesorder.TBL_SALESORDER;
    entity Stores as projection on stores.TBL_STORES;
    entity ProductWithType as projection on productviews.ProductWithTypeView;
    entity Teste as projection on teste.buffer;

    action test(ID:Integer) returns String;



}