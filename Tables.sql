CREATE TABLE PRODUCT (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(50) NOT NULL,
    Price NUMBER(6, 2) NOT NULL
);

CREATE TABLE ORDERS (
    Order_id NUMBER PRIMARY KEY,
    Order_date DATE,
    Product_id NUMBER,
    Quantity NUMBER NOT NULL,
    CONSTRAINT fk_Orders FOREIGN KEY (Product_id) REFERENCES PRODUCT(Product_id)
);

CREATE TABLE CUSTOMERS (
    Customer_id NUMBER PRIMARY KEY,
    Last_name VARCHAR2(50) NOT NULL,
    First_name VARCHAR2(50) NOT NULL,
    Address VARCHAR2(100),
    Date_of_birth DATE,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F'))
);

/*Add a Column Category to the PRODUCT Table*/

ALTER TABLE PRODUCT ADD Category VARCHAR2(20);
/*Add a Column OrderDate to the ORDERS Table*/
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;

