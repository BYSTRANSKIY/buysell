package com.example.buysell.services;

import com.example.buysell.models.Product;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    Product getProduct(Long id);
    void saveProduct(Product product);
    void deleteProduct(Long id);

}
