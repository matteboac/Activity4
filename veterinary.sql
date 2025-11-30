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

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com')
(7, 'Dr.Jose', 'Morales', 'Dental Specialist', '09011223344', 'jose@example.com'),
(8, 'Dr.Kate', 'Lopez', 'Bird Specialist', '09123334455', 'kate@example.com'),
(9, 'Dr.Nina', 'Castro', 'Exotic Pets Specialist', '09224445566', 'nina@example.com'),
(10, 'Dr.Pedro', 'Ramos', 'General Veterinarian', '09335556677', 'pedro@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD registereddate DATE;

ALTER TABLE invoices
RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM appointments
WHERE animalid = 3;

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE doctorid = 4;

SELECT DISTINCT species FROM animals;
SELECT SUM(totalamount) AS totalsales
FROM invoices;

SELECT ownerid FROM owners WHERE ofirstname = 'Maria';
