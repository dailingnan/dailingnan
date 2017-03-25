package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.Etype;

public interface EtypeDao {
	public List<Etype> selectEt();
	public void updateEt(Etype e);
}
