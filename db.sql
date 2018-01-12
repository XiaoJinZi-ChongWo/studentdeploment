create table department (depart_id varchar(10) PRIMARY KEY,
                         depart_name varchar(50));



create table classes (classes_id varchar(10) PRIMARY KEY,
                      classes_year integer,
                      classes_describe varchar2(50),
                      depart_id varchar(10) references department(depart_id)
                      );
                      
                      
                      
create table students (students_id character(10) PRIMARY KEY,
                      students_name varchar2(10),
                      students_password varchar2(10),
                      students_sex  character(3),
                      students_math  integer,
                      students_english integer,   
                      depart_id varchar(10) references department(depart_id),
                      classes_id varchar(10) references classes(classes_id)
                  );
                  
create sequence dpt_sequence increment by 1 start with 1 nomaxvalue nocycle nocache;

create trigger dpt_trig before 
 insert on DEPARTMENT for each row when (new.depart_id is null)
begin
 select dpt_sequence.nextval into:new.depart_id from dual;
 end;
