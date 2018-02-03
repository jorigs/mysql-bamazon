/*Create and declare initial table*/
CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE Products(
	item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price DECIMAL(10) NOT NULL,
    stock_quantity INTEGER(10),
    primary key (ItemId)
);
/*syntax for creating new product*/
INSERT INTO Products(product_name,department_name,price,stock_quantity) VALUES('Chocolate Chip Cookies','Food',1.99,200);

/*made mistake in usage of DECIMAL, delete old and create new correct column*/
ALTER TABLE Products DROP COLUMN price;
ALTER TABLE Products ADD COLUMN price DECIMAL(10,2) NOT NULL;

/*Create new row to ensure database has data*/
INSERT INTO Products(product_name,department_name,price,stock_quantity) VALUES('Apple Pie','Food',3.99,100);

/* More options */

INSERT INTO Products(product_name,department_name,price,stock_quantity) VALUES('Delicious Amber Ale','Drink',4.99,300);
INSERT INTO Products(product_name,department_name,price,stock_quantity) VALUES('Frozen Mango Margarita','Drink',5.99,150);
INSERT INTO Products(product_name,department_name,price,stock_quantity) VALUES('Extra chocolatey Cafe Mocca','Drink',3.49,200);

/* Name everything in plural form */
UPDATE Products SET product_name = "Apple Pies" WHERE product_name = "Apple Pie";

/* Add price to chocolate chip cookies. Wiped it out earlier with decimal redeclaration. */
UPDATE Products SET price = 1.99 WHERE product_name = "Chocolate Chip Cookies";