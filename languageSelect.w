<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:301px;top:291px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="language" idColumn="col0" onCustomRefresh="languageCustomRefresh"><column name="col0" type="String" xid="xid1"></column>
  <column label="id" name="languageId" type="String" xid="xid2"></column>
  <column label="name" name="languageName" type="String" xid="xid3"></column>
  <data xid="default5">[]</data></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="welcome">
   <div class="x-titlebar-left" xid="div1"></div>
   <div class="x-titlebar-title" xid="div2">welcome</div>
   <div class="x-titlebar-right reverse" xid="div3"></div></div></div>
   <div class="x-panel-content" xid="content1">
  
  <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1">
   <label class="x-label" xid="label1">请选择语言</label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="language-select" bind-optionsCaption="--请选择语言--" bind-options="language" bind-optionsValue="languageId" bind-optionsLabel="languageName" name="lan-select">
    </select> </div><a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button1" bind-click="button1Click">
   <i xid="i1"></i>
   <span xid="span1">确认</span></a></div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>