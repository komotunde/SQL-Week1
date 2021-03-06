# Create the table. Each row should minimally include the person's name, supervisor, and job title. Using ID columns is encouraged.

create table TESTING_ORGANIZATION_CHART (
EMPLOYEE_ID int PRIMARY KEY,
EMPLOYEE_NAME varchar(25) NOT NULL,
EMPLOYEE_TITLE varchar(25) NOT NULL,
SUPERVISOR_ID int
);

# Populate the table with a few sample rows

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (501,'DERECK WALCOTT', 'DIRECTOR', 500);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (502,'MAKETA BARBER', 'ASSISTANT DIRECTOR', 501);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (503, 'DANIELLE KING', 'COORDINATOR',502);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (504,'PAULINE GACANJA', 'COORDINATOR', 502);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (505,'DANIELLE ALVAREZ', 'COORDINATOR', 502);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (506,'MYRTLE TURTLE', 'PROCTOR', 502);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (507,'WALLACE COX', 'PROCTOR', 502);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (500,'EDWIN WONG', 'DEAN OF ACADEMIC AFFAIRS', 495);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (495,'KAREN WILKES', 'PRESIDENT', null);

insert into TESTING_ORGANIZATION_CHART(EMPLOYEE_ID, EMPLOYEE_NAME,EMPLOYEE_TITLE, SUPERVISOR_ID)
values (508,'MARTHA JENSEN', 'ASSISTANT TO DEAN', 500);


# provide a single select statement that displays the information in the table, showin who reports to whom.

SELECT E.EMPLOYEE_ID AS 'EMPLOYEE ID', E.EMPlOYEE_NAME AS 'NAME', E.EMPLOYEE_TITLE AS 'TITLE', S.EMPLOYEE_NAME AS 'SUPERVISOR', S.EMPLOYEE_ID AS 'SUPERVISOR ID'
FROM TESTING_ORGANIZATION_CHART E
LEFT JOIN TESTING_ORGANIZATION_CHART S
ON E.SUPERVISOR_ID= S.EMPLOYEE_ID
ORDER BY E.SUPERVISOR_ID;



