/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Employees;

/**
 *
 * @author MSI_PRO
 */
public class DAOEmployees  extends ConnectDB{
    public Employees loginE(String user, String pass) {
        String sql = "select * from Employees where username='" + user + "' and password='" + pass + "'";
        ResultSet rs = getData(sql);
        Employees emp= new Employees();
        try {
            while (rs.next()) {
                int empID = rs.getInt(1);
                String Name = rs.getString(2);
                String Title = rs.getString(3);
                String City = rs.getString(4);
                int Report = rs.getInt(5);
                String us=rs.getString(6);
                String pas=rs.getString(7);
                emp=new Employees(empID, Name, Title, City, Report, us, pas);
                
            }
        } catch (SQLException ex) {
                ex.printStackTrace();
        }
        return emp;
    }
}
