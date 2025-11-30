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

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Whiskers', 'Cat', 'Persian', '2020-05-10', 'Female', 'White', 1),
(2, 'Buddy', 'Dog', 'Labrador', '2019-07-21', 'Male', 'Brown', 2),
(3, 'Mittens', 'Cat', 'Siamese', '2021-02-14', 'Male', 'Cream', 3),
(4, 'Rocky', 'Dog', 'Bulldog', '2018-11-30', 'Male', 'Black', 4),
(5, 'Luna', 'Cat', 'Maine Coon', '2020-03-12', 'Female', 'Gray', 5),
(6, 'Charlie', 'Dog', 'Beagle', '2019-09-05', 'Male', 'Tri-color', 6),
(7, 'Bella', 'Cat', 'Bengal', '2021-06-25', 'Female', 'Golden', 7),
(8, 'Max', 'Dog', 'German Shepherd', '2018-04-18', 'Male', 'Black and Tan', 8),
(9, 'Snowball', 'Cat', 'Ragdoll', '2020-08-22', 'Female', 'White', 9),
(10, 'Coco', 'Dog', 'Poodle', '2021-01-10', 'Female', 'Cream', 10);

INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2023-01-05', 'Health Checkup'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-01-15', 'Sprained Leg'),
(4, 4, '2023-01-20', 'Dental Cleaning'),
(5, 5, '2023-02-01', 'Skin Infection'),
(6, 6, '2023-02-05', 'Flea Treatment'),
(7, 7, '2023-02-12', 'Vaccination'),
(8, 8, '2023-02-18', 'Spaying Surgery'),
(9, 9, '2023-02-25', 'Allergic Reaction'),
(10, 10, '2023-03-01', 'Eye Infection');
