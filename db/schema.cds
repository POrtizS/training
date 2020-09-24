using from './schema/common';
using from './schema/products';
using from './schema/salesorder';
using from './schema/stores';
using from './schema/teste';




entity Base
{
    key ID : Integer;
    CREATE_TABLE : Timestamp;
}