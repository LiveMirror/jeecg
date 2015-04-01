<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tSSmsTemplateSqlList" checkbox="true" fitColumns="false" title="消息模板_业务SQL配置表" actionUrl="tSSmsTemplateSqlController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="配置CODE"  field="code" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="配置名称"  field="name"  query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="业务SQLID"  field="sqlId"  queryMode="single" dictionary="t_s_sms_sql,id,sql_name" width="120"></t:dgCol>
   <t:dgCol title="消息模本ID"  field="templateId"  queryMode="single" dictionary="t_s_sms_template,id,template_name" width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="tSSmsTemplateSqlController.do?doDel&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="tSSmsTemplateSqlController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="tSSmsTemplateSqlController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tSSmsTemplateSqlController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tSSmsTemplateSqlController.do?goUpdate" funname="detail"></t:dgToolBar>
<%--   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/org/jeecgframework/web/sms/tSSmsTemplateSqlList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#tSSmsTemplateSqlListtb").find("input[name='createDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#tSSmsTemplateSqlListtb").find("input[name='updateDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'tSSmsTemplateSqlController.do?upload', "tSSmsTemplateSqlList");
}

//导出
function ExportXls() {
	JeecgExcelExport("tSSmsTemplateSqlController.do?exportXls","tSSmsTemplateSqlList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("tSSmsTemplateSqlController.do?exportXlsByT","tSSmsTemplateSqlList");
}
 </script>