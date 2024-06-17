package com.itheima.service.impl;

import com.itheima.pojo.Product;
import com.itheima.dao.ProductDao;
import com.itheima.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ProductServiceImpl implements ProductService{
    @Resource
    private ProductDao productDao;
    @Override
    public int save(Product product) {
        int flag = productDao.insertProduct(product);
        return flag;
    }

    @Override
    public int delete(int pid) {
        int flag = productDao.deleteById(pid);
        return flag;
    }

    @Override
    public int update(Product product) {
        int flag = productDao.updateProduct(product);
        return flag;
    }

    @Override
    public Product getById(int pid) {
        Product product = productDao.selectById(pid);
        return product;
    }

    @Override
    public List<Product> getAll() {

        List<Product> productList = productDao.selectAll();
        return productList;
    }

    @Override
    public List<Product> getByName(String productName) {
        List<Product> productList = productDao.selectProductsByName(productName);
        return productList;
    }
}
