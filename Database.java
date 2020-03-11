/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author REUBEN
 */
public class Database 
        
{
    
    
 String dbusername = "root"; //this is a default user name
 String dbpassword ="" ; //do not leave any blank space here
 String dburl = "jdbc:mysql://localhost:3306/bankaccounts";
// 3306 is the default port numner,travelagency is our database name
 String dbdriver = "com.mysql.jdbc.Driver";
 //you can find this driver class,in the libraries folder of you project.
 // libraries>>com.mysql.jdbc(package)>>Driver.class
 Connection dbcon;
   

 void dbConnect() throws ClassNotFoundException, SQLException //exception will be generated ,in case the driver is not found

 {
 // Class.forName("dbdriver");

 //now we will cineect he driver to the database using DriverManager class,
 //import java.sql.connection for this

 dbcon = DriverManager.getConnection(dburl, dbusername, dbpassword);//we have creatd these variables earlier

 }

 void dbclose() throws SQLException//will be used for closing database connection
 {
 dbcon.close();
 }
}