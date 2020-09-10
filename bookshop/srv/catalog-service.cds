using my.bookshop as my from '../db/schema';

service CatelogService {
entity Books as projection on my.Books;
entity Authors as projection on my.Authors;
entity contracts as projection on my.V_CONTRACT;
}