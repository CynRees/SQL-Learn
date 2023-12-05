## SQL Queries And Advanced Concepts
This repository contains SQL queries for learing purposes.

## Table variations and set operators
SELECT A1,A2,...,An
FROM R1,R2,...,Rn -table variables
WHERE Condition
Set operators  - Union, Intersect, Except
Example;
# College admission database
-College(cName.state,enrollment)
-Student(sID,sName,GPA,sizeHS)
-Apply(sID,cName,major,decision)
# Selecting a bunch of information from the database
-SELECT S.sID,sName, GPA, A.cName, enrollment
-FROM Student S, College C, Apply A
-WHERE A.sID = S.sID and A.cName = C.cName;
# Getting students with the same GPA
-Columns to be returned; sID,sName, GPA
-SELECT S1.sID, S1.sName, S1.GPA, S2.sID, S2.sName, S2.GPA - have two instances
-FROM Student S1, Student S2
-WHERE S1.GPA = S2.GPA; ~returns every student with the same GPA but we want different students with the sme GPA,Therefore;
-WHERE S1.GPA = S2.GPA and S1.sID <> S1.sID; ~use not equal<> or Less than < depending on the results you need
