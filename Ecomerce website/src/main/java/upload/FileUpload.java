package upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import static javax.management.remote.JMXConnectorFactory.connect;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import static upload.FileUpload.connect;

@MultipartConfig(
        fileSizeThreshold = 1024*1024 ,
        maxFileSize = 1024*1024*10,
        maxRequestSize = 1024*1024*11
)
public class FileUpload extends HttpServlet {
 static String DB = "DBase/stocks";
 static Connection connect;
 static Statement smt ;
   @Override
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws 
        ServletException,IOException{

   
            PrintWriter out=res.getWriter();
       
            Part part= req.getPart("file");
            String name=req.getParameter("name"),
                   desc=req.getParameter("description");
            int price=Integer.parseInt(req.getParameter("price")),
                rating=Integer.parseInt(req.getParameter("rate"));
            String fileName= part.getSubmittedFileName();
//            String path=getServletContext().getRealPath("/files"+File.separator+fileName);
            String path= System.getProperty("user.dir")+"\\Backup\\" + fileName;
            File f=new File(path);
            f.getParentFile().mkdir();

//            C:\Program Files\Apache Software Foundation\Tomcat 9.0\bin\Backup\
            part.write(path);
//            
            out.println(path);
            connect();
            create("insert into products values(3,'"+name+"','"+path+"','"+price+"','"+rating+"','"+desc+"')");
            closed();

}
public static  void connect(){
        try {
            Class.forName("org.sqlite.JDBC");
           
            File f = new File(DB);
            f.getParentFile().mkdir();
            connect = DriverManager.getConnection("jdbc:sqlite:" + DB + ".db");
            smt = connect.createStatement();
        }
        catch (ClassNotFoundException | SQLException e){
            System.out.println("error connecting");
        }
    }

 private  void create(String query){
        try {smt.execute(query);}
        catch (SQLException sql){System.out.println("Table Not Created"+sql);}
    }

public void closed(){
try{
    smt.close();
    connect.close();
}catch(SQLException e){

}}

}
