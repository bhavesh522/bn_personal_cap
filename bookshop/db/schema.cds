namespace my.bookshop;

using { cuid, managed } from '@sap/cds/common';


entity Books {
    key ID : Integer;
    title : String;
    stock : Integer;    
    author : Association to bookshop.Authors;
}

entity Authors {
    key ID : Integer;
    name : String;
    books : Association to many bookshop.Books on $self;
}

entity Orders : cuid, managed  {
    book : Association to Books;
    quantity: Integer;
}

  @cds.persistence.exists    
  entity V_CONTRACT {  
    key ID : String(10); 
    PARTYID: String(40);
    }  