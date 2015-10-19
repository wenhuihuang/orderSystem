<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:626px;top:241px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="roomData" idColumn="typeName" onCustomRefresh="fan_nameCustomRefresh" autoNew="false"><column label="房类型" name="typeName" type="String" xid="xid4"></column>
  <column label="房类号" name="typeCode" type="Long" xid="xid6"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deskData" idColumn="tai_number"><column label="台号" name="tai_number" type="String" xid="xid5"></column>
  <column label="状态" name="state" type="String" xid="xid7"></column>
  <column label="房号id" name="roomId" type="String" xid="xid8"></column>
  <column label="订单号" name="billMasterId" type="String" xid="xid16"></column>
  <column label="颜色" name="color" type="String" xid="xid40"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="userId"><column label="用户id" name="userId" type="String" xid="xid1"></column>
  <column label="手机号" name="fetionNO" type="Long" xid="xid2"></column>
  <column label="用户名" name="userName" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="enterDeskData" idColumn="roomId"><column label="房台ID" name="roomId" type="Long" xid="xid9"></column>
  <column label="状态" name="state" type="Integer" xid="xid10"></column>
  <column label="台号" name="roomName" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="menuTypeData" idColumn="typeCode"><column label="菜单类号" name="typeCode" type="String" xid="xid12"></column>
  <column label="菜单分类名" name="typeName" type="String" xid="xid13"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsListData" idColumn="goodsId">
   <column label="商品id" name="goodsId" type="String" xid="xid14"></column>
   <column label="商品名称" name="goodsName" type="String" xid="xid15"></column>
   <column name="sprice" type="Double" xid="xid18"></column>
   <column label="商品数量" name="qty" type="String" xid="xid19"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentDeskData" idColumn="tai_number">
   <column label="台号" name="tai_number" type="String" xid="default11"></column>
  <column label="状态" name="state" type="String" xid="default12"></column>
  <column label="房号id" name="roomId" type="String" xid="default13"></column>
  <column label="订单号" name="billMasterId" type="String" xid="default2"></column>
  <column label="台" name="roomCode" type="String" xid="xid17"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartData" idColumn="goodsId">
   <column label="商品id" name="goodsId" type="String" xid="column3"></column>
  <column label="商品名称" name="goodsName" type="String" xid="column4"></column>
  <column name="sprice" type="Double" xid="column1"></column>
  <column label="商品数量" name="qty" type="Integer" xid="column2"></column>
  <column name="addMoney" type="Double" xid="xid28"></column>
  <column name="cookWay" type="String" xid="xid38"></column>
  <column name="totalPrice" type="Double" xid="xid41"></column>
  <rule xid="rule2">
   <col name="totalPrice" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default19">(val('sprice')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="col4"><column name="col4" type="String" xid="xid20"></column>
  <column name="goodsName" type="String" xid="xid21"></column>
  <column name="price" type="Double" xid="xid22"></column>
  <column name="addMoney" type="Double" xid="xid23"></column>
  <column name="qty" type="Integer" xid="xid24"></column>
  <column name="totalPrice" type="Double" xid="xid42"></column>
  <rule xid="rule3">
   <col name="totalPrice" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default20">(val('price')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="statusData" idColumn="col2" autoNew="true"><column name="col2" type="String" xid="xid27"></column>
  <column label="订单总价" name="orderTotal" type="Double" xid="xid25"></column>
  <column label="购物车总价" name="cartTotal" type="Double" xid="xid26"></column>
  <rule xid="rule1">
   <col name="orderTotal" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$model.orderData.sum('totalPrice')</expr></calculate> </col> 
   <col name="cartTotal" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3">$model.cartData.sum('totalPrice')</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentGoodsData" idColumn="goodsId">
   <column label="商品id" name="goodsId" type="String" xid="default5"></column>
  <column label="商品名称" name="goodsName" type="String" xid="default7"></column>
  <column name="sprice" type="Double" xid="default4"></column>
  <column label="商品数量" name="qty" type="Integer" xid="default6"></column>
  <column name="addMoney" type="Double" xid="xid29"></column>
  <rule xid="rule4">
   <col name="addMoney" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default21">$model.currentCookWayData.sum(&quot;addMoney&quot;)</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cookTypeData" idColumn="typeCode"><column name="typeCode" type="String" xid="xid30"></column>
  <column name="typeName" type="String" xid="xid31"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cookTypeDetailData" idColumn="col3"><column name="col3" type="String" xid="xid32"></column>
  <column name="cookWayId" type="String" xid="xid33"></column>
  <column name="addMoney" type="Double" xid="xid34"></column>
  <column name="cookWay" type="String" xid="xid35"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentCookWayData" idColumn="col3">
   <column name="col3" type="String" xid="default14"></column>
  <column name="cookWayId" type="String" xid="default10"></column>
  <column name="addMoney" type="Double" xid="default9"></column>
  <column name="cookWay" type="String" xid="default8"></column>
  <column name="goodsId" type="String" xid="xid36"></column>
  <column name="detail" type="String" xid="xid39"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sendCookWayData" idColumn="col3" confirmDelete="false">
   <column name="col3" type="String" xid="default18"></column>
  <column name="cookWayId" type="String" xid="default17"></column>
  <column name="addMoney" type="Double" xid="default16"></column>
  <column name="cookWay" type="String" xid="default15"></column>
  <column name="goodsId" type="String" xid="xid37"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deletingCookWayData" idColumn="col0"><column name="col0" type="String" xid="xid43"></column>
  <column name="cookWayId" type="String" xid="xid44"></column>
  <column name="goodsId" type="String" xid="xid45"></column></div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1" swipe="false"> 
    <div class="x-contents-content" xid="login">
      <div xid="div48" class="login-wrap">
        <div xid="div52">
          <h2 xid="h21"><![CDATA[欢迎使用点餐系统]]></h2>
        </div>  
        <div xid="div56">
          <h4 xid="h41"><![CDATA[请输入用户名和密码登录]]></h4>
          <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"
            xid="form1">
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelInput1"> 
              <label class="x-label" xid="label1"><![CDATA[用户名:]]></label>  
              <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
                xid="userName" placeHolder="用户名"/>
            </div>
            <div component="$UI/system/components/justep/labelEdit/labelEdit"
              class="x-label-edit x-label30" xid="labelPassword1"> 
              <label class="x-label" xid="label2"><![CDATA[密码:]]></label>  
              <input component="$UI/system/components/justep/input/password"
                class="form-control x-edit" xid="userPwd" placeHolder="密码"/>
            </div>
            <p xid="p79" class="login-wrap">
              <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-exit" label="退出" xid="exit"> 
                <i xid="i17" />  
                <span xid="span86">退出</span>
              </a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-login"
                label="登录" xid="login_btn" bind-click="login_btnClick"> 
                <i xid="i16"/>  
                <span xid="span85">登录</span>
              </a>  
              
            </p>
          </div>
        </div>
      </div> 
    </div>
    <div class="x-contents-content" xid="index">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top menu-wrap" xid="top1" height="40"> 
          <div component="$UI/system/components/justep/list/list" class="x-list menu-con" xid="list1" data="roomData">
   <ul class="x-list-template clearfix" xid="listTemplateUl1">
    <li xid="li10" class="top-menu-li" bind-click="li10Click">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="ref('typeName')"></div>
  </li> </ul> </div></div>  
        <div class="x-panel-content content-wrap" xid="content2"> 
          <div xid="div4" class="main-con"> 
            <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="deskData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li1" bind-click="li1Click">
   <div xid="div5" class="table-con use" bind-style="{  'background-color':val('color')}">
     <p xid="p87">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="roomNum" bind-ref="ref('state')" id="roomNum" style="color:#FFFFFF;"></div></p> 
     <p xid="p88">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref="ref('tai_number')" style="color:#FFFFFF;"></div></p> </div></li></ul> </div></div> 
        </div>  
        <div class="x-panel-bottom bottom-wrap" xid="bottom1"> 
          <div xid="div2" class="bottom-left"> 
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group" tabbed="true" xid="buttonGroup1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-active"
                label="中文" xid="button1"> 
                <i xid="i1"/>  
                <span xid="span1">中文</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                label="EN" xid="button2"> 
                <i xid="i2"/>  
                <span xid="span2">EN</span>
              </a> 
            </div> 
          </div>  
          <div xid="div3" class="bottom-right"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="Post Test" xid="button3"> 
              <i xid="i3"/>  
              <span xid="span3">Post Test</span>
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="呼叫服务" xid="button4"> 
              <i xid="i4"/>  
              <span xid="span4">呼叫服务</span>
            </a> 
          </div> 
        </div> 
      </div>
    </div>  
    <div class="x-contents-content" xid="menu" onActive="menuActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2">
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
            xid="titleBar1" title="菜单"> 
            <div class="x-titlebar-left" xid="div49"/>  
            <div class="x-titlebar-title" xid="div50">菜单</div>  
            <div class="x-titlebar-right reverse" xid="div51"/>
          </div>
        </div>  
        <div class="x-panel-content home" xid="content4">
          <div xid="left-menu" class="left-menu"> 
            <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="menuTypeData">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li2" bind-click="li2Click"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref="ref('typeName')"></div></li></ul> </div></div>  
          <div xid="right-main" class="right-main"> 
            <div component="$UI/system/components/justep/list/list" class="x-list" xid="list6" data="goodsListData">
   <ul class="x-list-template" xid="listTemplateUl6">
    <li xid="li3"><ul xid="ul4"> 
              <li xid="li32" bind-text="val('goodsName')"> 
                <h3 xid="h31" bind-text="val('goodsName')">菜名</h3> 
              </li>  
              <li class="clearfix"> 
                <p class="price fl" xid="span177" bind-text="val('sprice')">0.00</p>  
                <p class="number fr" xid="span178"> 
                  <img class="subtract" xid="image1" bind-attr-src='$model.getImageUrl("./images/jiangreen.png")' bind-click="image1Click"/>  
                  
                  <label xid="qty" class="num" bind-text="val('qty')">label</label><img class="add" xid="image2" bind-attr-src='$model.getImageUrl("./images/jiagreen.png")' bind-click="image2Click"/>
                </p> 
              </li> 
            </ul></li></ul> </div>  
              
            </div>
        </div>  
        <div class="x-panel-bottom menu-bottom-wrap" xid="bottom2">
          <div xid="div105" class="menu-bottom-left"> 
            <span>共
              <b bind-text="$model.cartData.sum('qty') " class="color-price">0</b>份
            </span>
            <span>
              <b bind-text="statusData.val('cartTotal')" class="color-price">0</b>元
            </span> 
          </div>  
          <div xid="div106" class="menu-bottom-right">
            <a component="$UI/system/components/justep/button/button" class="btn btn-default"
              label="已点详情" xid="button9" bind-click="button9Click"> 
              <i xid="i9"/>  
              <span xid="span181">已点详情</span>
            </a>
          </div>
        </div>
      </div>
    </div> 
  </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver1" opacity="0.9" style="box-shadow:0 0px 2px 2px #c9B9B9;"> 
    <div class="x-popOver-overlay" xid="div107"/>  
    <div class="x-popOver-content  pop-container" xid="div108" style="width:95%;height:96%;">
      <div xid="div109" class="pop-wrap" style="height:94%;">
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel3"> 
          <div class="x-panel-top" xid="top3" height="44">
            <div xid="div110" class="pop-con"> 
              <div class="con-top" xid="div53"> 
                <ul xid="ul2"> 
                  <li xid="li13"> 
                    <div class="con-top-left" xid="div54"> 
                      <p xid="p104">菜名</p>  
                      <p xid="p105"> 
                        <span xid="span123">单价</span>  
                        <span xid="span124">加收</span>  
                        <span xid="span125">数量</span>
                      </p> 
                    </div>  
                    <div class="con-top-right" xid="div55"> 
                      <p xid="p106">要求</p>  
                      <p xid="p107">(点击修改)</p>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>
          </div>  
          <div class="x-panel-content" xid="content1">
            <div xid="div63" class="pop-con"> 
              <div class="con-con" xid="div70"> 
                <p class="no-send" xid="p121"> 
                  <span xid="span150">待发送</span>  
                  <span xid="span151" bind-text=" '合计(元):'+$model.statusData.val(&quot;cartTotal&quot;)">合计(元):20.00</span>
                </p>  
                <div component="$UI/system/components/justep/list/list" class="x-list"
                  xid="list4" data="cartData"> 
                  <ul class="x-list-template" xid="listTemplateUl5"> 
                    <li xid="li14"> 
                      <div xid="div71"> 
                        <p xid="p120" bind-text="val('goodsName')" bind-click="p120Click">南海鸡腿饭</p>  
                        <p xid="p116"> 
                          <span xid="span152" bind-text="val('sprice')">22.00</span>  
                          <span xid="span153" bind-text="val('addMoney')*val('qty')">63.00</span>  
                          <span xid="span139" bind-text="val('qty')">2</span>
                        </p> 
                      </div>  
                      <div xid="div74" bind-click="div74Click" style="height:35px;" bind-text="val('cookWay')">点击</div>
                    </li>  
                    </ul> 
                </div>  
                <p xid="p124" class="send"> 
                  <span xid="span154">已发送</span>  
                  <span xid="span155" bind-text=" '合计(元)：'+$model.statusData.val(&quot;orderTotal&quot;)">合计(元):20.00</span>
                </p>  
                <div component="$UI/system/components/justep/list/list" class="x-list"
                  xid="list5" data="orderData"> 
                  <ul class="x-list-template" xid="listTemplateUl4"> 
                    <li xid="li15"> 
                      <div xid="div67"> 
                        <p xid="p123" bind-text="val('goodsName')">南海鸡腿饭</p>  
                        <p xid="p128"> 
                          <span xid="span144" bind-text="val('price')">22.00</span>  
                          <span xid="span145" bind-text="val('addMoney')">63.00</span>  
                          <span xid="span146" bind-text="val('qty')">2</span>
                        </p> 
                      </div>  
                      <div xid="div69"/>
                    </li>  
                    </ul> 
                </div> 
              </div> 
            </div>
          </div>  
          <div class="x-panel-bottom" xid="bottom3">
            <div xid="div45" class="bottom-wrap"> 
              <div xid="div46" class="pop-bottom-left">总价格(元):
                <div component="$UI/system/components/justep/output/output"
                  class="x-output dib color-price" xid="output1" bind-text=' $model.statusData.val("orderTotal") + $model.statusData.val("cartTotal")'/>
              </div>  
              <div xid="div47" class="poop-bottom-right"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default send-order-btn" label="送单" xid="button5" onClick="button5Click"> 
                  <i xid="i5"/>  
                  <span xid="span83">送单</span>
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default close-btn" label="关闭" xid="button6" onClick="button6Click"> 
                  <i xid="i6"/>  
                  <span xid="span84">关闭</span>
                </a> 
              </div> 
            </div>
          </div>
        </div>
      </div> 
    </div>
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver2" opacity="0.9" style="box-shadow:0 0px 2px 2px #B9B9B9;"> 
    <div class="x-popOver-overlay" xid="div76"/>  
    <div class="x-popOver-content edit-add-wrap" xid="div77" style="width:95%;height:96%;">
      <div xid="div78" style="height:94%;" class="edit-add">
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel4"> 
          <div class="x-panel-top" xid="top4" style="line-height:48px;">
   <div xid="div79" class="order-info-title">
    <span xid="span156" bind-text="currentGoodsData.ref('goodsName')">海南鸡腿饭</span></div> </div><div class="x-panel-content edit-add-con" xid="content3"> 
              
              
              
              
            <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
   <div class="x-panel-top" xid="top5" height="160"><div xid="div80"> 
              <p>单价
                <span bind-text="currentGoodsData.ref('sprice')">22.00</span>
              </p>  
              <p>加价总计
                <span bind-text="currentGoodsData.val('addMoney')">22.00</span>
              </p>  
              <p>数量
                <span bind-text="currentGoodsData.ref('qty')">1</span>
              </p> 
            </div><div xid="div81"> 
              <div class="ed-btn-wrap"> 
                <ul xid="ul6"> 
                  <li> 
                    <span xid="span161"><![CDATA[汇总]]></span>
                  </li>  
                  <li> 
                    <a component="$UI/system/components/justep/button/button" class="btn btn-default clear" label="清空" xid="button10" bind-click="button10Click" onClick="button10Click"> 
                      <i xid="i10" />  
                      <span xid="span159">清空</span>
                    </a>
                  </li>  
                  <li> 
                    <a component="$UI/system/components/justep/button/button" class="btn btn-default delete" label="删除" xid="button11" onClick="button11Click"> 
                      <i xid="i11" />  
                      <span xid="span160">删除</span>
                    </a>
                  </li> 
                </ul> 
              </div>  
              <div component="$UI/system/components/justep/list/list" class="x-list ed-con-con " xid="list9" data="currentCookWayData">
   <ul class="x-list-template" xid="listTemplateUl9">
    <li xid="li6" bind-click="li6Click"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput1" bind-text="val('cookWay')+'('+val('addMoney')+')'">
   <label class="x-label" xid="label4"></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3"></div></div></li></ul> 
  </div></div></div>
   <div class="x-panel-content" xid="content6"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
   <div class="x-panel-top" xid="top6"><div xid="div82" class="edit-container-title">
              <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="数量" xid="button12" bind-click="button12Click" target="content5"> 
                <i xid="i12" />  
                <span xid="span162">数量</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="口味" xid="button13" bind-click="button13Click" target="content8"> 
                <i xid="i13" />  
                <span xid="span163">口味</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default require" label="要求 " xid="button14" target="content9" onClick="button14Click"> 
                <i xid="i14" />  
                <span xid="span164">要求</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="其他" xid="button15" bind-click="button15Click" target="content10"> 
                <i xid="i15" />  
                <span xid="span165">其他</span>
              </a>
            </div></div>
   <div class="x-panel-content" xid="content7"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2" swipe="false">
   <div class="x-contents-content" xid="content5">
   <div class="select-con-wrap" style="text-align:center;"><h5><a href="javascript:;" class="subtract" id="popOver2Sub" bind-click="a2Click"></a><span bind-text="currentGoodsData.ref('qty')">1</span><a href="javascript:;" class="add" id="popOver2Add" bind-click="a1Click"></a></h5>
  </div>
   </div>
  <div class="x-contents-content" xid="content8">
  <div class='select-con-wrap'></div>
  </div>
  <div class="x-contents-content" xid="content9">
  <div xid="div9" class="require-title-wrap">
  <div component="$UI/system/components/justep/list/list" class="x-list require-title clearfix" xid="list7" data="cookTypeData">
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   <ul class="x-list-template clearfix" xid="listTemplateUl7">
    <div class="col col-xs-4" xid="col1" bind-click="li4Click"><span xid="span7" bind-text="val('typeName')" bind-click="li4Click"></span></div></ul></div> </div></div><div class='select-con-wrap'>
  <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list8" data="cookTypeDetailData">
   <ul class="x-list-template clearfix" xid="listTemplateUl8">
    <li xid="li5" bind-text="val('cookWay')" bind-click="li5Click"></li></ul> </div></div>
  </div>
  <div class="x-contents-content" xid="content10">
  	<textarea class='select-con-wrap' placeholder='请输入要求'></textarea>
  </div></div></div>
   </div></div>
   </div></div>  
          <div class="x-panel-bottom edit-add-bottom" xid="bottom4">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button7" onClick="button7Click">
    <i xid="i7"></i>
    <span xid="span157">取消</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="button8" onClick="button8Click">
    <i xid="i8"></i>
    <span xid="span158">确定</span></a> </div></div>
      </div>
    </div>
  </div>
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver renShu" xid="popOver_renshu" opacity="0.9">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content con-wrap" xid="div6"><div xid="div7" class="con-con"><h2 xid="h22"><![CDATA[请输入就餐人数]]></h2><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="输入人数" id="custNum" dataType="Integer"></input><div xid="div8" class="btn-wrap"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确认" xid="button16" onClick="button16Click">
   <i xid="i18"></i>
   <span xid="span5">确认</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button17" onClick="button17Click">
   <i xid="i19"></i>
   <span xid="span6">取消</span></a></div></div>
  </div></div>
  <resource xid="resource2"><require xid="require1" url="$UI/demo/baas/baas"></require></resource></div>
