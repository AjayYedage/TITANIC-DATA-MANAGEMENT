use etlhive;
/*Select all columns for all passengers in the
Titanic dataset*/
select * from titanic;

/*Display the number of passengers in each class
(1st, 2nd, 3rd).*/
select Pclass,count(*) from titanic group by Pclass order by Pclass;

/*Find the number of male and female
passengers.*/
select sex,count(*) from titanic group by sex;

/*Display the names of passengers who survived.*/
select Name from titanic where Survived='Survived';

/*Find the average age of passengers.*/
select avg(age) from titanic;

/*List the names and ages of passengers who
were younger than 18.*/
select name,age from titanic where age>18;

/*Display the number of passengers in each
embarkation port (C, Q, S).*/
select Embarked,count(*) from titanic group by Embarked;

/*Find the highest fare paid by any passenger.*/
select max(fare) from titanic ;

/*List the average age of passengers for each
class.*/
select Pclass,avg(age) from titanic group by Pclass;

/* Display the passenger names and ages for
those who survived and were in 1st class.*/
select name,age from titanic where Survived='Survived' and pclass=1;

/* Find the number of passengers who paid more
than 50 for their ticket.*/
select count(*) from titanic where fare>50;

/*List the names of passengers who did not
survive and were in 3rd class.*/
select name from titanic where Survived='died' and pclass=3;

/*Find the number of passengers with missing
values in the "Age" column.*/
select count(*) from titanic where Age is null;

/*Display the passenger names and ages for
those who embarked at port 'S' and survived.*/
select name ,age from titanic where Survived='Survived' and Embarked='s';

/*Calculate the total number of passengers on
board.*/
select count(*) from titanic;

/* List the average fare for each class.*/
select pclass ,avg(fare) from titanic group by pclass;

/*isplay the passenger names and ages for
those with a known age and a fare greater than
100.*/
select name, age from titanic where age is not null and fare > 100;

/*Find the percentage of passengers who
survived.*/
select count(survived)*100/(select count(*) from titanic) from titanic where Survived='Survived';

/*List the names of passengers who were in 2nd
class and had a fare less than 20.*/
select Name from titanic where Pclass=2 and fare<20;

/*Display the passenger names and ages for
those who did not survive and were in 1st class.*/
select name, age from titanic where Survived='died' and Pclass=1;

/*Find the number of passengers for each
combination of class and gender.*/
select pclass,sex, count(*) from titanic group by pclass,sex order by pclass;

/*List the names of passengers who survived
and were in 3rd class with an age less than 20.*/
select name,age,pclass from titanic where Survived='Survived' and pclass=3 and age<20;

/*Display the passenger names for those with
the name starting with 'Mr.'*/
select name from titanic where name like 'Mr.%';

/*Find the average age of male and female
passengers.*/
select sex,avg(age) from titanic group by sex;

/*List the names of passengers who paid the
highest fare.*/
select name,fare from titanic where fare=(select max(fare) from titanic);

/*Find the number of passengers for each
embarkation port and class.*/
select embarked,pclass ,count(*)  from titanic group by embarked,Pclass;

/*Display the passenger names and ages for
those who survived and paid more than 200 for
their ticket.*/
select name,age from titanic where Survived='Survived' and fare>200;

/*Find the average age of passengers who
survived and those who did not.*/
select survived, avg(age) from titanic group by Survived;

/*List the names of passengers who were in 1st
class and had an age greater than 50.*/
select name from titanic where pclass=1 and age>50;

/*Display the passenger names for those with
the name ending with 'sson'.*/
select name from titanic where name like '%sson';

