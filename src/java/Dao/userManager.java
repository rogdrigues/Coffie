/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.sql.*;
import Model.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author phong
 */
public class userManager {

    public static int saveUserSignIn(User user) {
        int status = 0;

        try {
            Connection connection = new DBContext().getConnection();
            PreparedStatement statement = connection.prepareStatement("insert into account (account, password, gender, phoneNumber, nickname) values(?, ?, ?, ?, ?)");
            statement.setNString(1, user.getAccount());
            statement.setNString(2, user.getPassword());
            statement.setString(3, user.getGender());
            statement.setInt(4, user.getPhoneNumber());
            statement.setNString(5, user.getNickname());
            status = statement.executeUpdate();
            connection.close();
        } catch (Exception sqlConnected) {
        }
        return status;
    }

    public static List<User> getAllAccount() {
        List<User> listAccount = new LinkedList<>();

        try {
            Connection connection = new DBContext().getConnection();
            PreparedStatement statement = connection.prepareStatement("select account, password, gender, phoneNumber, nickname from account");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                User user = new User();
                user.setAccount(result.getNString(1));
                user.setPassword(result.getNString(2));
                user.setGender(result.getString(3));
                user.setPhoneNumber(result.getInt(4));
                user.setAddress(result.getNString(5));
                user.setNickname(result.getNString(6));
                listAccount.add(user);
            }
            connection.close();
        } catch (Exception errorConnection) {
        }
        return listAccount;
    }

    public static User searchAccount(String account, String password) {
        User userAccount = new User();
        try {
            Connection connection = new DBContext().getConnection();
            PreparedStatement statement = connection.prepareStatement("select account, password, gender, phoneNumber, address, nickname from account where account = ? and password = ?");
            statement.setNString(1, account);
            statement.setNString(2, password);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                userAccount.setAccount(result.getNString(1));
                userAccount.setPassword(result.getNString(2));
                userAccount.setGender(result.getString(3));
                userAccount.setPhoneNumber(result.getInt(4));
                userAccount.setAddress(result.getNString(5));
                userAccount.setNickname(result.getNString(6));
            }
        } catch (Exception errorSQL) {
            userAccount = null;
        }
        return userAccount;
    }
}
