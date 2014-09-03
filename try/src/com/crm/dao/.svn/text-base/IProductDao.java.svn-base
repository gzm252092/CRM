package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Product;

public interface IProductDao {
	/**
	 * 找到所有的商品
	 * @return List<Product>
	 */
	public List<Product> findall();
	/**
	 * 添加商品
	 * @param Product
	 * @return Serializable
	 */
	Serializable addProduct(Product Product);
	/**
	 * 修改商品信息
	 * @param Product
	 */
	public void modProduct(Product Product );
	/**
	 * 删除商品
	 * @param Productid
	 */
	public void delProduct(long Productid );
	/**
	 * 通过id找到产品
	 * @param Productid
	 * @return Product
	 */
	public Product getbyid(long Productid );
	/**
	 * 列出所有的产品
	 * @return List<Product>
	 */
	public List<Product> listPro();
}
