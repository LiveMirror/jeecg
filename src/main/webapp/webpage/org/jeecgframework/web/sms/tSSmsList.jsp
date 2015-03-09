<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="tSSmsList" checkbox="true" fitColumns="false" title="消息发送记录表" actionUrl="tSSmsController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate" formatter="yyyy-MM-dd" hidden="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="消息标题"  field="esTitle" query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="消息类型"  field="esType"  query="true" queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发送人"  field="esSender"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="接收人"  field="esReceiver"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="内容"  field="esContent"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发送时间"  field="esSendtime"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="发送状态"  field="esStatus" query="true"  queryMode="single"  width="120"></t:dgCol>
<%--   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>--%>
<%--   <t:dgDelOpt title="删除" url="tSSmsController.do?doDel&id={id}" />--%>
<%--   <t:dgToolBar title="录入" icon="icon-add" url="tSSmsController.do?goAdd" funname="add"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="编辑" icon="icon-edit" url="tSSmsController.do?goUpdate" funname="update"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="批量删除"  icon="icon-remove" url="tSSmsController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="查看" icon="icon-search" url="tSSmsController.do?goUpdate" funname="detail"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>--%>
<%--   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/org/jeecgframework/web/sms/tSSmsList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#tSSmsListtb").find("input[name='createDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#tSSmsListtb").find("input[name='updateDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'tSSmsController.do?upload', "tSSmsList");
}

//导出
function ExportXls() {
	JeecgExcelExport("tSSmsController.do?exportXls","tSSmsList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("tSSmsController.do?exportXlsByT","tSSmsList");
}
 </script>