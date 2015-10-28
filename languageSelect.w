<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:621px;top:235px;" onModelConstruct="modelModelConstruct"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="language" idColumn="col0" onCustomRefresh="languageCustomRefresh"><column name="col0" type="String" xid="xid1"></column>
  <column label="id" name="languageId" type="String" xid="xid2"></column>
  <column label="name" name="languageName" type="String" xid="xid3"></column>
  <data xid="default5">[]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
   <div class="x-panel-content" xid="content1">
  
  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="welcome">
    <div class="x-titlebar-left" xid="div1"></div>
    <div class="x-titlebar-title" xid="div2">welcome</div>
    <div class="x-titlebar-right reverse" xid="div3"></div></div></div>
   <div class="x-panel-content" xid="content4"><div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1">
   <label class="x-label" xid="label1">请选择语言</label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="language-select" bind-optionsCaption="--请选择语言--" bind-options="language" bind-optionsValue="languageId" bind-optionsLabel="languageName" name="lan-select">
    </select> </div><a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button1" bind-click="button1Click">
   <i xid="i1"></i>
   <span xid="span1">确认</span></a></div></div>
   <div class="x-panel-bottom" xid="bottom2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-right" label="设置" xid="button2" target="content3">
   <i xid="i2"></i>
   <span xid="span2">设置</span></a></div></div></div>
  <div class="x-contents-content" xid="content3" onActive="content3Active"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel29">
   <div class="x-panel-top" xid="top26">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar16" title="参数设置">
     <div class="x-titlebar-left" xid="div187"></div>
     <div class="x-titlebar-title" xid="div188">参数设置</div>
     <div class="x-titlebar-right reverse" xid="div189"></div></div> </div> 
   <div class="x-panel-content" xid="content55">
    <div xid="div186">
     <div xid="div184">
      <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form6">
       <h5 xid="h56">1、服务器连接参数设置:</h5>
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput28">
        <label class="x-label" xid="label30">服务器地址:</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input26" placeHolder="请输入服务器地址" id="settingIp"></input></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput26">
        <label class="x-label" xid="label29">端口号:</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input27" placeHolder="请输入端口号" id="settingCOM"></input></div> 
       
       </div> </div> </div> </div> 
   <div class="x-panel-bottom" xid="bottom24">
    <div xid="div185">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default send-order-btn" label="应用" xid="button73" onClick="button73Click">
      <i xid="i74"></i>
      <span xid="span148">应用</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default close-btn" label="返回" xid="button74"  target="content2">
      <i xid="i73"></i>
      <span xid="span147">返回</span></a> </div> </div> </div></div></div></div>
   </div></div>