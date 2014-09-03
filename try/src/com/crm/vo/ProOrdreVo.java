package com.crm.vo;

import com.crm.vo.OrdrVo;
import com.crm.vo.ProductVo;

public class ProOrdreVo {

	private long id;
	private ProductVo pvo;
	private OrdrVo ovo;
	private long quantity;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public ProductVo getPvo() {
		return pvo;
	}
	public void setPvo(ProductVo pvo) {
		this.pvo = pvo;
	}
	public OrdrVo getOvo() {
		return ovo;
	}
	public void setOvo(OrdrVo ovo) {
		this.ovo = ovo;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	
}
