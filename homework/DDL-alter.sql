create table employee(id serial primary key,name varchar(50) not null, age int check(age>=21),
department varchar(50),hire_date date default current_date);

select * from employee;
select* from staff_details;

/*adding column*/
alter table employee add column salary numeric default 50000;

insert into employee (name,age,department) values ('vimala',21,'incharge in computer');
insert into employee (name,age,department) values ('keerthana',22,'computer clerk');
insert into employee (name,age,department) values ('lakshmi',28,'bill clerk');
insert into employee (name,age,department) values ('marjana',23,'incharge of server');
insert into employee (name,age,department) values ('charlatha',25,'incharge in computer');

insert into staff_details (name,age,department) values ('mithra',24,'iq excuter');
insert into staff_details (name,age,department) values ('shalni',29,'operator');
insert into staff_details (name,age,department,monthly_salary) values ('veda',29,'operator',150000);
insert into staff_details (name,age,department,monthly_salary) values ('pavithra',25,'operator',15000);


/*dropping column*/
alter table employee drop column salary;

/*modifying column*/
/*changing type*/
alter table employee alter column age type smallint;

/*changing default value*/
alter table employee add column salarys  numeric default 50000;

alter table employee alter column salarys set default 60000;
alter table staff_details alter column monthly_salary set default 60000;

/*removing default value*/
alter table employee alter column salarys drop default;

/*renaming a cloumn*/
alter table employee rename column salarys to monthly_salary;

/*renaming a table*/
alter table employee rename to staff_details;

/*Adding or dropping constraints*/
alter table staff_details add constraint monthly_salary check(monthly_salary>0);
alter table staff_details drop constraint monthly_salary;