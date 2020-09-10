using my.bookshop as my from '../db/schema';

service Stats {

    entity OrderInfo as projection on my.Orders excluding  {
    createdAt,
    createdBy,
    modifiedAt,
    modifiedBy,
    book
    }

}