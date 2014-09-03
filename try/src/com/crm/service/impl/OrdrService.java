package com.crm.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;

import com.crm.dao.IClientDao;
import com.crm.dao.IOrdrDao;
import com.crm.dao.impl.ClientDao4Orcl;
import com.crm.dao.impl.OrdrDao4Orcl;
import com.crm.po.Client;
import com.crm.po.Ordr;
import com.crm.po.Pln;
import com.crm.po.ProOrdr;
import com.crm.service.IOrdrService;
import com.crm.service.IPlnService;
import com.crm.util.Page;

import com.crm.vo.ClientVo;
import com.crm.vo.OrdrVo;
import com.crm.vo.PlanVo;

public class OrdrService implements IOrdrService{

	private IOrdrDao ordrDao;
	public IOrdrDao getOrdrDao() {
		return ordrDao;
	}



	public void setOrdrDao(IOrdrDao ordrDao) {
		this.ordrDao = ordrDao;
	}


	public void setOrdrDao(OrdrDao4Orcl ordrDao) {
		this.ordrDao = ordrDao;
	}

	

	public Page findOrdrByClient(int pageSize, int page, long clientid) {
		 String hql="from Ordr  where clientid= "+clientid;
			int allRow = ordrDao.getAllRowCount(hql);// �ܼ�¼��
			int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
			final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
			final int length = pageSize;// ÿҳ��¼��
			final int currentPage = Page.countCurrentPage(page);
			
			List<Ordr> ordrist = ordrDao.findOrdrByClient(offset, length,clientid);// "һҳ"�ļ�¼
			List<OrdrVo> list=p2vs(ordrist);
			// �ѷ�ҳ��Ϣ���浽Bean��
			Page pageBean = new Page();
			pageBean.setPageSize(pageSize);
			pageBean.setCurrentPage(currentPage);
			pageBean.setAllRow(allRow);
			pageBean.setTotalPage(totalPage);
			pageBean.setList(list);
			pageBean.init();
			return pageBean;
	}

	public void delOrder(long ordrid) {
		ordrDao.delOrdr(ordrid);	
	}

	public List findOrderNumberofClient() {
		List<Map> l=ordrDao.findOrderNumberofClient();
	    List<String[]> os=new ArrayList();
		for(Map m:l){
			String cname=	((Client)m.get("1")).getName();
			String[] s={m.get("0").toString(),cname};
			os.add(s);
		}
		return os;
	}

	public List findOrdroftime() {
		List<Map> l=ordrDao.findOrdroftime();
	    List<String[]> os=new ArrayList();
		for(Map m:l){
			
			String[] s={m.get("0").toString(),m.get("1").toString()};
			os.add(s);
		}
		return os;
	}



	public Page findall(int pageSize, int page) {
		String hql="from Ordr ";
		int allRow = ordrDao.getAllRowCount(hql);// �ܼ�¼��
		int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
		final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
		final int length = pageSize;// ÿҳ��¼��
		final int currentPage = Page.countCurrentPage(page);
		
		List<Ordr> ordrist = ordrDao.findall(offset, length);// "һҳ"�ļ�¼
		List<OrdrVo> list=p2vs(ordrist);
		// �ѷ�ҳ��Ϣ���浽Bean��
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}



	public Page finbytime(int pageSize, int page,String time) {
		String queryString="'%"+time+"%'";
		String hql="from Ordr where time like "+queryString;
		try {
			int allRow = ordrDao.getAllRowCount(hql);// �ܼ�¼��
			int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
			final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
			final int length = pageSize;// ÿҳ��¼��
			final int currentPage = Page.countCurrentPage(page);
			
			List<Ordr> ordrist = ordrDao.findbytime(offset, length, time);// "һҳ"�ļ�¼
			List<OrdrVo> list=p2vs(ordrist);
			// �ѷ�ҳ��Ϣ���浽Bean��
			Page pageBean = new Page();
			pageBean.setPageSize(pageSize);
			pageBean.setCurrentPage(currentPage);
			pageBean.setAllRow(allRow);
			pageBean.setTotalPage(totalPage);
			pageBean.setList(list);
			pageBean.init();
			return pageBean;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	
	}



	public List<String> findOrderYears() {
		return ordrDao.getOrderYears();
	}
	
	public List<OrdrVo> p2vs(List<Ordr> ordrs){
		List<OrdrVo> ordrVos=new ArrayList<OrdrVo>();
		for(Ordr o: ordrs){
		
			ordrVos.add(p2v(o));
		}
		return ordrVos;
	}
	private OrdrVo p2v(Ordr c) {
		OrdrVo cvo = new OrdrVo();
		BeanUtils.copyProperties(c, cvo);
		return cvo;
	}

	
	

}
