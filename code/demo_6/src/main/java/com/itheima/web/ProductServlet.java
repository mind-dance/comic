package com.itheima.web;

import com.itheima.config.SpringConfig;
import com.itheima.pojo.Product;
import com.itheima.service.ProductService;
import com.itheima.service.impl.ProductServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet({"/product/add", "/product/delete", "/product/update", "/product/getById", "/product/getAll"})
public class ProductServlet extends BaseServlet {
    ApplicationContext ctx=new AnnotationConfigApplicationContext(SpringConfig.class);
    private ProductService productService = ctx.getBean(ProductService.class);

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String contextPath = req.getContextPath();
        // 模板方法
        String servletPath = req.getServletPath();
        System.out.println(contextPath + servletPath);
        if ("/product/add".equals(servletPath)) {
            add(req, resp);
        } else if ("/product/delete".equals(servletPath)) {
            delete(req, resp);
        } else if ("/product/update".equals(servletPath)) {
            update(req, resp);
        } else if ("/product/getById".equals(servletPath)) {
            getById(req, resp);
        } else if ("/product/getAll".equals(servletPath)) {
            getAll(req, resp);
        }
        // 执行完对应操作后出现打开商品管理页面
        resp.sendRedirect(contextPath + "/jsp/Manager_page_productList.jsp");
    }

    /**
     * 新增商品
     */
    public void add(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //1.获取参数,商品的id 名称 描述 类别 库存
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("p_name");
        String desc = request.getParameter("p_desc");
        String category = request.getParameter("p_cat");
        int count = Integer.parseInt(request.getParameter("p_count"));
        //2.调用productService 的方法进行进行将 商品入库
        Product product = new Product(id,name,desc,category,count);
        productService.save(product);
    }

    /**
     * 删除商品
     */
    public void delete(HttpServletRequest request,HttpServletResponse response) throws IOException {
        //1. 获取 需要删除参数的 请求id
        int id = Integer.parseInt(request.getParameter("id"));
        //2.  调用service 层的方法进行删除
        productService.delete(id);
    }

    /**
     * 更新商品
     * @param request
     * @param response
     * @throws IOException
     */
    public void update(HttpServletRequest request ,HttpServletResponse response) throws IOException {
        //1.获取参数,商品的id 名称 描述 类别 库存
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("p_name");
        String desc = request.getParameter("p_desc");
        String category = request.getParameter("p_cat");
        int count = Integer.parseInt(request.getParameter("p_count"));

        //2.调用productService 的方法进行进行将 更新商品
        productService.update(new Product(id,name,desc,category,count));
    }

    /**
     * 根据 id 查询商品
     */
    public void getById(HttpServletRequest request ,HttpServletResponse response)throws IOException{
        //1. 获取 需要删除参数的 请求id
        int id = Integer.parseInt(request.getParameter("id"));
        //2.  调用service 层的方法进行删除
        productService.getById(id);
    }
    /**
     * 获取全部的商品
     */
    public void getAll(HttpServletRequest request ,HttpServletResponse response) throws IOException, ServletException {
        // 获取所有商品数据
        List<Product> productList = productService.getAll();
        // 将商品列表放入request作用域中
        request.setAttribute("productList", productList);
    }
}


