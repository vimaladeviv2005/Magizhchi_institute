create table department(dept_id int,dept_name varchar)
create table employee1(emp_id int,emp_name varchar,salary bigint)

--function creation
create or replace function inserted(dep_id int,dep_name varchar,empp_id int,empp_name varchar,salry bigint) 
returns varchar as $$
declare
rs varchar;
begin
insert into department values(dep_id ,dep_name );
insert into employee1 values(empp_id ,empp_name ,salry );
rs:='insert';
return rs;
end;
$$ language plpgsql ;

--insert the value
select inserted(1,'it',101,'vimala',10000)

select * from employee1;
select * from department


--update 

--function creation
create or replace function updated(dep_id int,dep_name varchar,p_emp_id int,p_emp_name varchar) 
returns varchar as $$
declare
rs varchar;
begin
update department set dept_name=dep_name where dept_id=dep_id;
update  employee1 set emp_name=p_emp_name where emp_id=p_emp_id;
rs:='update the data';
return rs;
end;
$$ language plpgsql ;


--update quer
select updated(1,'computer science',103,'lakshmi');

select * from employee1
select * from department


--delete query
create or replace function deleted(dep_id int,dep_name varchar,p_emp_id int,p_emp_name varchar) 
returns varchar as $$
declare
rs varchar;
begin
delete from department where dept_id=dep_id;
delete from employee1 where emp_id=p_emp_id;
rs:='delete the data';
return rs;
end;
$$ language plpgsql ;

select deleted(1,'computer science',103,'lakshmi');

select * from department
select * from employee1



