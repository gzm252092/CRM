package com.crm.vo;

import java.util.HashSet;
import java.util.Set;

public class ClientVo {
	private long id;
	private String name;
	private String address;
	private String levl;
	private String manager;
	private String region;
	private String chance;
	private String credit;
	private String status;
	private String web;
	private String fax;
	private String post;
	private String tel;
	private long personid;
	private long licenceNo;
	private String chieftain;
	private String bank;
	private String bankAccount;
	private long turnover;
	private long bankroll;
	private String memo;
	private String confirmtime;
	private Set<LinkmanVo> linkmans = new HashSet<LinkmanVo>(0);
	public long getId() {
		return id;
	}
	
	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public long getPersonid() {
		return personid;
	}

	public void setPersonid(long personid) {
		this.personid = personid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLevl() {
		return levl;
	}

	public void setLevl(String levl) {
		this.levl = levl;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public long getLicenceNo() {
		return licenceNo;
	}

	public void setLicenceNo(long licenceNo) {
		this.licenceNo = licenceNo;
	}

	public String getChieftain() {
		return chieftain;
	}

	public void setChieftain(String chieftain) {
		this.chieftain = chieftain;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public long getTurnover() {
		return turnover;
	}

	public void setTurnover(long turnover) {
		this.turnover = turnover;
	}

	public long getBankroll() {
		return bankroll;
	}

	public void setBankroll(long bankroll) {
		this.bankroll = bankroll;
	}

	public String getChance() {
		return chance;
	}
	public void setChance(String chance) {
		this.chance = chance;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getConfirmtime() {
		return confirmtime;
	}
	public void setConfirmtime(String confirmtime) {
		this.confirmtime = confirmtime;
	}
	
	public Set<LinkmanVo> getLinkmans() {
		return linkmans;
	}
	public void setLinkmans(Set<LinkmanVo> linkmans) {
		this.linkmans = linkmans;
	}

	
	
}
