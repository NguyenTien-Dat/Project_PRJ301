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
import java.util.Vector;
import model.Page;
import model.ProductCart;
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
    
    public ProductCart CartbyID(int id) {
        ProductCart cart = new ProductCart();
        String sql = "select ProductID, [Imagine] ,ProductName,Price from Products where ProductID=" + id;
        ResultSet rs = getData(sql);
        try {
            while (rs.next()) {
                int idC = rs.getInt(1);
                String ima = rs.getString(2);
                String name = rs.getString(3);
                Double price = rs.getDouble(4);
                cart = new ProductCart(idC, ima, name, price, 0, 0);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cart;
    }
    
    public Vector<Products> SearchBYName(String name ){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products\n" +
                    "where ProductName like '%"+name+"%'";
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
    
    public Vector<Products> SortBYName(){
        Vector<Products> vector= new Vector<Products>();
        String sql="  select * from Products\n" +
                    "  order by ProductName";
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
    
    public Vector<Products> SortBYPrice(){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products\n" +
                    "  order by Price";
        ResultSet rs =getData(sql);
        try {
            while(rs.next()){
                int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String name = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(9);

                Products pro = new Products(pId, subid, cateid, name, year, price, Imagine, Description, Quantity, Discontinued);
                vector.add(pro);
            }
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return vector;
    }
    
    public Vector<Products> SortBYYear(){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products\n" +
                    "  order by [YEAR] desc";
        ResultSet rs =getData(sql);
        try {
            while(rs.next()){
                int pId = rs.getInt("ProductID");
                int subid = rs.getInt(2);
                int cateid = rs.getInt(3);
                String name = rs.getString(4);
                int year = rs.getInt(5);
                float price = rs.getFloat(6);
                String Imagine = rs.getString(7);
                String Description = rs.getString(8);
                int Quantity = rs.getInt(9);
                int Discontinued = rs.getInt(9);

                Products pro = new Products(pId, subid, cateid, name, year, price, Imagine, Description, Quantity, Discontinued);
                vector.add(pro);
            }
        } catch (SQLException ex) {
           ex.printStackTrace();
        }
        return vector;
    }
    
    public Vector<Products> SortBetweenPrice(String price1, String price2 ){
        Vector<Products> vector= new Vector<Products>();
        String sql="select * from Products\n" +
                    "where Price between "+price1+" and "+price2+"\n" +
                    "order by Price";
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
    
    public int removeProduct(int id) {
        int n = 0;
        String sql = "delete from Products where ProductID=" + id;
        String check = " select * from Products" + "where " + id + " in(select distinct " + id + " from [Order Details]";
        try {
            Statement state = conn.createStatement();
            n = state.executeUpdate(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public int updateProducts(Products pro) {
        int n = 0;
        String sql = "UPDATE [Project].[dbo].[Products]\n"
                + "   SET [SupplierID]=?,[CategoryID]=?,[ProductName] =?,[Year] =?,"
                + "[Price] = ?,[Imagine] = ?,[Description] =?,[Quantity] = ?,[Discontinued] = ?\n"
                + " WHERE  ProductID = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, pro.getSupplierID());
            pre.setInt(2, pro.getCategoryID());
            pre.setString(3, pro.getProductName());
            pre.setInt(4, pro.getYear());
            pre.setFloat(5, pro.getPrice());
            pre.setString(6, pro.getImagine());
            pre.setString(7, pro.getDescription());
            pre.setInt(8, pro.getQuantity());
            pre.setInt(9, pro.getDiscontinued());
            pre.setInt(10, pro.getProductID());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }
    
    public int addProduct(Products pr) {
        int n = 0;
        String sql = "INSERT INTO [Project].[dbo].[Products]\n"
                + "           ([SupplierID],[CategoryID],[ProductName],[Year],[Price],[Imagine],[Description],[Quantity],[Discontinued])\n"
                + "    VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, pr.getSupplierID());
            pre.setInt(2, pr.getCategoryID());
            pre.setString(3, pr.getProductName());
            pre.setInt(4, pr.getYear());
            pre.setFloat(5, pr.getPrice());
            pre.setString(6, pr.getImagine());
            pre.setString(7, pr.getDescription());
            pre.setInt(8, pr.getQuantity());
            pre.setInt(9, pr.getDiscontinued());
            n = pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return n;
    }

    public static void main(String[] args) {
        DAOProducts dao = new DAOProducts();
        Vector<Page> vetor = dao.getByPage(2);
        for (Page p : vetor) {
            System.out.println(p);
        }
    }

}
