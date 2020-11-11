package service;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService  implements IProductService{
    Connection connection = DBConnection.getConnection();
    private static String SEARCH ="select  proId, name, price, quantity, color, cateName from product join category c on c.cateId = product.cateId where name like '%_
    private static String DELETE = "delete from product where proId=?";
    private static String EDIT = "update product set name =?,price=?,quantity=?,color=?,description=?,cateId=? where proId=? ";
    private static String FINDALL = "select  proId, name, price, quantity, color, cateName from product join category c on c.cateId = product.cateId;";
    @Override
    public void add(Product product) {

    }

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        try {
            Statement st = connection.createStatement();
            ResultSet resultSet= st.executeQuery(FINDALL);
            while (resultSet.next()){
                int id = resultSet.getInt("proId");
                String name = resultSet.getString("name");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String color = resultSet.getString("color");
                String cateName =resultSet.getString("cateName");
                Product product = new Product(id,name,price,quantity,color,cateName);
                products.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> findByName(String name) {

        return null;
    }

    @Override
    public void edit(int id, Product product) {
        try {
            PreparedStatement ps= connection.prepareStatement(EDIT);
            ps.setString(1, product.getName());
            ps.setDouble(2,product.getPrice());
            ps.setInt(3,product.getQuantity());
            ps.setString(4, product.getColor());
            ps.setString(5, product.getDescription());
            ps.setInt(6,product.getCategory());
            ps.setInt(7,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void delete(int id) {
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE);
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Product findById(int id) {
        Product product= null;
        String sql = "select name,price,quantity,color,description,cateid from products where id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs= ps.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int cateId = rs.getInt("cateId");
                product = new Product(id,name,price,quantity,color,description,cateId);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return product;
    }
}
