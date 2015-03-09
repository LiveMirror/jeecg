package org.jeecgframework.web.system.service;

import org.jeecgframework.core.common.service.CommonService;

public interface MutiLangServiceI extends CommonService{

	public void initAllMutiLang();
	
	public String getLang(String lang_key);
	
	public String getLang(String lang_key, String args);
	
	public void refleshMutiLangCach();

}
