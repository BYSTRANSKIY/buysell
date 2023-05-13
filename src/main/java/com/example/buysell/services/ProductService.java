package com.example.buysell.services;

import com.example.buysell.models.Product;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ProductService {
    List<Product> getProducts(String title);
    Product getProduct(Long id);
    void saveProduct(Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException;
    void deleteProduct(Long id);

}
