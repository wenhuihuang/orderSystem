<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:621px;top:235px;" onModelConstruct="modelModelConstruct" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="language" idColumn="col0" onCustomRefresh="languageCustomRefresh"><column name="col0" type="String" xid="xid1"></column>
  <column label="id" name="languageId" type="String" xid="xid2"></column>
  <column label="name" name="languageName" type="String" xid="xid3"></column>
  <data xid="default5">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="runModel" idColumn="col0">
   <column name="col0" type="String" xid="xid63"></column>
   <column label="模式" name="model" type="String" xid="xid64"></column>
   <data xid="default29">[{&quot;model&quot;:&quot;服务员手机&quot;},{&quot;model&quot;:&quot;服务员平板&quot;},{&quot;model&quot;:&quot;自助手机&quot;},{&quot;model&quot;:&quot;自助平板&quot;}]</data></div></div> 
  <div xid="div67" class="loading">
   <span xid="span153">加载中，请稍后</span></div>
 <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   
   <div class="x-panel-content" xid="content1">
  
  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" swipe="false" wrap="false" slidable="false">
   
  <div class="x-contents-content" xid="settings"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" title="参数设置">
     <div class="x-titlebar-left" xid="div5"></div>
     <div class="x-titlebar-title" xid="div8">参数设置</div>
     <div class="x-titlebar-right reverse" xid="div7"></div></div> </div> 
   <div class="x-panel-content" xid="content6">
    <div xid="div4">
     <div xid="div6">
      <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form2">
       <h5 xid="h51">1、服务器连接参数设置:</h5>
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput2">
        <label class="x-label" xid="label2">服务器地址:</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入服务器地址" id="settingIp"></input></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput1">
        <label class="x-label" xid="label3">端口号:</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" placeHolder="请输入端口号" id="settingCOM"></input></div> 
       <h5 xid="h57">2、其它参数设置</h5>
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect2">
        <label class="x-label" xid="label31">运行模式:</label>
        <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-optionsCaption="--请选择运行模式--" bind-optionsValue="model" bind-optionsLabel="model" bind-options="runModel"></select></div> 
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput27">
        <label class="x-label" xid="label32">默认打印机:</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input28" placeHolder="请输入打印机"></input></div> </div> </div> 
     <div xid="div185">
      <div component="$UI/system/components/bootstrap/row/row" class="row settings-btn w100" xid="row38">
       <div class="col col-xs-6" xid="col107">
        <a component="$UI/system/components/justep/button/button" class="btn btn-warning" label="返回" xid="button3" bind-click="button71Click">
         <i xid="i4"></i>
         <span xid="span3">返回</span></a> </div> 
       <div class="col col-xs-6" xid="col108">
        <a component="$UI/system/components/justep/button/button" class="btn btn-style" label="应用" xid="button4" bind-click="button73Click">
         <i xid="i3"></i>
         <span xid="span4">应用</span></a> </div> </div> </div> </div> </div> </div></div>
  <div class="x-contents-content" xid="content2">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
    <div class="x-panel-top" xid="top2">
     <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="欢迎">
      <div class="x-titlebar-left" xid="div1"></div>
      <div class="x-titlebar-title" xid="div2" title="欢迎">欢迎</div>
      <div class="x-titlebar-right reverse" xid="div3"></div></div> </div> 
    <div class="x-panel-content lang-wrap" xid="content4">
     <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form" xid="form1">
      <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelSelect1">
       <label class="x-label" xid="label1">请选择语言</label>
       <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="language-select" bind-optionsCaption="--请选择语言--" bind-options="language" bind-optionsValue="languageId" bind-optionsLabel="languageName" name="lan-select"></select></div> </div> 
     <div component="$UI/system/components/bootstrap/row/row" class="row lang-btn" xid="row1">
      <div class="col col-xs-6" xid="col1">
       <a component="$UI/system/components/justep/button/button" class="btn btn-warning" label="返回" xid="button2" bind-click="button2Click">
        <i xid="i2"></i>
        <span xid="span2">返回</span></a> </div> 
      <div class="col col-xs-6" xid="col2">
       <a component="$UI/system/components/justep/button/button" class="btn btn-style" label="确认" xid="button1" bind-click="button1Click">
        <i xid="i1"></i>
        <span xid="span1">确认</span></a> </div> </div> </div> </div> </div></div></div>
   </div></div>