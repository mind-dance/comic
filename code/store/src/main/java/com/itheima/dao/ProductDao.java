package com.itheima.dao;

import com.itheima.pojo.Product;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ProductDao {
    /**
     * 新增商品
     * @param product
     * @return 1 成功；0 失败
     */
    @Insert("insert into t_product(p_name,p_desc,p_cat,p_count ) " +
            "values (#{productName},#{productDesc},#{productCat},#{productCount}) ")
    int insertProduct(Product product);

    /**
     * 根据 pid 删除商品
     * @param pid
     * @return 1 成功；0 失败
     */
    @Delete("delete from t_product where pid = #{pid}")
    int deleteById(int pid);

    /**
     * 修改商品信息
     * @param product
     * @return 1 成功；0 失败
     */
    @Update("update t_product set p_name=#{productName},p_desc=#{productDesc},p_cat=#{productCat},p_count=#{productCount} where pid=#{pid}")
    int updateProduct(Product product);


    /**
     * 根据 pid 查找商品
     * @param pid
     * @return 商品对象
     */
    @Select("select * from t_product where pid = #{pid} ")
    @Results(id = "selectIdMap" ,value = {
            @Result(column = "p_name",property = "productName"),
            @Result(column = "p_desc",property = "productDesc"),
            @Result(column = "p_cat",property = "productCat"),
            @Result(column = "p_count",property = "productCount")
    })
    Product selectById(int pid);

    /**
     * 查询所有商品
     * @return 商品对象列表
     */
    @Select("select * from t_product")
    @Results(id = "selectAll", value = {
            @Result(column = "p_name",property = "productName"),
            @Result(column = "p_desc",property = "productDesc"),
            @Result(column = "p_cat",property = "productCat"),
            @Result(column = "p_count",property = "productCount")
    })
    List<Product> selectAll();

    /**
     * 根据商品名查找商品，支持模糊搜索
     * @param productName
     * @return 商品对象列表
     */
    @Select("select * from t_product where p_name like concat('%', #{productName}, '%')")
    @Results(id = "selectNameMap", value = {
            @Result(column = "p_name",property = "productName"),
            @Result(column = "p_desc",property = "productDesc"),
            @Result(column = "p_cat",property = "productCat"),
            @Result(column = "p_count",property = "productCount")
    })
    List<Product> selectProductsByName(String productName);
}
