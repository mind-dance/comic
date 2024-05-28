package com.itheima.service;

import com.itheima.pojo.Product;

import java.util.List;

public interface ProductService {
    int save(Product product);

    int delete(int pid);

    int update(Product product);

    Product getById(int pid);

    List<Product> getAll();

    List<Product> getByName(String productName);
}
