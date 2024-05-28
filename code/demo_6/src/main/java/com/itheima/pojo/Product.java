package com.itheima.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private Integer pid;
    private String productName; // 商品名
    private String productDesc; // 商品描述
    private String productCat;  // 商品类别 productCategory
    private Integer productCount;   // 商品数量
}
