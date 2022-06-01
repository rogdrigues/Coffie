/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.Connection;

/**
 *
 * @author phong
 */
public class Main {
    public static void main(String[] args) throws Exception{
        DBContext db = new DBContext();
        Connection connection = db.getConnection();
    
    }
}
