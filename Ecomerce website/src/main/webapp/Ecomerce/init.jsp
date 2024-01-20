<%@include file="Evaluate/SQL/sql.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 connect();
 create("create table users (user_id integer primary key autoincrement,uname varchar(30) not null unique,pwd varchar(30) not null,email varchar(100) not null)");
 create("create table products(user_id integer not null,pname varchar(30) not null ,file varchar(25)not null,price integer not null unique,rating integer,Description varchar(120) )");
 closed();
%>
