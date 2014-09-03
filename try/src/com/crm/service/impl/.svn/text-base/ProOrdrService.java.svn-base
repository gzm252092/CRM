package com.crm.service.impl;

import java.io.Serializable;

import java.util.ArrayList;

import java.util.Iterator;

import java.util.List;

import org.springframework.beans.BeanUtils;
import javax.persistence.criteria.Order;

import jcifs.dcerpc.msrpc.netdfs;


import com.crm.dao.IOrdrDao;
import com.crm.dao.IPlanDao;
import com.crm.dao.IProOrdrDao;
import com.crm.dao.IProductDao;
import com.crm.po.Client;
import com.crm.po.Ordr;
import com.crm.po.Pln;
import com.crm.po.ProOrdr;
import com.crm.po.Product;
import com.crm.service.IProOrdrService;
import com.crm.vo.ProductVo;
import com.crm.vo.ClientVo;
import com.crm.vo.OrdrVo;
import com.crm.vo.PlanVo;
import com.crm.vo.ProOrdreVo;


public class ProOrdrService implements IProOrdrService{

	private IProductDao productDao;	
	private IOrdrDao ordrDao;
	private IProOrdrDao proOrdrDao;
	
	
	public IProductDao getProductDao() {
		return productDao;
	}


	public IProOrdrDao getProOrdrDao() {
		return proOrdrDao;
	}


	public void setProOrdrDao(IProOrdrDao proOrdrDao) {
		this.proOrdrDao = proOrdrDao;
	}


	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}


	public IOrdrDao getOrdrDao() {
		return ordrDao;
	}


	public void setOrdrDao(IOrdrDao ordrDao) {
		this.ordrDao = ordrDao;
	}


	 public List<ProductVo> listPro() {
		return p2vp(productDao.listPro());
	}


	public ProductVo finProById(long id){		
		return p2vp(productDao.getbyid(id));
	}


	public OrdrVo findOrdrById(long id) {
		return p2v(ordrDao.getbyid(id));
	}


	public List<ProOrdreVo> findProByOrdrid(long id) {
		return p2vo(proOrdrDao.getByOrdrid(id));
	}


	public Serializable addOrdr(OrdrVo ordrvo) {
		Ordr ordr=new Ordr();
		Client client=new Client();
		BeanUtils.copyProperties(ordrvo.getCvo(),client);
		BeanUtils.copyProperties(ordrvo,ordr);
		ordr.setClient(client);
		return ordrDao.addOrdr(ordr);
	}
	

	
	private OrdrVo p2v(Ordr ordr) {
		OrdrVo oVo=new OrdrVo();
		ClientVo cvo=new ClientVo();
		try{
		BeanUtils.copyProperties(ordr, oVo);
		BeanUtils.copyProperties(ordr.getClient(), cvo);
		oVo.setCvo(cvo);
		return oVo;
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		return oVo;
	}

	private ProOrdreVo p2vo(ProOrdr proOrdr) {
		ProOrdreVo poVo=new ProOrdreVo();
		ProductVo pvo=new ProductVo();
		OrdrVo oVo=new OrdrVo();
		try{
		BeanUtils.copyProperties(proOrdr, poVo);
		BeanUtils.copyProperties(proOrdr.getProduct(), pvo);
		BeanUtils.copyProperties(proOrdr.getOrdr(), oVo);
		poVo.setOvo(oVo);
		poVo.setPvo(pvo);
		return poVo;
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		return poVo;
	}
	private List<ProOrdreVo> p2vo(List<ProOrdr> lops) {
		List<ProOrdreVo> lpovs = new ArrayList<ProOrdreVo>();
		for (Iterator iterator = lops.iterator(); iterator.hasNext();) {
			ProOrdr proOrdr = (ProOrdr) iterator.next();
			ProOrdreVo povo = p2vo(proOrdr);
			lpovs.add(povo);
		}
		return lpovs;
	}

	private ProductVo p2vp(Product product){
		ProductVo pVo=new ProductVo();
		try{
			BeanUtils.copyProperties(product, pVo);
			return pVo;
			}catch(Exception e){
				System.out.print(e.getMessage());
			}
			return pVo;
	}
	private List<ProductVo> p2vp(List<Product> lpps) {
		List<ProductVo> lpvs = new ArrayList<ProductVo>();
		for (Iterator iterator = lpps.iterator(); iterator.hasNext();) {
			Product ppo = (Product) iterator.next();
			ProductVo pvo = p2vp(ppo);
			lpvs.add(pvo);
		}
		return lpvs;
	}
	
	public Serializable addProOrdr(ProOrdreVo proOrdrvo) {
		ProOrdr proordr=new ProOrdr();
		Product product=new Product();
		Ordr ordr=new Ordr();
		BeanUtils.copyProperties(proOrdrvo.getPvo(),product );
		BeanUtils.copyProperties(proOrdrvo.getOvo(),ordr );
		BeanUtils.copyProperties(proOrdrvo,proordr);
		proordr.setProduct(product);
		proordr.setOrdr(ordr);
		return proOrdrDao.addProOrdr(proordr);
	}
	
	


}
