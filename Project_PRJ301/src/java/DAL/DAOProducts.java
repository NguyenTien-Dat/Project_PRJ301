/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import model.Page;
import model.Products;

/**
 *
 * @author MSI_PRO
 */
public class DAOProducts extends ConnectDB {

    public void listAllProduct() {
        String sql = "select * from Products";
        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String pname = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(10);

                Products pro = new Products(pId, subid, cateid, pname, year, price, Imagine, Description, Quantity, Discontinued);
                System.out.println(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public Vector<Products> listAllProduct(String sql) {
        Vector<Products> vector = new Vector<Products>();
        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                int pId = rs.getInt(1);
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String pname = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(10);

                Products pro = new Products(pId, subid, cateid, pname, year, price, Imagine, Description, Quantity, Discontinued);
                System.out.println(pro);
                vector.add(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public int Page() {
        int n = 0;
        String sql = "SELECT COUNT(*) from Products";
        try {
            int totalPage = 0;
            int countPage = 0;
            PreparedStatement pre = conn.prepareStatement(sql);
            ResultSet rs = getData(sql);
            while (rs.next()) {
                totalPage = rs.getInt(1);
                countPage = totalPage / 6;
                if (totalPage % 6 != 0) {
                    countPage++;
                }
                return countPage;
            }
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public Vector<Page> getByPage(int n) {
        Vector<Page> vector = new Vector<Page>();
        int begin = 1;
        int end = 6;
        for (int i = 2; i <=n; i++) {
                begin+=6;
                end+=6;
        }
        String sql = "WITH My AS\n"
                + "(\n"
                + "    SELECT ProductID,ProductName,Imagine,Price, ROW_NUMBER() OVER (ORDER BY ProductID) AS RowNum\n"
                + "    FROM Products\n"
                + ")\n"
                + "SELECT * \n"
                + "FROM My\n"
                + "WHERE RowNum BETWEEN "+begin+ " AND " +end;
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                int pid = rs.getInt(1);
                String pname = rs.getString(2);
                String img = rs.getString(3);
                float price = rs.getFloat(4);
                int row = rs.getInt(5);
                Page pro = new Page(pid, pname, img, price, row);
                vector.add(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return vector;
    }

    public void TopQuan() {
        String sql = "SELECT TOP 6 * FROM Products\n"
                + "order by Quantity DESC";
        try {
            ResultSet rs = getData(sql);
            while (rs.next()) {
                int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String pname = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(9);

                Products pro = new Products(pId, subid, cateid, pname, year, price, Imagine, Description, Quantity, Discontinued);
                System.out.println(pro);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public Vector<Products> SelectbyID(int id ){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products where ProductID="+id;
        ResultSet rs =getData(sql);
        try {
            while(rs.next()){
                 int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String pname = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(9);

                Products pro = new Products(pId, subid, cateid, pname, year, price, Imagine, Description, Quantity, Discontinued);
                vector.add(pro);
            }
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return vector;
    }
 public Vector<Products> SelectbyCate(int cate ){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products where CategoryID="+cate;
        ResultSet rs =getData(sql);
        try {
            while(rs.next()){
                 int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String pname = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(9);

                Products pro = new Products(pId, subid, cateid, pname, year, price, Imagine, Description, Quantity, Discontinued);
                vector.add(pro);
            }
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return vector;
    }

    public static void main(String[] args) {
        DAOProducts dao = new DAOProducts();
        Vector<Page> vetor = dao.getByPage(2);
        for (Page p : vetor) {
            System.out.println(p);
        }
    }

}
