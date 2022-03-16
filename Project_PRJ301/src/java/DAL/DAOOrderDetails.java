/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.OrderDetails;

/**
 *
 * @author MSI_PRO
 */
public class DAOOrderDetails extends ConnectDB{
    public int addOrder(OrderDetails or) {
        int n=0;
        String sql = "INSERT INTO [Project].[dbo].[Order Details] ([OrderID],[ProductID],[UnitPrice],[Quantity],[Total]) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement pre= conn.prepareStatement(sql);
            pre.setInt(1, or.getOrderID());
            pre.setInt(2, or.getProductID());
            pre.setDouble(3, or.getUnitPrice());
            pre.setInt(4, or.getQuantity());
            pre.setDouble(5, or.getTotal());
            
            n=pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
}
}
