package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.EtypeDao;
import com.eleme.menumanage.pojo.Etype;

public class EtypeService implements IEtypeService{
	private EtypeDao edao;
	public List<Etype> selectService(){
		return edao.selectEt();
	}
	public void updateService(Etype e){
		edao.updateEt(e);
	}
	public EtypeDao getEdao() {
		return edao;
	}
	public void setEdao(EtypeDao edao) {
		this.edao = edao;
	}
	
}
