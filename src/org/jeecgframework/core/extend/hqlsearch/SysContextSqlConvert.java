package org.jeecgframework.core.extend.hqlsearch;

import org.jeecgframework.core.extend.hqlsearch.parse.vo.HqlRuleEnum;
import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSDataRule;

/**
 * 数据库列表序列化转换sql
 * 
 * @ClassName: SqlJsonConvert
 * @Description: TODO
 * @author Comsys-skyCc cmzcheng@gmail.com
 * @date 2014-8-25 下午7:12:41
 * 
 */
public class SysContextSqlConvert {

	enum Signal {
		GREEN, YELLOW, RED
	}

	/**
	 * 
	 * setSqlModel sql行列转换
	 * 
	 * @Title: setSqlModel
	 * @Description: TODO
	 * @param @param dataRule
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public static String setSqlModel(TSDataRule dataRule){
		if(dataRule == null) 
		return "";
		String sqlValue="";
		HqlRuleEnum ruleEnum=HqlRuleEnum.getByValue(dataRule.getRuleConditions());
		String ValueTemp = "";
		
		//针对特殊标示处理#{sysOrgCode}，判断替换
		if (dataRule.getRuleValue().contains("{")) {
			ValueTemp = dataRule.getRuleValue().substring(2,dataRule.getRuleValue().length() - 1);
		} else {
			ValueTemp = dataRule.getRuleValue();
		}
		
		String TempValue = ResourceUtil.getUserSystemData(ValueTemp) == null ? ValueTemp: ResourceUtil.getUserSystemData(ValueTemp);//将系统变量
		switch (ruleEnum) {
		case GT:
			sqlValue+=" and "+dataRule.getRuleColumn()+" <'"+TempValue+"'";
			break;
		case GE:
			sqlValue+=" and "+dataRule.getRuleColumn()+" >='"+TempValue+"'";
			break;
		case LT:
			sqlValue+=" and "+dataRule.getRuleColumn()+" <'"+TempValue+"'";
			break;
		case LE:
			sqlValue+=" and "+dataRule.getRuleColumn()+" =>'"+TempValue+"'";
			break;
		case  EQ:
			sqlValue+=" and "+dataRule.getRuleColumn()+" ='"+TempValue+"'";
			break;
		case LIKE:
			sqlValue+=" and "+dataRule.getRuleColumn()+" like %'"+TempValue+"'%";
			break;
		case NE:
			sqlValue+=" and "+dataRule.getRuleColumn()+" !='"+TempValue+"'";
			break;
		case IN:
			sqlValue+=" and "+dataRule.getRuleColumn()+" IN('"+TempValue+"')";
		default:
			break;
		}
		
		
		return sqlValue;
	}
	
	// /**
	// *
	// * setSqlIn sql为in的方法
	// *
	// * @Title: setSqlIn
	// * @Description: TODO
	// * @param @param dataRule
	// * @param @param sqlValue
	// * @param @return 设定文件
	// * @return String 返回类型
	// * @throws
	// */
	// public static String setSqlIn(List<DSDataRule>T dataRule,String
	// sqlValue){
	// sqlValue+="'"+dataRule.getRuleValue()+"',";
	// return sqlValue;
	// }
}
