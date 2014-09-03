package com.crm.service.impl;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.management.loading.PrivateClassLoader;

import org.springframework.beans.BeanUtils;

import com.crm.dao.IClientDao;
import com.crm.dao.impl.ClientDao4Orcl;
import com.crm.po.Client;
import com.crm.po.Linkman;
import com.crm.po.Ordr;
import com.crm.service.IClientService;
import com.crm.util.Page;
import com.crm.vo.ClientLostVo;
import com.crm.vo.ClientVo;
import com.crm.vo.LinkmanVo;

public class ClientService implements IClientService {

	private IClientDao clientDao;

	public IClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(IClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public Page findall(int pageSize, int page) {
		String hql = "FROM Client";
		int allRow = clientDao.getAllRowCount(hql);// �ܼ�¼��

		int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
		final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
		final int length = pageSize;// ÿҳ��¼��

		final int currentPage = Page.countCurrentPage(page);
		List<Client> clientlist = clientDao.findall(offset, length);// "һҳ"�ļ�¼
	   List<ClientVo> list=p2vs(clientlist);
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

	public Serializable addClient(ClientVo clientvo) {
		Client client=new Client();
		BeanUtils.copyProperties(clientvo,client);
		if(client.getChance()==null||client.getChance().equals(""))
			client.setChance("0");
		Serializable s = clientDao.addClient(client);
		return s;
	}

	public void delClient(long clientid) {
		clientDao.delClient(clientid);
	}

	public void modClient(ClientVo clientvo) {
		Client client=new Client();
		BeanUtils.copyProperties(clientvo,client);
		clientDao.modClient(client);
	}
	public void modClientmerge(ClientVo clientvo) {
		Client client=new Client();
		BeanUtils.copyProperties(clientvo,client);
		clientDao.modClientmerge(client);
	}
	public List getRegions() {
		List<Map> l = clientDao.getRegion();
		List<String[]> os = new ArrayList();
		for (Map m : l) {
			String s1 = m.get("0") == null ? "无地区" : m.get("0").toString();
			String s2 = m.get("1") == null ? "无地区" : m.get("1").toString();
			String[] s = { s1, s2 };
			os.add(s);
		}
		return os;
	}

	private List<ClientLostVo> findlostClient() {
		List<Map> lsList = clientDao.findlostClient();
		List<ClientLostVo> cvos = new ArrayList<ClientLostVo>();
		ClientLostVo cvo = new ClientLostVo();
		for (Map m : lsList) {
			Date date = new Date();
			DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
			Date date2;
			try {
				if (m.get("0") != null) {
					date2 = fmt.parse(m.get("0").toString());
					int differ = (int) ((date.getTime() - date2.getTime()) / (24 * 60 * 60 * 1000));
					if (differ >= 170) {

						Client c = clientDao.getbyname(m.get("1").toString());
						cvo = p2v(c);
						String lasttime = new SimpleDateFormat("yyyy-MM-dd")
								.format(date2);
						cvo.setLasttime(lasttime);
					
						cvos.add(cvo);
					}
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}

		}

		return cvos;
	}

	private ClientLostVo p2v(Client c) {
		try {
			ClientLostVo clvo = new ClientLostVo();
			BeanUtils.copyProperties(c, clvo);
			return clvo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	private List<ClientVo> p2vs (List<Client> cs){
		List<ClientVo> cvos=new ArrayList<ClientVo>();
		for(Client c:cs){
			cvos.add(cp2v(c));
		}
		return cvos;
		
	}
	@SuppressWarnings("unchecked")
	private ClientVo cp2v(Client c) {
		ClientVo cvo = new ClientVo();
		Set<LinkmanVo> linkmans=p2vl(c.getLinkmans());
		BeanUtils.copyProperties(c, cvo);
		cvo.setLinkmans(linkmans);
		return cvo;
	}
	
	private LinkmanVo p2vl(Linkman linkman){
		LinkmanVo lvo=new LinkmanVo();
		BeanUtils.copyProperties(linkman, lvo);
		return lvo;
	}


	public ClientVo getbyid(long cid) {
		return cp2v(clientDao.getbyid(cid));
    }
	private Set<LinkmanVo> p2vl(Set<Linkman> lps){
		Set<LinkmanVo> lvos=new HashSet<LinkmanVo>(0);
		for (Linkman linkman : lps) {
			lvos.add(p2vl(linkman));
		}
		return lvos;
	}


	public Page findlostClient(int pageSize, int page) {
		List<ClientLostVo> cVos = findlostClient();
		List<ClientLostVo> list = new ArrayList<ClientLostVo>();
		int allRow = cVos.size();// �ܼ�¼��

		int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
		final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
		final int length = pageSize;// ÿҳ��¼��

		final int currentPage = Page.countCurrentPage(page);
		if (offset + length > cVos.size())
			list = cVos;
		else
			list = cVos.subList(offset, offset + length);
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

	public void modChance(String clientname, String chance) {
		Client c = new Client();

		c = clientDao.getbyname(clientname);
		long newchance = Long.parseLong(chance);

		long clientChance = c.getChance() == null ? 0 : Long.parseLong(c
				.getChance());
		if (newchance < 50) {
			clientChance -= Math.log(newchance);
		} else {
			clientChance += Math.log(newchance);
		}
		if (clientChance >= 100)
			clientChance = 100;
		if (clientChance <= 0)
			clientChance = 0;
		c.setChance(clientChance + "");
		try {
			clientDao.modClient(c);
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}

	public ClientVo getByName(String name) {
		Client client = clientDao.getbyname(name);
		return cp2v(client);
	}

	
	public boolean checkClientName(String name) {
		List<String> names=clientDao.getAllNames();
		for (int i = 0; i < names.size(); i++) {
			if(name.equals(names.get(i))){
				return true;
			}
		}
		return false;
		
	}

	public List lostclientstatis() {
		List<Map> l=clientDao.findlostclientstatis();
	    List<String[]> os=new ArrayList();
		for(Map m:l){	
			if(m.get("1")!=null){
				String[] s={m.get("0").toString(),m.get("1").toString()};
				os.add(s);
			}
			
			
		}
		return os;
	}

	public List<ClientVo> findHightClients() {
		return  p2vs(clientDao.findHightClients());
	}

	public Page findnamecomtainschar(String charname,int pageSize, int page) {
	
	
		String queryString="'%"+charname+"%'";
		String hql="from Client where name like "+queryString;
		try {
			int allRow = clientDao.getAllRowCount(hql);// �ܼ�¼��
			int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
			final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
			final int length = pageSize;// ÿҳ��¼��
			final int currentPage = Page.countCurrentPage(page);
			
			List<Client> lists =clientDao.findnamecomtainschar(charname,offset, length);// "һҳ"�ļ�¼
			List<ClientVo> list=p2vs(lists);
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

	public Page findregioncomtainschar(String region, int pageSize,
			int page) {
		String queryString="'%"+region+"%'";
		String hql="from Client where name like "+queryString;
		try {
			int allRow = clientDao.getAllRowCount(hql);// �ܼ�¼��
			int totalPage = Page.countTotalPage(pageSize, allRow);// ��ҳ��
			final int offset = Page.countOffset(pageSize, page);// ��ǰҳ��ʼ��¼
			final int length = pageSize;// ÿҳ��¼��
			final int currentPage = Page.countCurrentPage(page);
			
			List<Client> lists =clientDao.findnamecomtainschar(region,offset, length);// "һҳ"�ļ�¼
			
			List<ClientVo> list=p2vs(lists);
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
}
