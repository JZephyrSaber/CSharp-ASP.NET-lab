use web_project
create table stu_infor(
    sno nvarchar(10) primary key ,
    sname nchar(10) null ,
    sgender varchar(4) not null ,
    sage int not null ,
    smajor nchar(10) null
)
