CREATE database electricity_board;
USE electricity_board;

CREATE TABLE login(
serial_no INT NOT NULL AUTO_INCREMENT,
login_id VARCHAR(255) NOT NULL,
login_pass VARCHAR(255) NOT NULL,
PRIMARY KEY (serial_no),
UNIQUE (login_id),
UNIQUE (login_pass)
);


CREATE TABLE customer (
serial_no INT NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(255) NOT NULL,
cust_id INT NOT NULL,
cust_phone BIGINT NOT NULL,
cust_address TEXT(65535) NOT NULL,
PRIMARY KEY (serial_no),
UNIQUE (cust_name),
UNIQUE (cust_id)
);

CREATE TABLE connection(
serial_no INT NOT NULL AUTO_INCREMENT,
conc_type VARCHAR(255) NOT NULL,
conc_name VARCHAR(255) NOT NULL,
conc_date DATE NOT NULL,
conc_desc VARCHAR(255) NOT NULL,
PRIMARY KEY (serial_no)
);

CREATE TABLE meter(
serial_no INT NOT NULL AUTO_INCREMENT,
units INT,
power_consp INT,
prev_read INT,
PRIMARY KEY (serial_no)
);

CREATE TABLE bill(
serial_no INT NOT NULL AUTO_INCREMENT,
bill_id INT NOT NULL,
bill_amount INT,
bill_date DATE NOT NULL,
PRIMARY KEY(serial_no),
UNIQUE (bill_id)
);

SELECT * FROM login
LEFT JOIN customer ON login.serial_no = customer.serial_no
LEFT JOIN connection ON login.serial_no = connection.serial_no
LEFT JOIN meter ON login.serial_no = meter.serial_no
LEFT JOIN bill ON login.serial_no = bill.serial_no;








