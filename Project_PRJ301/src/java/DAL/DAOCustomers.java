/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customers;

/**
 *
 * @author MSI_PRO
 */
public class DAOCustomers extends ConnectDB {

    public Customers getAccount(String user, String pass) {
        String sql = "select*from Customers\n" +
        " where [user]='"+user+"' and [password]='"+pass+"'";
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                int id=rs.getInt(1);
                String cusName = rs.getString(2);
                String Country = rs.getString(3);
                String Gmail = rs.getString(4);
                String us = rs.getString(5);
                String pa = rs.getString(6);
               Customers cus=new Customers(id, cusName, Country, Gmail, us, pa);
                return cus;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
