CREATE DATABASE SchoolDemo;
use SchoolDemo;
CREATE TABLE Address_Table(
    Address_id VARCHAR(20) PRIMARY KEY,
    Address_details VARCHAR(100)
    );

CREATE TABLE Staff_Table ( 
    Staff_ID VARCHAR(20) PRIMARY KEY,
    Staff_type VARCHAR(20),
    First_name VARCHAR(20) NOT NULL,
    Last_name VARCHAR(20) NOT NULL,
    Age INT,
    DOB DATE,
    Gender VARCHAR(5) CHECK (Gender in ('M','F')),
    JOin_date DATE,
    Address_id VARCHAR(20),
    CONSTRAINT FOREIGN KEY (Address_id) REFERENCES Address_Table (Address_Id)
	);

INSERT INTO Address_Table(Address_id, Address_details) VALUES 
('A001', 'G-456, Paradise Society, Dwarka, New Delhi, 110075'),
('A002', 'H-789, Sector 123, Noida, Uttar Pradesh, 201301'),
('A003', 'F-4, Tower 12, Ultratech City , Bengaluru, KarnATAKA, 560002'),
('A004', 'H-12, Main Street, Hyderabad, TELANGANA, 500033'),
('A005', 'B-10, Green Park, Mumbai, MAHARASHTRA, 400047'),
('A006', 'C-7, Park View, Kolkata, WEST BENGAL, 700029'),
('A007', 'E-3, Sector 45, Gurugram, HARYANA, 122001'),
('A008', 'F-10, Patel Nagar, Jaipur, RAJASTHAN, 302001'),
('A009', 'G-5, Model Town, Ludhiana, PUNJAB, 141002'),
('A010', 'H-6, Race Course Road, Dehradun, UTTARAKHAND, 248001'),
('A011', 'A-2, Marol Naka, Andheri, MAHARASHTRA, 400059'),
('A012', 'B-4, Sector 62, Noida, UTTAR PRADESH, 201301'),
('A013', 'C-6, MG Road, Pune, MAHARASHTRA, 411001'),
('A014', 'D-8, Park Road, Chennai, TAMIL NADU, 600029'),
('A015', 'E-10, New Town, Kolkata, WEST BENGAL, 700156'),
('A016', 'F-12, Civil Lines, Allahabad, UTTAR PRADESH, 211001'),
('A017', 'G-14, MG Road, Agra, UTTAR PRADESH, 282001'),
('A018', 'H-16, Model Town, Amritsar, PUNJAB, 143001'),
('A019', 'A-18, Park View, Aurangabad, MAHARASHTRA, 431001'),
('A020', 'B-20, Sector 45, Bhubaneswar, ODISHA, 751001'),
('A021', 'C-22, Patel Nagar, Bhopal, MADHYA PRADESH, 462001'),
('A022', 'D-24, Race Course Road, Coimbatore, TAMIL NADU, 641001'),
('A023', 'E-26, Marol Naka, Chandigarh, CHANDIGARH, 160001'),
('A024', 'F-28, Sector 62, Guwahati, ASSAM, 781001'),
('A025', 'G-30, MG Road, Jaisalmer, RAJASTHAN, 345001'),
('A026', 'H-32, Park Road, Jammu, JAMMU AND KASHMIR, 180001'),
('A027', 'A-34, New Town, Kanpur, UTTAR PRADESH, 208001'),
('A028', 'B-36, Civil Lines, Kochi, KERALA, 682001'),
('A029', 'C-38, MG Road, Lucknow, UTTAR PRADESH, 226001'),
('A030', 'D-40, Park View, Ranchi, JHARKHAND, 834001');




