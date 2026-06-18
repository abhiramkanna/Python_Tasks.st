--creating doctors table
create table doctors(doc_id serial primary key,doc_name varchar(20),doc_specialist varchar(20));
--creating patients
create table patients(pat_id serial primary key,pat_name varchar(20),age int not null,gender varchar(10) not null,phone varchar(15));
--creating appointments
create table appointment(app_id serial primary key,pat_id int not null,doc_id int not null,app_date date not null,status varchar(10),foreign key (pat_id)references patients(pat_id),foreign key (doc_id)references doctors(doc_id));
--inserting values doctors
insert into doctors(doc_id,doc_name,doc_specialist)
values(101,'Dr.Raju','cardiologist'),(102,'Dr.Reddy','neurologist'),(103,'Dr.Rao','dermatologist');
--inserting into patients
insert into patients(pat_id,pat_name,age,gender,phone)
values(21,'ravi',30,'male','9502107532'),(16,'priya',25,'female','6301287542'),(50,'suresh',40,'male','99660904555'),(10,'rohan',23,'male','9550210752'),(111,'anjali',28,'female','7642998520');
--inserting into appointments
insert into appointment(app_id,pat_id,doc_id,app_date,status)
values
(1,21,101,'2025-07-21','Done'),
(2,21,102,'2026-06-20','Pending'),
(3,16,103,'2026-05-14','Cancel'),
(4,50,101,'2026-07-15','Done'),
(5,10,102,'2026-07-18','Pending');
--returing the tables
--display all doctors
select * from doctors;
--display all patients
select * from patients;
select * from appointment;
--Writing the queries
--find appointments for a specific doctor
select * from appointment where doc_id=102;
--count appointments per doctor
select doc_id,count(*) from appointment
group by doc_id;
--total billing amount
alter table appointment
add column bill_amount decimal(10,2);
update appointment set bill_amount = 500 where app_id = 1;
update appointment set bill_amount = 800 where app_id = 2;
update appointment set bill_amount = 1000 where app_id = 3;
update appointment set bill_amount = 700 where app_id = 4;
update appointment set bill_amount = 1200 where app_id = 5;
select sum(bill_amount) from appointment;
--inner join patients and doctor
select p.pat_id,a.app_id,a.app_date,a.status
from patients p inner join appointment a on p.pat_id=p.pat_id;
--left joins doctors and appointments
select d.doc_id,d.doc_name,a.app_id,a.status
from doctors d left join appointment a on d.doc_id=a.doc_id;
--patients more then one appointment
select pat_id,count(*) from appointment
group by pat_id having count(*) > 1;
--highest bill amount
select max(bill_amount) from appointment;
--doctors with max appointments
select doc_id, count(*) from appointment
group by doc_id having count(*)>1;
