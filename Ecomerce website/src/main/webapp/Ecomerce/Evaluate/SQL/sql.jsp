

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! static Connection connect;%>
<%! static Statement smt ;
 static String DB = "DBase/stocks";%>
<%!
 
 public static  void connect(){
        try {
            Class.forName("org.sqlite.JDBC");
           
            File f = new File(DB);
            f.getParentFile().mkdir();
            connect = DriverManager.getConnection("jdbc:sqlite:" + DB + ".db");
            smt = connect.createStatement();
        }
        catch (Exception e){
            System.out.println("error connecting");
        }
    }
 private  void create(String query){
        try {smt.execute(query);}
        catch (SQLException sql){System.out.println("Table Not Created"+sql);}
    }
public void drop(String query){
    try{smt.execute(query);}
    catch (SQLException sql){System.out.println(" not Deleted"+sql);}
}
   public  ResultSet getAllUser(){
        ResultSet resultSet = null;
        try {resultSet=smt.executeQuery("select * from users");
        }
        catch (SQLException sqlException){System.out.println("Query select failed"+sqlException);}
        return resultSet;
    }
 public  ResultSet getAllProduct(){
        ResultSet resultSet = null;
        try {resultSet=smt.executeQuery("select * from products");
        }
        catch (SQLException sqlException){System.out.println("Query select failed"+sqlException);}
        return resultSet;
    }
public  ResultSet login(String email,String pwd){
        ResultSet resultSet = null;
        try {resultSet=smt.executeQuery("select * from users where email='"+email+"'");
          
            
        }
        catch (SQLException sqlException){System.out.println("Query select failed"+sqlException);}
        return resultSet;
    }

public void closed(){
try{
    smt.close();
    connect.close();
}catch(SQLException e){

}}

 public static String rupeeFormat(String value){
        if(value.length()>0) {
            value = value.replace(",", "");
            char lastDigit = value.charAt(value.length() - 1);
            StringBuilder result = new StringBuilder();
            int len = value.length() - 1;
            int nDigits = 0;

            for (int i = len - 1; i >= 0; i--) {
                result.insert(0, value.charAt(i));
                nDigits++;
                if (((nDigits % 2) == 0) && (i > 0)) {
                    result.insert(0, ",");
                }

            }
            return (result.toString() +lastDigit);
        }
        else return "0";

    }
%>