INSERT INTO Staff_Table ( Staff_ID ,Staff_type ,First_name , Last_name, Age, DOB, Gender, JOin_date, Address_id)
values
		  ('001', 'Principal', 'Rahul', 'Sharma', '28', '1993-07-05', 'M', '2012-05-23','A001'),
			('002', 'Teacher', 'Raman', 'Kumar', '28', '1993-05-05', 'M', '2012-08-23','A002'),
			   ('003', 'Admin', 'Anjali', 'Gupta', '30', '1991-07-01', 'F', '2015-11-01','A003'),
			   ('004', 'Teacher', 'John', 'Smith', '35', '1985-12-02', 'M', '2010-05-01','A004'),
			   ('005', 'Admin', 'Jane', 'Doe', '40', '1980-06-15', 'F', '2011-07-01','A005'),
			   ('006', 'Teacher', 'Michael', 'Williams', '42', '1978-04-22', 'M', '2013-09-01','A006'),
		('007', 'Admin', 'Emily', 'Jones', '38', '1982-08-12', 'F', '2014-11-01','A007'),
		('008', 'Teacher', 'Matthew', 'Brown', '32', '1988-01-01', 'M', '2016-01-01','A008'),
		('009', 'Admin', 'Ashley', 'Moore', '29', '1991-03-14', 'F', '2017-03-01','A009'),
		('010', 'Teacher', 'Joshua', 'Taylor', '45', '1976-07-03', 'M', '2018-05-01','A010'),
		('011', 'Admin', 'Amanda', 'Anderson', '41', '1980-11-01', 'F', '2019-07-01','A011'),
		('012', 'Teacher', 'Daniel', 'Thomas', '38', '1983-05-01', 'M', '2020-09-01','A012'),
			   ('013', 'Admin', 'Stephanie', 'Jackson', '35', '1986-10-01', 'F', '2021-11-01','A013'),
			   ('014', 'Teacher', 'Kevin', 'White', '32', '1989-01-01', 'M', '2022-01-01','A014'),
			   ('015', 'Admin', 'Emily', 'Harris', '29', '1992-03-01', 'F', '2022-03-01','A015'),
			   ('016', 'Teacher', 'Jacob', 'Martin', '26', '1995-05-01', 'M', '2022-05-01','A016'),
			   ('017', 'Admin', 'Nicholas', 'Thompson', '23', '1998-07-01', 'M', '2022-07-01','A017'),
			   ('018', 'Teacher', 'Christopher', 'Garcia', '20', '2001-09-01', 'M', '2022-09-01','A018'),
			   ('019', 'Admin', 'Jessica', 'Martinez', '35', '1992-03-01', 'F', '2022-03-01','A019'),
			   ('020', 'Admin', 'Rajesh', 'Sharma', '45', '1976-07-03', 'M', '2018-05-01','A020'),
			   ('021', 'Vice Principal', 'Sarika', 'Gupta', '41', '1980-11-01', 'F', '2019-07-01','A021'),
			   ('022', 'Teacher', 'Amit', 'Verma', '38', '1983-05-01', 'M', '2020-09-01','A022'),
			   ('023', 'Teacher', 'Neha', 'Singh', '35', '1986-10-01', 'F', '2021-11-01','A023'),
			   ('024', 'Teacher', 'Sachin', 'Chauhan', '32', '1989-01-01', 'M', '2022-01-01','A024'),
			   ('025', 'Teacher', 'Anjali', 'Rai', '29', '1992-03-01', 'F', '2022-03-01','A025'),
			   ('026', 'Teacher', 'Vikas', 'Patel', '26', '1995-05-01', 'M', '2022-05-01','A026'),
			   ('027', 'Teacher', 'Shivani', 'Jain', '23', '1998-07-01', 'F', '2022-07-01','A027'),
			   ('028', 'Teacher', 'Preeti', 'Bhatnagar', '20', '2001-09-01', 'F', '2022-09-01','A028'),
			   ('029', 'Teacher', 'Rohan', 'Mehra', '35', '1986-01-01', 'M', '2022-11-01','A029'),
			   ('030', 'Teacher', 'Aditya', 'Kapoor', '32', '1989-03-01', 'M', '2022-01-01','A030');
      
	


select * from Address_Table;
select * from Staff_Table where Staff_type = 'Admin' order by JOin_date;
