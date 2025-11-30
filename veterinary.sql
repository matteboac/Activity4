CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR (50),
    dlastname VARCHAR (50),
    speciality VARCHAR (100),
    phone VARCHAR (15),
    email VARCHAR (100)
);

CREATE TABLE invoices(
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymenttime TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR (255),
    prescription VARCHAR (255),
    notes VARCHAR (255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Maria', 'Lopez', 'Manila', '09123456789', 'maria@example.com'),
(2, 'John', 'Dela Cruz', 'Cebu', '09876543210', 'john@example.com'),
(3, 'Anna', 'Reyes', 'Quezon City', '09112223344', 'anna@example.com'),
(4, 'Leo', 'Santos', 'Baguio', '09223334455', 'leo@example.com'),
(5, 'Matt', 'Boac', 'Tokyo', '09123456789', 'matt@exmaple.com'),
(6, 'Shayne', 'Perez', 'Switzerland', '0910987654', 'shayne@exmaple.com'),
(7, 'Labo', 'Calawan', 'Tondo', '09112233445', 'labo@exmaple.com'),
(8, 'Olyde', 'DeSilva', 'Rosario', '09998877665', 'olyde@exmaple.com'),
(9, 'Kester', 'Cruz', 'Lipa', '09334422557', 'kester@exmaple.com'),
(10, 'Lemon', 'Boac', 'Laguna', '09124365679', 'lemon@exmaple.com');


