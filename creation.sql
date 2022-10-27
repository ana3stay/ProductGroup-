use Shorats;

CREATE TABLE _ProductGroup (
		id INT PRIMARY KEY,
		GroupName NVARCHAR(50)
		);

CREATE TABLE _Product (
		id INT PRIMARY KEY,
		idProductGroup INT,
		name NVARCHAR(50),
		ImplementationPeriod NVARCHAR(50),
		);

CREATE TABLE ProductRange (
		id INT PRIMARY KEY,
		idProduct INT,
		idSuppliers INT,
		WholesalePrice FLOAT,
		DeliveryConditions NVARCHAR(50),
		TermsOfPayment VARCHAR(90),
		);

CREATE TABLE _Bank (
		id INT PRIMARY KEY,
		BankName NVARCHAR(50),
		city NVARCHAR(50)
		);

CREATE TABLE Suppliers (
		id INT PRIMARY KEY,
		name NVARCHAR(50),
		EmailAddress VARCHAR(50),
		phone VARCHAR(50),
		fax VARCHAR(50),
		Email VARCHAR(50),
		idBank VARCHAR(50),
		UIN VARCHAR(50),
		CheckingAccount INT,
		idProductRange INT,
		);

CREATE TABLE Suply (
		id INT PRIMARY KEY,
		idProduct INT,
		idSuppliers INT,
		QuantityOfProducts INT,
		unit VARCHAR(50),
		DeliveryPrice INT,
		NumberDateOfSupplyAgreement VARCHAR(50),
		DateOfReceiving VARCHAR(50),
		);

CREATE TABLE Reservation (
		id INT PRIMARY KEY,
		idproduct INT,
		price VARCHAR(50),
		QuantityOfProducts INT,
		unit VARCHAR(50),
		ReservationDate VARCHAR(50),
		DueDatePlanned VARCHAR(50),
		DueDateActual VARCHAR(50),
		ExecutionConditions VARCHAR(50),
		InvoiceNumber VARCHAR(50),
		);

CREATE TABLE Clients (
		id INT PRIMARY KEY,
		name NVARCHAR(50),
		EmailAddress VARCHAR(50),
		phone VARCHAR(50),
		fax VARCHAR(50),
		Email VARCHAR(50),
		idBank INT,
		idReservation INT,
		);

CREATE TABLE register (
		id_user int identity(1,1) not null,
		login_user varchar(50) not null,
		password_user varchar(50) not null
		);

