package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.pojo.Etype;

public interface IEtypeService {
	public List<Etype> selectService();
	public void updateService(Etype e);
}
