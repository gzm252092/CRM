package com.crm.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.crm.dao.IClientDao;
import com.crm.po.Client;
import com.crm.service.IClientMapService;
import com.crm.vo.ClientMapVo;

public class ClientMapService implements IClientMapService {
	private IClientDao clientdao;
	
	
	public List<ClientMapVo> getCMapData() {
		// TODO Auto-generated method stub
		List<ClientMapVo> lcmvs = null;
		List<Client> lcs = clientdao.getall();
		if(lcs == null || lcs.size() == 0){
			return lcmvs;
		}
		lcmvs = p2v(lcs);
		
		return lcmvs;
	}
	private List<ClientMapVo> p2v(List<Client> lcs) {
		// TODO Auto-generated method stub
		List<ClientMapVo> lcmvs = new ArrayList<ClientMapVo>();
		for(Client c: lcs){
			ClientMapVo cmv = null;
			cmv = p2v(c);
			lcmvs.add(cmv);
		}
		return lcmvs;
	}
	private ClientMapVo p2v(Client c) {
		// TODO Auto-generated method stub
		ClientMapVo cmv = new ClientMapVo();
		cmv.setCid(c.getId()+"");
		cmv.setCname(c.getName());
		cmv.setAddr(c.getRegion()+c.getAddress());
		int chance = Integer.parseInt(c.getChance());
		cmv.setChance(getChance(chance));
		return cmv;
	}
	
	private int getChance(int chance){
		if(chance <= 19){
			return 1;
		}else if(chance <= 39){
			return 2;
		}else if(chance <= 59){
			return 3;
		}else if(chance <= 79){
			return 4;
		}else{
			return 5;
		}
	}
	
	public void setClientdao(IClientDao clientdao) {
		this.clientdao = clientdao;
	}
	
	

}
