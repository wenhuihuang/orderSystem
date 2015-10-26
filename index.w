<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:459px;width:234px;left:823px;top:62px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="roomData" idColumn="typeName" onCustomRefresh="fan_nameCustomRefresh" autoNew="false"><column label="房类型" name="typeName" type="String" xid="xid4"></column>
  <column label="房类号" name="typeCode" type="Long" xid="xid6"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="deskData" idColumn="tai_number"><column label="台号" name="tai_number" type="String" xid="xid5"></column>
  <column label="状态" name="state" type="String" xid="xid7"></column>
  <column label="房号id" name="roomId" type="String" xid="xid8"></column>
  <column label="订单号" name="billMasterId" type="String" xid="xid16"></column>
  <column label="颜色" name="color" type="String" xid="xid40"></column>
  <column name="typeCode" type="String" xid="xid49"></column>
  <column label="在餐人数" name="custQty" type="Integer" xid="xid51"></column>
  <column name="consumeRoomId" type="String" xid="xid54"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="userId"><column label="用户id" name="userId" type="String" xid="xid1"></column>
  <column label="手机号" name="fetionNO" type="Long" xid="xid2"></column>
  <column label="用户名" name="userName" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="enterDeskData" idColumn="roomId"><column label="房台ID" name="roomId" type="Long" xid="xid9"></column>
  <column label="状态" name="state" type="Integer" xid="xid10"></column>
  <column label="台号" name="roomName" type="String" xid="xid11"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="menuTypeData" idColumn="typeCode"><column label="菜单类号" name="typeCode" type="String" xid="xid12"></column>
  <column label="菜单分类名" name="typeName" type="String" xid="xid13"></column>
  <column label="当前类型点单数量" name="qty" type="Integer" xid="xid47"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsListData" idColumn="goodsId">
   <column label="商品id" name="goodsId" type="String" xid="xid14"></column>
  <column label="商品名称" name="goodsName" type="String" xid="xid15"></column>
  <column name="sprice" type="Double" xid="xid18"></column>
  <column label="商品数量" name="qty" type="String" xid="xid19"></column>
  <column label="商品类型" name="typeCode" type="String" xid="xid46"></column>
  <column label="单位" name="unitId" type="String" xid="xid55"></column></div><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentDeskData" idColumn="tai_number">
   <column label="台号" name="tai_number" type="String" xid="default11"></column>
  <column label="状态" name="state" type="String" xid="default12"></column>
  <column label="房号id" name="roomId" type="String" xid="default13"></column>
  <column label="订单号" name="billMasterId" type="String" xid="default2"></column>
  <column label="台" name="roomCode" type="String" xid="xid17"></column>
  <column name="typeCode" type="String" xid="xid50"></column>
  <column name="custQty" type="Integer" xid="xid52"></column>
  <column label="消费房间id" name="consumeRoomId" type="String" xid="xid53"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartData" idColumn="goodsId" confirmDelete="false">
   <column label="商品id" name="goodsId" type="String" xid="column3"></column>
  <column label="商品名称" name="goodsName" type="String" xid="column4"></column>
  <column name="sprice" type="Double" xid="column1"></column>
  <column label="商品数量" name="qty" type="Integer" xid="column2"></column>
  <column name="addMoney" type="Double" xid="xid28"></column>
  <column name="cookWay" type="String" xid="xid38"></column>
  <column name="totalPrice" type="Double" xid="xid41"></column>
  <column name="typeCode" type="String" xid="xid48"></column>
  <rule xid="rule2">
   <col name="totalPrice" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default19">(val('sprice')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule>
  <column name="unitId" type="String" xid="xid63"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="orderData" idColumn="col4"><column name="col4" type="String" xid="xid20"></column>
  <column name="goodsName" type="String" xid="xid21"></column>
  <column name="price" type="Double" xid="xid22"></column>
  <column name="addMoney" type="Double" xid="xid23"></column>
  <column name="qty" type="Integer" xid="xid24"></column>
  <column name="totalPrice" type="Double" xid="xid42"></column>
  <rule xid="rule3">
   <col name="totalPrice" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default20">(val('price')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule>
  <column name="billDetailId" type="String" xid="xid64"></column></div>
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
  <column name="goodsId" type="String" xid="xid45"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="mergeRoomData" idColumn="tai_number">
   <column label="台号" name="tai_number" type="String" xid="default26"></column>
   <column label="状态" name="state" type="String" xid="default25"></column>
   <column label="房号id" name="roomId" type="String" xid="default24"></column>
   <column label="订单号" name="billMasterId" type="String" xid="default23"></column>
   <column label="台" name="roomCode" type="String" xid="default22"></column>
   <column name="typeCode" type="String" xid="default27"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="presents" idColumn="goodsId" confirmDelete="false">
   <column label="商品id" name="goodsId" type="String" xid="column8"></column>
   <column label="商品名称" name="goodsName" type="String" xid="column12"></column>
   <column name="sprice" type="Double" xid="column7"></column>
   <column label="商品数量" name="qty" type="Integer" xid="column10"></column>
   <column name="addMoney" type="Double" xid="column11"></column>
   <column name="cookWay" type="String" xid="column9"></column>
   <column name="totalPrice" type="Double" xid="column5"></column>
   <column name="typeCode" type="String" xid="column6"></column>
   <rule xid="rule5">
    <col name="totalPrice" xid="ruleCol6">
     <calculate xid="calculate6">
      <expr xid="default28">(val('sprice')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="presentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh"><column name="col0" type="String" xid="xid56"></column>
  <column name="tfzReansonId" type="Integer" xid="xid57"></column>
  <column name="zReason" type="String" xid="xid58"></column>
  <column name="zReasonCode" type="String" xid="xid59"></column>
  <column name="zType" type="String" xid="xid60"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sendPresentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh">
   <column name="col0" type="String" xid="default31"></column>
  <column name="tfzReansonId" type="Integer" xid="default30"></column>
  <column name="qty" type="Integer" xid="xid61"></column>
  <column name="goodsId" type="String" xid="xid62"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentPresentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh">
   <column name="col0" type="String" xid="default36"></column>
   <column name="tfzReansonId" type="Integer" xid="default35"></column>
   <column name="zReason" type="String" xid="default38"></column>
   <column name="zReasonCode" type="String" xid="default37"></column>
   <column name="zType" type="String" xid="default34"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="currentOrderData" idColumn="col4">
   
   <column name="col4" type="String" xid="default42"></column>
  <column name="goodsName" type="String" xid="default41"></column>
  <column name="price" type="Double" xid="default39"></column>
  <column name="addMoney" type="Double" xid="default33"></column>
  <column name="qty" type="Integer" xid="default32"></column>
  <column name="totalPrice" type="Double" xid="default29"></column>
  <rule xid="rule6">
   <col name="totalPrice" xid="ruleCol7">
    <calculate xid="calculate7">
     <expr xid="default40">(val('price')+val('addMoney'))*val('qty')</expr></calculate> </col> </rule>
  <column name="billDetailId" type="String" xid="default43"></column></div></div>  
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
              <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-6" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-exit" label="退出" xid="exit"> 
                <i xid="i17" />  
                <span xid="span86">退出</span>
              </a></div>
   <div class="col col-xs-6" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-login" label="登录" xid="login_btn" bind-click="login_btnClick"> 
                <i xid="i16" />  
                <span xid="span85">登录</span>
              </a></div>
   </div>  
              
            </p>
          </div>
        </div>
      </div> 
    </div>
    <div class="x-contents-content" xid="index" onActive="indexActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top menu-wrap" xid="top1" height="40"> 
          <div component="$UI/system/components/justep/list/list" class="x-list menu-con" xid="list1" data="roomData">
   <ul class="x-list-template clearfix" xid="listTemplateUl1">
    <li xid="li10" class="top-menu-li" bind-click="li10Click">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref="ref('typeName')"></div>
  </li> </ul> </div></div>  
        <div class="x-panel-content content-wrap" xid="content2"> 
          <div xid="div4" class="main-con clearfix"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list2" data="deskData"> 
              <ul class="x-list-template clearfix main-ul" xid="listTemplateUl2"> 
                <li xid="li1" bind-click="li1Click" bind-attr-roomId="val('roomId')" bind-attr-state="val('state')" bind-attr-tai_number="val('tai_number')"  bind-attr-consumeRoomId="val('consumeRoomId')" bind-attr-custQty="val('custQty')" bind-touchstart="li1Touchstart" bind-touchmove="li1Touchmove" bind-touchend="li1Touchend"> 
                  <div xid="div5" class="table-con use"  bind-css="{'blue':val('color')=='blue','gray':val('color')=='gray','yellow':val('color')=='yellow','red':val('color')=='red','green':val('color')=='green'}"> 
                    <p xid="p87"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="roomNum" bind-ref="ref('state')" id="roomNum"
                        style="color:#FFFFFF;"/>
                    </p>  
                    <p xid="p88"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="output4" bind-ref="ref('tai_number')"
                        style="color:#FFFFFF;"/>
                    </p> 
                  </div>
                </li>
              </ul> 
            </div>
          </div>  
          <div xid="more" class="more-wrap"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row3"> 
              <div class="col col-xs-4" xid="col4"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 搭台 " xid="button18" bind-click="button18Click"> 
                  <i xid="i20"/>  
                  <span xid="span8">搭台</span>
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col5"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="并台 " xid="button20" bind-click="button20Click"> 
                  <i xid="i22"/>  
                  <span xid="span9">并台</span>
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col6"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="转台" xid="button21" bind-click="button21Click"> 
                  <i xid="i23"/>  
                  <span xid="span10">转台</span>
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col7"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 零结账" xid="button22" onClick="button22Click"> 
                  <i xid="i24"/>  
                  <span xid="span11"> 零结账</span>
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col8"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="埋单" xid="button23" onClick="button23Click"> 
                  <i xid="i25"/>  
                  <span xid="span12">埋单</span>
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col9"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 点菜" xid="button24" target="menu"> 
                  <i xid="i26"/>  
                  <span xid="span13">点菜</span>
                </a> 
              </div> 
            </div> 
          </div>
        </div>          <div class="x-panel-bottom bottom-wrap" xid="bottom1"> 
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
            <div class="x-titlebar-left" xid="div49"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon color-green" xid="button19" icon="icon-android-arrow-back" bind-click="button19Click">
   <i xid="i21" class="icon-android-arrow-back"></i>
   <span xid="span41"></span></a></div>  
            <div class="x-titlebar-title" xid="div50">菜单</div>  
            <div class="x-titlebar-right reverse" xid="div51"/>
          </div>
        </div>  
        <div class="x-panel-content home" xid="content4">
          <div xid="left-menu" class="left-menu"> 
            <div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="menuTypeData">
   <ul class="x-list-template" xid="listTemplateUl3">
 <li xid="li2" bind-click="li2Click"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref="ref('typeName')"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output count" xid="output6" bind-ref="ref('qty')" bind-visible="val('qty')&gt;0"></div></li></ul> </div></div>          <div xid="right-main" class="right-main"> 
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
  
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver renShu" xid="popOver_renshu" opacity="0.9">
   <div class="x-popOver-overlay" xid="div1"></div>
   <div class="x-popOver-content con-wrap" xid="div6"><div xid="div7" class="con-con"><h2 xid="h22"><![CDATA[请输入就餐人数]]></h2><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="输入人数" id="custNum" dataType="Integer" autoFocus="true"></input><div xid="div8" class="btn-wrap"><a component="$UI/system/components/justep/button/button" class="btn btn-default do-btn" label="确认" xid="button16" onClick="button16Click">
   <i xid="i18"></i>
   <span xid="span5">确认</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default undo-btn" label="取消" xid="button17" onClick="button17Click">
   <i xid="i19"></i>
   <span xid="span6">取消</span></a></div></div>
  </div></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver take" xid="popOver-take" opacity="0.9">
   <div class="x-popOver-overlay" xid="div10"></div>
   <div class="x-popOver-content con-wrap" xid="div11"><div xid="div13" class="con-con">
    <div xid="div16" class="pop-title"><h2 xid="h23"><![CDATA[【搭  台】]]>
  
  
  </h2><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput2">
   <label class="x-label" xid="label3"><![CDATA[台号]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="台号" bind-ref="currentDeskData.ref('tai_number')" readonly="true"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput3">
   <label class="x-label" xid="label5"><![CDATA[人数]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" placeHolder="请输入人数" dataType="Integer"></input></div></div>
    <div xid="div12" class="btn-wrap">
      
      
  <a component="$UI/system/components/justep/button/button" class="btn btn-default do-btn" label="确认" xid="button25" onClick="button25Click">
      <i xid="i28"></i>
      <span xid="span15">确认</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default undo-btn" label="取消" xid="button26" bind-click="button26Click">
      <i xid="i27"></i>
      <span xid="span14">取消</span></a></div> </div></div></div>
      
    <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="order" style="box-shadow:0 0px 2px 2px #c9B9B9;" opacity="0.9"> 
    <div class="x-popOver-overlay" xid="div10"/>  
    <div class="x-popOver-content  pop-container" xid="div11" style="width:95%;height:96%;"> 
      <div xid="div12" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel7"> 
          <div class="x-panel-top" xid="top7" height="48"> 
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2">
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="没分单" xid="button27" target="content12"> 
                <i xid="i29"/>  
                <span xid="span29">没分单</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="已分单" xid="button28" target="content13"> 
                <i xid="i30"/>  
                <span xid="span30">已分单</span>
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="结账单" xid="button29" target="content14"> 
                <i xid="i31"/>  
                <span xid="span31">结账单</span>
              </a>
            </div>
          </div>  
          <div class="x-panel-content" xid="content11"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents3"> 
              <div class="x-contents-content" xid="content12">
                <div xid="div16" class="pop-con"> 
                  <div class="con-con" xid="div18"> 
                    <p class="no-send" xid="p10"> 
                      <span xid="span24" bind-text="statusData.ref('orderTotal')">总数量<![CDATA[总数量]]></span>  
                      <span xid="span23" bind-text=" '合计(元):'+$model.statusData.val(&quot;cartTotal&quot;)">合计(元):20.00</span> 
                    </p>  
                    <div xid="div14" class="pop-con-title">
                      <div component="$UI/system/components/bootstrap/row/row"
                        class="row" xid="row4"> 
                        <div class="col col-xs-5dot2 " xid="col10">
                          <span xid="span53"><![CDATA[菜名]]></span> 
                        </div>  
                        <div class="col col-xs-1dot7" xid="col11">
                          <span xid="span54"><![CDATA[单价]]></span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col12">
                          <span xid="span55"><![CDATA[数量]]></span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col13">
                          <span xid="span56"><![CDATA[加收]]></span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col18"> 
                          <span xid="span61">总价</span>
                        </div>
                      </div>
                    </div>
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="list10" data="cartData"> 
                      <ul class="x-list-template" xid="listTemplateUl10"> 
                        <li xid="li8" bind-click="li8Click"> 
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row6"> 
                            <div class="col col-xs-5dot2" xid="col19"> 
                              <span xid="span62" bind-text="val('goodsName')">菜名</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col22"> 
                              <span xid="span63" bind-text="val('sprice')">单价</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col21"> 
                              <span xid="span64" bind-text="val('qty')">数量</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col20"> 
                              <span xid="span65" bind-text="val('addMoney')">加收</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col23"> 
                              <span xid="span66" bind-text="val('sprice') * val('qty')+val('addMoney')">总价</span>
                            </div> 
                          </div>
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div xid="div32" class="pop-menu-btn">
                    <div component="$UI/system/components/justep/button/buttonGroup"
                      class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3">
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button30" icon="icon-android-add"> 
                        <i xid="i32" class="icon-android-add"/>  
                        <span xid="span67"/>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button31" icon="icon-android-remove"> 
                        <i xid="i33" class="icon-android-remove"/>  
                        <span xid="span68"/>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button32" icon="icon-close"> 
                        <i xid="i34" class="icon-close"/>  
                        <span xid="span69"/>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button33" icon="icon-ios7-more"
                        bind-click="button33Click"> 
                        <i xid="i35" class="icon-ios7-more"/>  
                        <span xid="span70"/>
                      </a>
                    </div>
                  </div>
                  <div xid="pop-menuSub-btn" class="pop-menuSub-btn">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row8"> 
                      <div class="col col-xs-4" xid="col30">
                        <span xid="span32" bind-click="span32Click" bind-touchstart="span32Touchstart"><![CDATA[菜名]]></span>
                      </div>  
                      <div class="col col-xs-4" xid="col31">
                        <span xid="span33" bind-click="span33Click"><![CDATA[价格]]></span>
                      </div>  
                      <div class="col col-xs-4" xid="col32">
                        <span xid="span34" bind-click="span34Click"><![CDATA[数量]]></span>
                      </div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row9"> 
                      <div class="col col-xs-4" xid="col33">
                        <span xid="span35" bind-click="span35Click"><![CDATA[赠送]]></span>
                      </div>  
                      <div class="col col-xs-4" xid="col34">
                        <span xid="span36"><![CDATA[多食]]></span>
                      </div>  
                      <div class="col col-xs-4" xid="col35">
                        <span xid="span37" bind-click="span37Click"><![CDATA[返回]]></span>
                      </div>
                    </div>
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content13">
                <div xid="div28" class="pop-con"> 
                  <div class="con-con" xid="div17"> 
                    <p class="no-send" xid="p1"> 
                      <span xid="span22" bind-text="statusData.ref('orderTotal')">总数量总数量</span>  
                      <span xid="span25" bind-text=" '合计(元)：'+$model.statusData.val(&quot;orderTotal&quot;)">合计(元):20.00</span>
                    </p>  
                    <div xid="div15" class="pop-con-title"> 
                      <div component="$UI/system/components/bootstrap/row/row"
                        class="row" xid="row5"> 
                        <div class="col col-xs-5dot2 " xid="col14"> 
                          <span xid="span16">菜名</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col24"> 
                          <span xid="span17">单价</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col17"> 
                          <span xid="span20">数量</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col16"> 
                          <span xid="span21">加收</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col25"> 
                          <span xid="span28">总价</span>
                        </div> 
                      </div> 
                    </div>  
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="list11" data="orderData"> 
                      <ul class="x-list-template" xid="listTemplateUl11"> 
                        <li xid="horderli" bind-click="horderliClick"> 
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row7"> 
                            <div class="col col-xs-5dot2" xid="col15"> 
                              <span xid="span27" bind-text="val('goodsName')">菜名</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col29"> 
                              <span xid="span26" bind-text="val('price')">单价</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col27"> 
                              <span xid="span45" bind-text="val('qty')">数量</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col26"> 
                              <span xid="span44" bind-text="val('addMoney')">加收</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col28"> 
                              <span xid="span43" bind-text="val('sprice') * val('qty')+val('addMoney')">总价</span>
                            </div> 
                          </div> 
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div xid="div68" class="pop-menu-btn"> 
                    <div component="$UI/system/components/justep/button/buttonGroup"
                      class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup4"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button40" icon="icon-android-add"> 
                        <i xid="i43" class="icon-android-add"/>  
                        <span xid="span51"/>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link btn-only-icon" xid="button45" icon="icon-android-remove"> 
                        <i xid="i42" class="icon-android-remove"/>  
                        <span xid="span50"/>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link" xid="button42" label="退菜"> 
                        <i xid="i47"/>  
                        <span xid="span49">退菜</span>
                      </a>  
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-link" xid="button41" bind-click="button33Click" label="更多"> 
                        <i xid="i44"/>  
                        <span xid="span48">更多</span>
                      </a> 
                    </div> 
                  </div> 
                  
                        <div class="pop-menuSub-btn">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row8"> 
                      <div class="col col-xs-3" xid="col30">
                        <span xid="hspan32" bind-click="hspan32Click"><![CDATA[价格]]></span>
                      </div>  
                      <div class="col col-xs-3" xid="col31">
                        <span xid="hspan33" bind-click="hspan33Click"><![CDATA[数量]]></span>
                      </div>  
                      <div class="col col-xs-3" xid="col32">
                        <span xid="hspan34" bind-click="hspan34Click"><![CDATA[催菜]]></span>
                      </div>
                    <div class="col col-xs-3" xid="col68">
   <span xid="hspan94" bind-click="hspan94Click"><![CDATA[叫起]]></span></div></div>  
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row9"> 
                      <div class="col col-xs-3" xid="col33">
                        <span xid="hspan35" bind-click="hhspan35Click"><![CDATA[赠送]]></span>
                      </div>  
                      <div class="col col-xs-3" xid="col34">
                        <span xid="hspan36" bind-click="span36Click"><![CDATA[单品打折]]></span>
                      </div>  
                      <div class="col col-xs-3" xid="col35">
                        <span xid="hspan37" bind-click="hspan37Click"><![CDATA[全单催菜]]></span>
                      </div>
                    <div class="col col-xs-3" xid="col69">
   <span xid="hspan95" bind-click="span34Click"><![CDATA[全单叫起]]></span></div></div>
                  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row11">
   <div class="col col-xs-3" xid="col45">
    <span xid="hspan40" bind-click="hspan40Click"><![CDATA[退菜]]></span></div> 
   
   
   </div></div> 
                  
                </div>
              </div>  
              <div class="x-contents-content" xid="content14"><div xid="div23" class="have-wrap"><div xid="div72"><h3 xid="h32"><![CDATA[十号台（1人）]]></h3><table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table1">
   <thead xid="thead1">
    <tr xid="tr1">
     <th xid="col42"><![CDATA[管理员]]></th>
     <th xid="col43" colspan="2">1000</th>
     </tr>  </thead> 
   <tbody class="x-list-template" xid="listTemplate1">
    <tr xid="tr2">
     <td xid="td1"><![CDATA[原始单号]]></td>
     <td xid="td2" colspan="2"></td>
     </tr>
     <tr xid="tr2">
     <td xid="td1"><![CDATA[会员卡]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr> 
       <tr xid="tr2">
     <td xid="td1"><![CDATA[消费合计]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr>
       <tr xid="tr2">
     <td xid="td1"><![CDATA[服务费]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr>  
       <tr xid="tr2">
     <td xid="td1"><![CDATA[折扣额]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr> 
       <tr xid="tr2">
     <td xid="td1"><![CDATA[应付合计]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr>
       <tr xid="tr2">
     <td xid="td1"><![CDATA[最低消费]]></td>
     <td xid="td2"></td>
     <td xid="td3"></td>
     </tr>  
      </tbody> </table></div><div xid="div73"><div xid="div75" class="pop-menu-btn">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup5">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button46" label="预览结帐单" bind-click="button46Click">
     <i xid="i50"></i>
     <span xid="span57">预览结帐单</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button49" label="输入会员卡号">
     <i xid="i48"></i>
     <span xid="span52">输入会员卡号</span></a> 
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button47" label="更多">
     <i xid="i49"></i>
     <span xid="span58">更多</span></a> </div> 
  </div><div xid="div83" class="pop-menuSub-btn">
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row13">
    <div class="col col-xs-3" xid="col48">
     <span xid="span73"><![CDATA[修改原始单号]]></span></div> 
    <div class="col col-xs-3" xid="col49">
     <span xid="span74"><![CDATA[修改服务费率]]></span></div> 
    <div class="col col-xs-3" xid="col50">
     <span xid="span75"><![CDATA[修改人数]]></span></div> 
    <div class="col col-xs-3" xid="col46">
     <span xid="span76"><![CDATA[修改最低消费]]></span></div> </div> 
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row14">
    <div class="col col-xs-3" xid="col53">
     <span xid="span60"><![CDATA[打折]]></span></div> 
    <div class="col col-xs-3" xid="col52">
     <span xid="span71"><![CDATA[会员打折]]></span></div> 
    <div class="col col-xs-3" xid="col51">
     <span xid="span72"><![CDATA[重打总单]]></span></div> 
    <div class="col col-xs-3" xid="col47">
     <span xid="span77"><![CDATA[埋单]]></span></div> </div> </div></div></div>
  </div>
            </div>
          </div>  
          <div class="x-panel-bottom" xid="bottom5"> 
            <div xid="div20" class="bottom-wrap"> 
              <div xid="div21" class="pop-bottom-left">总价格(元):
                <div component="$UI/system/components/justep/output/output"
                  class="x-output dib color-price" xid="output6" bind-text=" $model.statusData.val(&quot;orderTotal&quot;) + $model.statusData.val(&quot;cartTotal&quot;)"
                  style="background-color:transparent;"/>
              </div>  
              <div xid="div22" class="poop-bottom-right"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default send-order-btn" label="送单" xid="button26"
                  onClick="button5Click"> 
                  <i xid="i28"/>  
                  <span xid="span19">送单</span>
                </a>  
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default close-btn" label="关闭" xid="button25" onClick="button6Click"> 
                  <i xid="i27"/>  
                  <span xid="span18">关闭</span>
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  
    <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOver2" opacity="0.9" style="box-shadow:0 0px 2px 2px #B9B9B9;"> 
    <div class="x-popOver-overlay" xid="div76" />  
    <div class="x-popOver-content edit-add-wrap" xid="div77" style="width:95%;height:96%;">
      <div xid="div78" style="height:94%;" class="edit-add">
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4"> 
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
    <li xid="li6" bind-click="li6Click" class="clearfix"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelOutput1" bind-text="val('cookWay')+'('+val('addMoney')+')'">
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
  <div class="select-con-wrap"></div>
  </div>
  <div class="x-contents-content" xid="content9">
  <div xid="div9" class="require-title-wrap">
  <div component="$UI/system/components/justep/list/list" class="x-list require-title clearfix" xid="list7" data="cookTypeData">
   <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row2">
   <ul class="x-list-template clearfix" xid="listTemplateUl7">
    <div class="col col-xs-4" xid="col1" bind-click="li4Click"><span xid="span7" bind-text="val('typeName')" bind-click="li4Click"></span></div></ul></div> </div></div><div class="select-con-wrap">
  <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list8" data="cookTypeDetailData">
   <ul class="x-list-template clearfix" xid="listTemplateUl8">
    <li xid="li5" bind-text="val('cookWay')" bind-click="li5Click"></li></ul> </div></div>
  </div>
  <div class="x-contents-content" xid="content10">
  	<textarea class="select-con-wrap" placeholder="请输入要求"></textarea>
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
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style"
    xid="give" opacity="0.9"> 
    <div class="x-popOver-overlay" xid="div26"/>  
    <div class="x-popOver-content" xid="div27" style="width:95%;height:96%;">
      <div xid="div38" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel8"> 
          <div class="x-panel-content" xid="content18"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents4" swipe="false"> 
              <div class="x-contents-content" xid="content16"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel9"> 
                  <div class="x-panel-top" xid="top9">
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar2" title="赠送"> 
                      <div class="x-titlebar-left" xid="div19"/>  
                      <div class="x-titlebar-title" xid="div24" title="赠送"/>  
                      <div class="x-titlebar-right reverse" xid="div25"/>
                    </div>
                  </div>
                  <div class="x-panel-content" xid="content19">
                    <div xid="div40" class="pop-con"> 
                      <div class="con-con" xid="div43"> 
                        <div xid="div59">
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput4"> 
                            <label class="x-label" xid="label6"><![CDATA[数量]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input2" placeHolder="请输入数量" id="noOrderPresentsQty"/>
                          </div>
                        </div>
                        <div xid="div60">
                          <div class="select-con-wrap" xid="div61"> 
                            <div component="$UI/system/components/justep/list/list"
                              class="x-list require-con" xid="git" data="presentsReasonData"> 
                              <ul class="x-list-template clearfix" xid="listTemplateUl14"> 
                                <li xid="gitli" bind-text="val('zReason')" bind-click="gitliClick"/>
                              </ul> 
                            </div> 
                          </div>
                        </div>
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom7">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row16"> 
                      <div class="col col-xs-6" xid="col62">
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="buttonGit" onClick="buttonGitClick"> 
                          <i xid="i45"/>  
                          <span xid="span99">确认</span>
                        </a>
                      </div>  
                      <div class="col col-xs-6" xid="col63">
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button44" bind-click="button44Click"> 
                          <i xid="i46"/>  
                          <span xid="span100">返回</span>
                        </a>
                      </div> 
                    </div>
                  </div> 
                </div>
              </div>  
              <div class="x-contents-content" xid="content17"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel9"> 
                  <div class="x-panel-top" xid="top9">
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar2" title="修改菜名"> 
                      <div class="x-titlebar-left" xid="div19"/>  
                      <div class="x-titlebar-title" xid="div24">修改菜名</div>  
                      <div class="x-titlebar-right reverse" xid="div25"/>
                    </div>
                  </div>
                  <div class="x-panel-content" xid="content19">
                    <div xid="div40" class="pop-con"> 
                      <div class="con-con" xid="div43"> 
                        <div xid="div59">
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput4"> 
                            <label class="x-label" xid="label6"><![CDATA[菜名]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input2" placeHolder="请输入菜名" id="noOrderChangeName"/>
                          </div>
                        </div>
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom7">
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row16"> 
                      <div class="col col-xs-6" xid="col62">
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button43" onClick="button43Click"> 
                          <i xid="i45"/>  
                          <span xid="span99">确认</span>
                        </a>
                      </div>  
                      <div class="col col-xs-6" xid="col63">
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button44" bind-click="closeGive"> 
                          <i xid="i46"/>  
                          <span xid="span100">返回</span>
                        </a>
                      </div> 
                    </div>
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content15">
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel10"> 
                  <div class="x-panel-top" xid="top10"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar3" title="修改价格"> 
                      <div class="x-titlebar-left" xid="div35"/>  
                      <div class="x-titlebar-title" xid="div30">修改价格</div>  
                      <div class="x-titlebar-right reverse" xid="div29"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content20"> 
                    <div xid="div31" class="pop-con"> 
                      <div class="con-con" xid="div33"> 
                        <div xid="div34"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput5"> 
                            <label class="x-label" xid="label7"><![CDATA[价格]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input5" placeHolder="请输入价格" id="noOrderChangePrice"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom6"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row10"> 
                      <div class="col col-xs-6" xid="col37"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button34" onClick="button34Click"> 
                          <i xid="i37"/>  
                          <span xid="span39">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col36"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button35" bind-click="closeGive"> 
                          <i xid="i36"/>  
                          <span xid="span38">返回</span>
                        </a> 
                      </div> 
                    </div> 
                  </div> 
                </div>
              </div>  
                
              <div class="x-contents-content" xid="content23">
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel12"> 
                  <div class="x-panel-top" xid="top12"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar5" title="数量"> 
                      <div class="x-titlebar-left" xid="div64"/>  
                      <div class="x-titlebar-title" xid="div57">数量</div>  
                      <div class="x-titlebar-right reverse" xid="div58"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content24"> 
                    <div xid="div62" class="pop-con"> 
                      <div class="con-con" xid="div66"> 
                        <div xid="div65"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput7"> 
                            <label class="x-label" xid="label9">数量</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input7" placeHolder="请输入数量" id="noOrderChangeQty"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom9"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row12"> 
                      <div class="col col-xs-6" xid="col41"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button38" onClick="button38Click"> 
                          <i xid="i41"/>  
                          <span xid="span47">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col40"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button39" bind-click="button44Click"> 
                          <i xid="i40"/>  
                          <span xid="span46">返回</span>
                        </a> 
                      </div> 
                    </div> 
                  </div> 
                </div>
              </div>
            <div class="x-contents-content" xid="order-info">
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel13">
   <div class="x-panel-top" xid="top8"><h3 xid="h33" class="order-info-title"><![CDATA[大酒店]]></h3></div>
   <div class="x-panel-content" xid="content26"><div xid="div84" class="order-info-wrap"><div xid="div85"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row15">
   <div class="col col-xs-4" xid="col54"><span xid="span78"><![CDATA[管理员：]]></span></div>
   <div class="col col-xs-8" xid="col55"><span xid="span79"><![CDATA[]]></span></div>
   </div>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row17">
   <div class="col col-xs-4" xid="col59"><span xid="span80"><![CDATA[台号：]]></span></div>
   <div class="col col-xs-8" xid="col57"><span xid="span81"></span></div>
   </div>
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row18">
   <div class="col col-xs-4" xid="col64"><span xid="span82"><![CDATA[单号：]]></span></div>
   <div class="col col-xs-8" xid="col60"><span xid="span87"></span></div>
   </div></div><table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table2">
   <thead xid="thead2">
    <tr xid="tr3">
     <th xid="col65"><![CDATA[项目]]></th>
     <th xid="col66"><![CDATA[数量]]></th>
     <th xid="col67"><![CDATA[金额]]></th>
     </tr> </thead> 
   <tbody class="x-list-template" xid="listTemplate2">
    <tr xid="tr4">
     <td xid="td5">1</td>
     <td xid="td6"></td>
     <td xid="td7"></td>
     </tr> </tbody> </table><div xid="div86"><h3 xid="h34"><![CDATA[总金额：]]></h3><p xid="p2"><span xid="span89"><![CDATA[欢迎下次光临]]></span></p></div>
  </div></div>
   <div class="x-panel-bottom order-info-button" xid="bottom10"><a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button50" bind-click="button50Click">
   <i xid="i52"></i>
   <span xid="span90">返回</span></a></div></div></div>
  </div> 
          </div> 
        </div> 
      </div>
    </div>
  </div>
      
      <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style" xid="yet-sort">
   <div class="x-popOver-overlay" xid="div87"></div>
   <div class="x-popOver-content" xid="div88"><div xid="div96" class="pop-wrap" style="height:94%;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel16">
    <div class="x-panel-content" xid="content31">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents5" swipe="false">
      <div class="x-contents-content" xid="content27">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel15">
        <div class="x-panel-top" xid="top13">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar6" title="赠送">
          <div class="x-titlebar-left" xid="div126"></div>
          <div class="x-titlebar-title" xid="div93" title="赠送"></div>
          <div class="x-titlebar-right reverse" xid="div92"></div></div> </div> 
        <div class="x-panel-content" xid="content30">
         <div xid="div103" class="pop-con">
          <div class="con-con" xid="div112">
           <div xid="div116">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput13">
             <label class="x-label" xid="label13">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9" placeHolder="请输入数量" id="hOrderPresentsQty"></input></div> </div> 
           <div xid="div122">
            <div class="select-con-wrap" xid="div120">
             <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list12" data="presentsReasonData">
              <ul class="x-list-template clearfix" xid="listTemplateUl12">
               <li xid="li7" bind-text="val('zReason')" bind-click="gitliClick"></li></ul> </div> </div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom12">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row23">
          <div class="col col-xs-6" xid="col74">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="hbutton58" onClick="hbutton58Click">
            <i xid="i55"></i>
            <span xid="span102">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col73">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button51" bind-click="hbutton44Click">
            <i xid="i54"></i>
            <span xid="span96">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content28">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel15">
        <div class="x-panel-top" xid="top13">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar6" title="修改菜名">
          <div class="x-titlebar-left" xid="div126"></div>
          <div class="x-titlebar-title" xid="div93">修改菜名</div>
          <div class="x-titlebar-right reverse" xid="div92"></div></div> </div> 
        <div class="x-panel-content" xid="content30">
         <div xid="div103" class="pop-con">
          <div class="con-con" xid="div112">
           <div xid="div116">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput13">
             <label class="x-label" xid="label13">菜名</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom12">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row23">
          <div class="col col-xs-6" xid="col74">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button48" onClick="button43Click">
            <i xid="i55"></i>
            <span xid="span102">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col73">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button51" bind-click="hbutton44Click">
            <i xid="i54"></i>
            <span xid="span96">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content29">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel14">
        <div class="x-panel-top" xid="top14">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar7" title="修改价格">
          <div class="x-titlebar-left" xid="div101"></div>
          <div class="x-titlebar-title" xid="div95">修改价格</div>
          <div class="x-titlebar-right reverse" xid="div91"></div></div> </div> 
        <div class="x-panel-content" xid="content37">
         <div xid="div94" class="pop-con">
          <div class="con-con" xid="div102">
           <div xid="div100">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput12">
             <label class="x-label" xid="label12">价格</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="hinput10" placeHolder="请输入价格" id="hOrderChangePrice"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom14">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row21">
          <div class="col col-xs-6" xid="col78">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="hbutton57" onClick="hbutton57Click">
            <i xid="i56"></i>
            <span xid="span88">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col79">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button56" bind-click="hbutton44Click">
            <i xid="i57"></i>
            <span xid="span93">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content35">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel19">
        <div class="x-panel-top" xid="top17">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar9" title="数量">
          <div class="x-titlebar-left" xid="div119"></div>
          <div class="x-titlebar-title" xid="div114">数量</div>
          <div class="x-titlebar-right reverse" xid="div115"></div></div> </div> 
        <div class="x-panel-content" xid="content36">
         <div xid="div121" class="pop-con">
          <div class="con-con" xid="div117">
           <div xid="div118">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput10">
             <label class="x-label" xid="label14">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="hinput11" placeHolder="请输入数量" id="hOrderChangeQty"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom13">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row20">
          <div class="col col-xs-6" xid="col82">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="hbutton53" onClick="hbutton53Click">
            <i xid="i51"></i>
            <span xid="span59">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col81">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button52" bind-click="hbutton44Click">
            <i xid="i53"></i>
            <span xid="span42">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content25">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel17">
        <div class="x-panel-top" xid="top16">
         <h3 xid="h35" class="order-info-title">大酒店</h3></div> 
        <div class="x-panel-content" xid="content32">
         <div xid="div125" class="order-info-wrap">
          <div xid="div123">
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row22">
            <div class="col col-xs-4" xid="col80">
             <span xid="span109">管理员：</span></div> 
            <div class="col col-xs-8" xid="col61">
             <span xid="span108"></span></div> </div> 
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row24">
            <div class="col col-xs-4" xid="col44">
             <span xid="span104">台号：</span></div> 
            <div class="col col-xs-8" xid="col71">
             <span xid="span103"></span></div> </div> 
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row25">
            <div class="col col-xs-4" xid="col76">
             <span xid="span105">单号：</span></div> 
            <div class="col col-xs-8" xid="col77">
             <span xid="span107"></span></div> </div> </div> 
          <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table3">
           <thead xid="thead3">
            <tr xid="tr5">
             <th xid="col75">项目</th>
             <th xid="col38">数量</th>
             <th xid="col39">金额</th></tr> </thead> 
           <tbody class="x-list-template" xid="listTemplate3">
            <tr xid="tr6">
             <td xid="td4">1</td>
             <td xid="td9"></td>
             <td xid="td8"></td></tr> </tbody> </table> 
          <div xid="div124">
           <h3 xid="h36">总金额：</h3>
           <p xid="p3">
            <span xid="span106">欢迎下次光临</span></p> </div> </div> </div> 
        <div class="x-panel-bottom order-info-button" xid="bottom15">
         <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button59" bind-click="button50Click">
          <i xid="i60"></i>
          <span xid="span97">返回</span></a> </div> </div> </div> 
      <div class="x-contents-content" xid="content33">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel18">
        <div class="x-panel-top" xid="top15">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar8" title="退菜">
          <div class="x-titlebar-left" xid="div111"></div>
          <div class="x-titlebar-title" xid="div113">退菜</div>
          <div class="x-titlebar-right reverse" xid="div97"></div></div> </div> 
        <div class="x-panel-content" xid="content34">
         <div xid="div98" class="pop-con">
          <div class="con-con" xid="div99">
           <div xid="div104">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput9">
             <label class="x-label" xid="label15">原因</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input12" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput11">
             <label class="x-label" xid="label11">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input13" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom11">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row26">
          <div class="col col-xs-6" xid="col72">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button55" onClick="button43Click">
            <i xid="i58"></i>
            <span xid="span98">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col70">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button54" bind-click="hbutton44Click">
            <i xid="i59"></i>
            <span xid="span101">返回</span></a> </div> </div> </div> </div> </div> </div> </div> </div> </div></div></div><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style" xid="account">
   <div class="x-popOver-overlay" xid="div89"></div>
   <div class="x-popOver-content" xid="div90"><div xid="div132" class="pop-wrap" style="height:94%;">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel22">
    <div class="x-panel-content" xid="content43">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents6" swipe="false">
      <div class="x-contents-content" xid="content39">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel21">
        <div class="x-panel-top" xid="top18">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar10" title="赠送">
          <div class="x-titlebar-left" xid="div156"></div>
          <div class="x-titlebar-title" xid="div129" title="赠送"></div>
          <div class="x-titlebar-right reverse" xid="div128"></div></div> </div> 
        <div class="x-panel-content" xid="content42">
         <div xid="div139" class="pop-con">
          <div class="con-con" xid="div142">
           <div xid="div146">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput18">
             <label class="x-label" xid="label18">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input14" placeHolder="请输入数量" id="noOrderPresentsQty"></input></div> </div> 
           <div xid="div152">
            <div class="select-con-wrap" xid="div150">
             <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list13" data="presentsReasonData">
              <ul class="x-list-template clearfix" xid="listTemplateUl13">
               <li xid="li9" bind-text="val('zReason')" bind-click="gitliClick"></li></ul> </div> </div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom17">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row30">
          <div class="col col-xs-6" xid="col91">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button68" onClick="buttonGitClick">
            <i xid="i64"></i>
            <span xid="span118">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col90">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button61" bind-click="button44Click">
            <i xid="i63"></i>
            <span xid="span114">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content40">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel21">
        <div class="x-panel-top" xid="top18">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar10" title="修改菜名">
          <div class="x-titlebar-left" xid="div156"></div>
          <div class="x-titlebar-title" xid="div129">修改菜名</div>
          <div class="x-titlebar-right reverse" xid="div128"></div></div> </div> 
        <div class="x-panel-content" xid="content42">
         <div xid="div139" class="pop-con">
          <div class="con-con" xid="div142">
           <div xid="div146">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput18">
             <label class="x-label" xid="label18">菜名</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input14" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom17">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row30">
          <div class="col col-xs-6" xid="col91">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button60" onClick="button43Click">
            <i xid="i64"></i>
            <span xid="span118">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col90">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button61" bind-click="closeGive">
            <i xid="i63"></i>
            <span xid="span114">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content41">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel20">
        <div class="x-panel-top" xid="top19">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar11" title="修改价格">
          <div class="x-titlebar-left" xid="div137"></div>
          <div class="x-titlebar-title" xid="div131">修改价格</div>
          <div class="x-titlebar-right reverse" xid="div127"></div></div> </div> 
        <div class="x-panel-content" xid="content49">
         <div xid="div130" class="pop-con">
          <div class="con-con" xid="div138">
           <div xid="div136">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput17">
             <label class="x-label" xid="label17">价格</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input15" placeHolder="请输入价格" id="noOrderChangePrice"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom19">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row28">
          <div class="col col-xs-6" xid="col95">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button67" onClick="button34Click">
            <i xid="i65"></i>
            <span xid="span112">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col96">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button66" bind-click="closeGive">
            <i xid="i66"></i>
            <span xid="span113">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content47">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel25">
        <div class="x-panel-top" xid="top22">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar13" title="多食">
          <div class="x-titlebar-left" xid="div149"></div>
          <div class="x-titlebar-title" xid="div144">多食</div>
          <div class="x-titlebar-right reverse" xid="div145"></div></div> </div> 
        <div class="x-panel-content" xid="content48">
         <div xid="div151" class="pop-con">
          <div class="con-con" xid="div147">
           <div xid="div148">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput15">
             <label class="x-label" xid="label19">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input16" placeHolder="请输入数量" id="noOrderChangeQty"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom18">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row27">
          <div class="col col-xs-6" xid="col99">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button63" onClick="button38Click">
            <i xid="i61"></i>
            <span xid="span111">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col98">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button62" bind-click="button44Click">
            <i xid="i62"></i>
            <span xid="span110">返回</span></a> </div> </div> </div> </div> </div> 
      <div class="x-contents-content" xid="content38">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel23">
        <div class="x-panel-top" xid="top21">
         <h3 xid="h37" class="order-info-title">大酒店</h3></div> 
        <div class="x-panel-content" xid="content44">
         <div xid="div155" class="order-info-wrap">
          <div xid="div153">
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row29">
            <div class="col col-xs-4" xid="col97">
             <span xid="span128">管理员：</span></div> 
            <div class="col col-xs-8" xid="col86">
             <span xid="span127"></span></div> </div> 
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row31">
            <div class="col col-xs-4" xid="col85">
             <span xid="span120">台号：</span></div> 
            <div class="col col-xs-8" xid="col88">
             <span xid="span119"></span></div> </div> 
           <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row32">
            <div class="col col-xs-4" xid="col93">
             <span xid="span121">单号：</span></div> 
            <div class="col col-xs-8" xid="col94">
             <span xid="span126"></span></div> </div> </div> 
          <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table4">
           <thead xid="thead4">
            <tr xid="tr7">
             <th xid="col92">项目</th>
             <th xid="col83">数量</th>
             <th xid="col84">金额</th></tr> </thead> 
           <tbody class="x-list-template" xid="listTemplate4">
            <tr xid="tr8">
             <td xid="td10">1</td>
             <td xid="td12"></td>
             <td xid="td11"></td></tr> </tbody> </table> 
          <div xid="div154">
           <h3 xid="h38">总金额：</h3>
           <p xid="p4">
            <span xid="span122">欢迎下次光临</span></p> </div> </div> </div> 
        <div class="x-panel-bottom order-info-button" xid="bottom20">
         <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button69" bind-click="button50Click">
          <i xid="i69"></i>
          <span xid="span115">返回</span></a> </div> </div> </div> 
      <div class="x-contents-content" xid="content45">
       <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel24">
        <div class="x-panel-top" xid="top20">
         <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar12" title="退菜">
          <div class="x-titlebar-left" xid="div141"></div>
          <div class="x-titlebar-title" xid="div143">退菜</div>
          <div class="x-titlebar-right reverse" xid="div133"></div></div> </div> 
        <div class="x-panel-content" xid="content46">
         <div xid="div134" class="pop-con">
          <div class="con-con" xid="div135">
           <div xid="div140">
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput14">
             <label class="x-label" xid="label20">原因</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input17" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> 
            <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput16">
             <label class="x-label" xid="label16">数量</label>
             <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input18" placeHolder="请输入菜名" id="noOrderChangeName"></input></div> </div> </div> </div> </div> 
        <div class="x-panel-bottom bottom-btn-wrap" xid="bottom16">
         <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row33">
          <div class="col col-xs-6" xid="col89">
           <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button65" onClick="button43Click">
            <i xid="i67"></i>
            <span xid="span116">确认</span></a> </div> 
          <div class="col col-xs-6" xid="col87">
           <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button64" bind-click="closeGive">
            <i xid="i68"></i>
            <span xid="span117">返回</span></a> </div> </div> </div> </div> </div> </div> </div> </div> </div></div></div><resource xid="resource2"><require xid="require1" url="$UI/demo/baas/baas"></require></resource></div>