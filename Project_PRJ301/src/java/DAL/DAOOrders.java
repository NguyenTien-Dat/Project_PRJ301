/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Orders;

/**
 *
 * @author MSI_PRO
 */
public class DAOOrders extends ConnectDB{
    public int addOrder(Orders or) {
        String sql = "INSERT INTO [Project].[dbo].[Orders] ([CustomerID],[CustomerName],[Phone Number],[Gmail],[Address],[Total],[status]) VALUES(?,?,?,?,?,?,?)";
        try {
            //        create statement: execute sql
            PreparedStatement pre = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); 
            pre.setInt(1, or.getCustomerID());
            pre.setString(2, or.getCustomerName());
            pre.setInt(3, or.getPhone());
            pre.setString(4, or.getGmail());
            pre.setString(5, or.getAddress());
            pre.setDouble(6, or.getTotal());
            pre.setInt(7, or.getStatus());
            pre.executeUpdate();
            ResultSet rs = pre.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}
