package service;

import model.Product;

import java.util.List;

public interface IProductService<T> {
    void add(Product product);
    List<Product> findAll();
    List<Product> findByName(String name);
    void edit(int id, Product product);
    void delete(int id);
    Product findById(int id);


}
