drop table City_rain if exists;

create table City_rain (id bigint identity primary key, time TIMESTAMP , city varchar(20) ,
                        mount REAL);
                        
