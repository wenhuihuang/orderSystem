<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile"> 
    <div component="$UI/system/components/justep/model/model" xid="model" style="width:234px;height:auto;left:822px;top:283px;" onLoad="modelLoad">      
       <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="language" idColumn="col0" confirmDelete="false" autoNew="true">
      <column name="col0" type="String" xid="xid65"></column>
  <column label="在用" name="USING" type="String" xid="xid66"></column>
  <column label="用户名" name="USERNAME" type="String" xid="xid67"></column>
  <column label="密码" name="PASSWORD" type="String" xid="xid68"></column>
  <column label="欢迎使用点餐系统" name="WELCOME" type="String" xid="xid69"></column>
  <column label="请输入用户名和密码登录" name="CHECKLOGIN" type="String" xid="xid70"></column>
  <column label="退出" name="EXIT" type="String" xid="xid71"></column>
  <column label="登录" name="LOGIN" type="String" xid="xid72"></column>
  <column label="菜单" name="MENU" type="String" xid="xid73"></column>
  <column label="空台" name="EMPTY" type="String" xid="xid74"></column>
  <column label="埋单" name="PAY" type="String" xid="xid75"></column>
  <column label="预定" name="RESERVE" type="String" xid="xid76"></column>
  <column label="禁用" name="OFF" type="String" xid="xid77"></column>
  <column label="已点详情" name="DETAILS" type="String" xid="xid78"></column>
  <column label="没分单" name="NOSORT" type="String" xid="xid79"></column>
  <column label="已分单" name="COMPLETESORT" type="String" xid="xid80"></column>
  <column label="结算单" name="SETTLEMENT" type="String" xid="xid81"></column>
  <column label="菜名" name="DISHNAME" type="String" xid="xid82"></column>
  <column label="单价" name="PRICE" type="String" xid="xid83"></column>
  <column label="数量" name="QUANTITY" type="String" xid="xid84"></column>
  <column label="加收" name="ADDED" type="String" xid="xid85"></column>
  <column label="总价" name="TOTALPRICES" type="String" xid="xid86"></column>
  <column label="赠送" name="GIVE" type="String" xid="xid87"></column>
  <column label="多食" name="POLYPHAGIA" type="String" xid="xid88"></column>
  <column label="返回" name="BACK" type="String" xid="xid89"></column>
  <column label="送单" name="SENDSHEET" type="String" xid="xid90"></column>
  <column label="关闭" name="CLOSE" type="String" xid="xid91"></column>
  <column label="修改菜名" name="EDITSISH" type="String" xid="xid92"></column>
  <column label="确认" name="CONFIRM" type="String" xid="xid93"></column>
  <column label="修改价格" name="EDITPRICE" type="String" xid="xid94"></column>
  <column label="修改数量" name="EDITQUANTITY" type="String" xid="xid95"></column>
  <column label="催菜" name="URGE" type="String" xid="xid96"></column>
  <column label="收起" name="CALLUP" type="String" xid="xid97"></column>
  <column label="打折" name="DISCOUNT" type="String" xid="xid98"></column>
  <column label="全单催菜" name="ALLURGE" type="String" xid="xid99"></column>
  <column label="全单叫起" name="ALLCALLUP" type="String" xid="xid100"></column>
  <column label="修改单号" name="EDITOODNUM" type="String" xid="xid101"></column>
  <column label="修改原始单号" name="EDITSERVER" type="String" xid="xid102"></column>
  <column label="会员打折" name="MEMBERDISCOUNT" type="String" xid="xid103"></column>
  <column label="重打总单" name="ALLSHEET" type="String" xid="xid104"></column>
  <column label="修改人数" name="EDITPEOPLENUMBER" type="String" xid="xid105"></column>
  <column label="最低消费" name="EDITMINIMUM" type="String" xid="xid106"></column>
  <column label="管理员" name="ADMIN" type="String" xid="xid107"></column>
  <column label="原始单号" name="ODDNUM" type="String" xid="xid108"></column>
  <column label="会员卡号" name="MEMBERNUM" type="String" xid="xid109"></column>
  <column label="取消埋单" name="CANCELPAL" type="String" xid="xid110"></column>
  <column label="消费合计" name="TOTAL" type="String" xid="xid111"></column>
  <column label="服务费" name="SERVICECHARGE" type="String" xid="xid112"></column>
  <column label="折扣额" name="DEDUCTION" type="String" xid="xid113"></column>
  <column label="应付合计" name="ACCRUEDEXP" type="String" xid="xid114"></column>
  <column label="请输入就餐人数" name="INPUTNUM" type="String" xid="xid115"></column>
  <column label="取消" name="CANCEL" type="String" xid="xid116"></column>
  <column label="搭台" name="STAGE" type="String" xid="xid117"></column>
  <column label="台号" name="AHO" type="String" xid="xid118"></column>
  <column label="人数" name="NNT" type="String" xid="xid119"></column>
  <column label="总价格(元)" name="TOTALPRICESYUN" type="String" xid="xid120"></column>
  <column label="总数量" name="TOTALQ" type="String" xid="xid121"></column>
  <column label="价格" name="PRICES" type="String" xid="xid122"></column>
  <column label="并台" name="COMBINE" type="String" xid="xid125"></column>
  <column label="转台" name="TURNTABLE" type="String" xid="xid126"></column>
  <column label="零结账" name="ZERO" type="String" xid="xid127"></column>
  <column label="点菜" name="ORDER" type="String" xid="xid128"></column>
  <column label="用户名或密码有误" name="USERORPWD" type="String" xid="xid129"></column>
  <column label="记住密码" name="REMEMBERPASSWORD" type="String" xid="xid155"></column>
  <column label="自动登陆" name="AUTOLOGIN" type="String" xid="xid156"></column>
  <column label="设置" name="SETTING" type="String" xid="xid157"></column>
  <column label="语言" name="LANGUAGE" type="String" xid="xid158"></column>
  <column label="菜单" name="MENU" type="String" xid="xid159"></column>
  <column label="按拼音点菜" name="ORDERBYALPHABET" type="String" xid="xid160"></column>
  <column label="手写单" name="HANDWRITINGORDER" type="String" xid="xid161"></column>
  <column label="已点详情" name="ALREADYPOINTDETAILS" type="String" xid="xid162"></column>
  <column label="返回" name="BACK" type="String" xid="xid163"></column>
  <column label="搜索" name="SEARCH" type="String" xid="xid164"></column>
  <column label="返回菜单" name="RETURNMENU" type="String" xid="xid165"></column>
  <column label="注销" name="CANCELLATION" type="String" xid="xid166"></column>
  <column label="口味" name="TASTE" type="String" xid="xid167"></column>
  <column label="更多" name="MORE" type="String" xid="xid168"></column>
  <column label="要求" name="REQUIRE" type="String" xid="xid169"></column>
  <column label="其它" name="OTHER" type="String" xid="xid170"></column>
  <column label="数量" name="NUMBER" type="String" xid="xid171"></column>
  <column label="退菜" name="CANCELFOOD" type="String" xid="xid172"></column>
  <column label="单品打折" name="SINGLEDISCOUNT" type="String" xid="xid173"></column>
  <column label="预览结帐单" name="PREVIEWCHECKLIST" type="String" xid="xid174"></column>
  <column label="输入会员卡号" name="INPUTCARTNUM" type="String" xid="xid175"></column>
  <column label="修改服务费率" name="CHANGESERVERRATE" type="String" xid="xid176"></column>
  <column label="修改最低消费" name="CHANGEMINICHARGE" type="String" xid="xid177"></column>
  <column label="取消埋单" name="CANCELPAY" type="String" xid="xid178"></column>
  <column label="修改人数" name="CHANGEPEOPLENUM" type="String" xid="xid179"></column>
  <column label="修改菜名" name="MODIFYFOODNAME" type="String" xid="xid180"></column>
  <column label="修改菜名" name="MODIFYFOODPRICE" type="String" xid="xid181"></column>
  <column label="汇总" name="SUMMARY" type="String" xid="xid182"></column>
  <column label="加价总计" name="ADDTOTAL" type="String" xid="xid183"></column>
  <column label="清空" name="CLEAR" type="String" xid="xid184"></column>
  <column label="删除" name="DELETE" type="String" xid="xid185"></column>
  <column label="送单中，请稍等" name="SENDINGORDER" type="String" xid="xid186"></column>
  <column label="请先选择菜品" name="SELECTFOOD" type="String" xid="xid187"></column>
  <column label="已经添加" name="HAVEADD" type="String" xid="xid188"></column>
  <column label="此台是空台" name="THISDESKFREE" type="String" xid="xid189"></column>
  <column label="转台失败" name="CHANGEFAILURE" type="String" xid="xid190"></column>
  <column label="有更新，是否更新" name="IFUPDATE" type="String" xid="xid191"></column>
  <column label="正在更新中" name="DOWNLOADING" type="String" xid="xid192"></column>
  <column label="请输入人数" name="INPUTPERSONNUM" type="String" xid="xid193"></column>
  <column label="确认删除" name="CONFIRMDELETE" type="String" xid="xid194"></column>
  <column label="此台有人，不能转台" name="PEOPLECANNOTTURN" type="String" xid="xid195"></column>
  <column label="正在转台，请稍等" name="AREAND" type="String" xid="xid196"></column>
  <column label="不能并台" name="CANTMERGE" type="String" xid="xid197"></column>
  <column label="正在清台，请稍等" name="ISCLEAR" type="String" xid="xid198"></column>
  <column label="数量不能为空" name="NUMBEREMPTY" type="String" xid="xid199"></column>
  <column label="理由没选" name="REASONNOTTOCHOOSE" type="String" xid="xid200"></column>
  <column label="赠送数量不能大于购买数量 " name="GIVENOTGREATER" type="String" xid="xid201"></column>
  <column label="未设置手写单" name="HANDWRITTENLIST" type="String" xid="xid202"></column>
  <column label="菜名不能为空" name="NAMENOTEMPTY" type="String" xid="xid203"></column>
  <column label="体格不能为空" name="PRICENOTEMPTY" type="String" xid="xid204"></column>
  <column label="没有查找到内容" name="NOSEARCHCONTENT" type="String" xid="xid205"></column>
  <column label="请选择折扣类型" name="SELECTDISCOUNT" type="String" xid="xid206"></column>
  <column label="退菜数量大于订单数量" name="FOODGREATERORDER" type="String" xid="xid207"></column>
  <column label="请选择退菜原因" name="RETURNFOOD" type="String" xid="xid208"></column>
  <column label="大酒店" name="RESTAURANT" type="String" xid="xid209"></column>
  <column label="单号" name="ORDERNUM" type="String" xid="xid210"></column>
  <column label="项目" name="PROJECT" type="String" xid="xid211"></column>
  <column label="欢迎下次光临" name="WELCOMENEXT" type="String" xid="xid212"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="runModel" idColumn="col0">
      <column name="col0" type="String" xid="xid63"/>  
      <column label="模式" name="model" type="String" xid="xid64"/>  
      <data xid="default29">[{"model":"服务员手机"},{"model":"服务员平板"},{"model":"自助手机"},{"model":"自助平板"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="roomData" idColumn="typeName" onCustomRefresh="fan_nameCustomRefresh" autoNew="false">
      <column label="房类型" name="typeName" type="String" xid="xid4"/>  
      <column label="房类号" name="typeCode" type="Long" xid="xid6"/>
    </div>
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="deskData" idColumn="tai_number">
      <column label="台号" name="tai_number" type="String" xid="xid5"/>  
      <column label="状态" name="state" type="String" xid="xid7"/>  
      <column label="房号id" name="roomId" type="String" xid="xid8"/>  
      <column label="订单号" name="billMasterId" type="String" xid="xid16"/>  
      <column label="颜色" name="color" type="String" xid="xid40"/>  
      <column name="typeCode" type="String" xid="xid49"/>  
      <column label="在餐人数" name="custQty" type="Integer" xid="xid51"/>  
      <column name="consumeRoomId" type="String" xid="xid54"/>  
      <column label="状态语言" name="stateLang" type="String" xid="xid124"/>
    </div>
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="userData" idColumn="userId">
      <column label="用户id" name="userId" type="String" xid="xid1"/>  
      <column label="手机号" name="fetionNO" type="Long" xid="xid2"/>  
      <column label="用户名" name="userName" type="String" xid="xid3"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="enterDeskData" idColumn="roomId">
      <column label="房台ID" name="roomId" type="Long" xid="xid9"/>  
      <column label="状态" name="state" type="Integer" xid="xid10"/>  
      <column label="台号" name="roomName" type="String" xid="xid11"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="menuTypeData" idColumn="typeCode">
      <column label="菜单类号" name="typeCode" type="String" xid="xid12"/>  
      <column label="菜单分类名" name="typeName" type="String" xid="xid13"/>  
      <column label="当前类型点单数量" name="qty" type="Integer" xid="xid47"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsListData" idColumn="goodsId"> 
      <column label="商品id" name="goodsId" type="String" xid="xid14"/>  
      <column label="商品名称" name="goodsName" type="String" xid="xid15"/>  
      <column name="sprice" type="Double" xid="xid18"/>  
      <column label="商品数量" name="qty" type="String" xid="xid19"/>  
      <column label="商品类型" name="typeCode" type="String" xid="xid46"/>  
      <column label="单位" name="unitId" type="String" xid="xid55"/>
    </div>
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentDeskData" idColumn="tai_number"> 
      <column label="台号" name="tai_number" type="String" xid="default11"></column>
  <column label="状态" name="state" type="String" xid="default12"></column>
  <column label="房号id" name="roomId" type="String" xid="default13"></column>
  <column label="订单号" name="billMasterId" type="String" xid="default2"></column>
  <column label="台" name="roomCode" type="String" xid="xid17"></column>
  <column name="typeCode" type="String" xid="xid50"></column>
  <column name="custQty" type="Integer" xid="xid52"></column>
  <column label="消费房间id" name="consumeRoomId" type="String" xid="xid53"></column>
  <column label="用于退菜" name="billDetailId" type="String" xid="xid139"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cartData" idColumn="goodsId" confirmDelete="false"> 
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
  <column name="unitId" type="String" xid="xid63"></column>
  <column label="显示礼物数量" name="gift" type="String" xid="xid152"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="orderData" idColumn="col4">
      <column name="col4" type="String" xid="xid20"></column>
  <column name="goodsName" type="String" xid="xid21"></column>
  <column name="price" type="Double" xid="xid22"></column>
  <column name="addMoney" type="Double" xid="xid23"></column>
  <column name="qty" type="Integer" xid="xid24"></column>
  <column name="totalPrice" type="Double" xid="xid42"></column>
  <column name="billDetailId" type="String" xid="xid64"></column>
  <column name="cancelQty" type="String" xid="xid140"></column>
  <column name="checkOutQty" type="Integer" xid="xid142"></column>
  <rule xid="rule3">
   <col name="totalPrice" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default20">(val('price')+val('addMoney'))*(val('qty')-val('cancelQty'))</expr></calculate> </col> </rule>
  <column name="unitName" type="String" xid="xid147"></column>
  <column name="presentQty" type="Integer" xid="xid148"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="statusData" idColumn="col2" autoNew="true">
      <column name="col2" type="String" xid="xid27"></column>
  <column label="订单总价" name="orderTotal" type="Double" xid="xid25"></column>
  <column label="购物车总价" name="cartTotal" type="Double" xid="xid26"></column>
  <column label="房间层数类型" name="typeCode" type="String" xid="xid123"></column>
  <column name="totalCheckOutMoney" type="Double" xid="xid141"></column>
  <rule xid="rule1">
   <col name="orderTotal" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$model.orderData.sum('totalPrice')</expr></calculate> </col> 
   <col name="cartTotal" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3">$model.cartData.sum('totalPrice')</expr></calculate> </col> 
   <col name="totalCheckOutMoney" xid="ruleCol9">
    <calculate xid="calculate9">
     <expr xid="default49">$model.showBillData.sum('checkOutMoney')</expr></calculate> </col> </rule>
  <column label="埋单按钮名字" name="checkBtn" type="String" xid="xid149"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentGoodsData" idColumn="goodsId"> 
      <column label="商品id" name="goodsId" type="String" xid="default5"></column>
  <column label="商品名称" name="goodsName" type="String" xid="default7"></column>
  <column name="sprice" type="Double" xid="default4"></column>
  <column label="商品数量" name="qty" type="Integer" xid="default6"></column>
  <column name="addMoney" type="Double" xid="xid29"></column>
  <rule xid="rule4">
   <col name="addMoney" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default21">$model.currentCookWayData.sum(&quot;addMoney&quot;)</expr></calculate> </col> </rule>
  <column name="typeCode" type="String" xid="xid124"></column>
  <column name="gift" type="String" xid="xid153"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cookTypeData" idColumn="typeCode">
      <column name="typeCode" type="String" xid="xid30"/>  
      <column name="typeName" type="String" xid="xid31"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cookTypeDetailData" idColumn="col3">
      <column name="col3" type="String" xid="xid32"/>  
      <column name="cookWayId" type="String" xid="xid33"/>  
      <column name="addMoney" type="Double" xid="xid34"/>  
      <column name="cookWay" type="String" xid="xid35"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentCookWayData" idColumn="col3"> 
      <column name="col3" type="String" xid="default14"></column>
  <column name="cookWayId" type="String" xid="default10"></column>
  <column name="addMoney" type="Double" xid="default9"></column>
  <column name="cookWay" type="String" xid="default8"></column>
  <column name="goodsId" type="String" xid="xid36"></column>
  <column name="detail" type="String" xid="xid39"></column>
  <column name="total" type="Double" xid="xid154"></column>
  <rule xid="rule8">
   <col name="total" xid="ruleCol10">
    <calculate xid="calculate10">
     <expr xid="default50">$model.currentCookWayData.sum(&quot;addMoney&quot;)</expr></calculate> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sendCookWayData" idColumn="col3" confirmDelete="false"> 
      <column name="col3" type="String" xid="default18"/>  
      <column name="cookWayId" type="String" xid="default17"/>  
      <column name="addMoney" type="Double" xid="default16"/>  
      <column name="cookWay" type="String" xid="default15"/>  
      <column name="goodsId" type="String" xid="xid37"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="deletingCookWayData" idColumn="col0">
      <column name="col0" type="String" xid="xid43"/>  
      <column name="cookWayId" type="String" xid="xid44"/>  
      <column name="goodsId" type="String" xid="xid45"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="mergeRoomData" idColumn="tai_number"> 
      <column label="台号" name="tai_number" type="String" xid="default26"/>  
      <column label="状态" name="state" type="String" xid="default25"/>  
      <column label="房号id" name="roomId" type="String" xid="default24"/>  
      <column label="订单号" name="billMasterId" type="String" xid="default23"/>  
      <column label="台" name="roomCode" type="String" xid="default22"/>  
      <column name="typeCode" type="String" xid="default27"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="presents" idColumn="goodsId" confirmDelete="false"> 
      <column label="商品id" name="goodsId" type="String" xid="column8"/>  
      <column label="商品名称" name="goodsName" type="String" xid="column12"/>  
      <column name="sprice" type="Double" xid="column7"/>  
      <column label="商品数量" name="qty" type="Integer" xid="column10"/>  
      <column name="addMoney" type="Double" xid="column11"/>  
      <column name="cookWay" type="String" xid="column9"/>  
      <column name="totalPrice" type="Double" xid="column5"/>  
      <column name="typeCode" type="String" xid="column6"/>  
      <rule xid="rule5"> 
        <col name="totalPrice" xid="ruleCol6"> 
          <calculate xid="calculate6"> 
            <expr xid="default28">(val('sprice')+val('addMoney'))*val('qty')</expr>
          </calculate> 
        </col> 
      </rule> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="presentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh">
      <column name="col0" type="String" xid="xid56"></column>
  <column name="tfzReasonId" type="Integer" xid="xid57"></column>
  <column name="zReason" type="String" xid="xid58"></column>
  <column name="zReasonCode" type="String" xid="xid59"></column>
  <column name="zType" type="String" xid="xid60"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sendPresentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh"> 
      <column name="col0" type="String" xid="default31"></column>
  <column name="tfzReasonId" type="Integer" xid="default30"></column>
  <column name="qty" type="Integer" xid="xid61"></column>
  <column name="goodsId" type="String" xid="xid62"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentPresentsReasonData" idColumn="col0" onCustomRefresh="presentsDataCustomRefresh"> 
      <column name="col0" type="String" xid="default36"></column>
  <column name="tfzReasonId" type="Integer" xid="default35"></column>
  <column name="zReason" type="String" xid="default38"></column>
  <column name="zReasonCode" type="String" xid="default37"></column>
  <column name="zType" type="String" xid="default34"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentOrderData" idColumn="col4"> 
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
  <column name="billDetailId" type="String" xid="default43"></column>
  <column name="checkOutQty" type="Integer" xid="xid143"></column>
  <column name="cancelQty" type="Integer" xid="xid144"></column>
  <column name="unitName" type="String" xid="xid145"></column>
  <column name="presentQty" type="Integer" xid="xid146"></column>
  <column name="col11" type="String" xid="xid150"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cancelReasonData" idColumn="col0" onCustomRefresh="cancelReasonDataCustomRefresh"> 
      <column name="col0" type="String" xid="column15"></column>
  <column name="tfzReasonId" type="Integer" xid="column14"></column>
  <column name="zReason" type="String" xid="column17"></column>
  <column name="zReasonCode" type="String" xid="column16"></column>
  <column name="zType" type="String" xid="column13"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentCancelReasonData" idColumn="col0" onCustomRefresh="cancelReasonDataCustomRefresh"> 
      <column name="col0" type="String" xid="column21"></column>
  <column name="tfzReasonId" type="Integer" xid="column20"></column>
  <column name="zReason" type="String" xid="column18"></column>
  <column name="zReasonCode" type="String" xid="column22"></column>
  <column name="zType" type="String" xid="column19"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="showBillData" idColumn="col0" confirmRefresh="false">
      <column name="col0" type="String" xid="xid65"></column>
  <column name="goodsName" type="String" xid="xid66"></column>
  <column name="qty" type="String" xid="xid67"></column>
  <column name="checkOutMoney" type="String" xid="xid68"></column>
  <column name="totalMoney" type="String" xid="xid69"></column>
  <rule xid="rule7">
   <col name="totalMoney" xid="ruleCol8">
    <calculate xid="calculate8">
     <expr xid="default44">$model.showBillData.sum('checkOutMoney')</expr></calculate> </col> </rule>
  <column name="billMasterID" type="String" xid="xid70"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="discountTypesData" idColumn="col0" onCustomRefresh="discountTypesDataCustomRefresh">
      <column name="col0" type="String" xid="xid71"/>  
      <column name="discount" type="String" xid="xid72"/>  
      <column name="discountTypeId" type="String" xid="xid73"/>  
      <column name="discountTypeName" type="String" xid="xid74"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="currentDisCountTypesData" idColumn="col0" onCustomRefresh="discountTypesDataCustomRefresh"> 
      <column name="col0" type="String" xid="default45"/>  
      <column name="discount" type="String" xid="default47"/>  
      <column name="discountTypeId" type="String" xid="default46"/>  
      <column name="discountTypeName" type="String" xid="default48"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="searchGoodsData"> 
      <column label="商品id" name="goodsId" type="String" xid="xid14"/>  
      <column label="商品名称" name="goodsName" type="String" xid="xid15"/>  
      <column name="sprice" type="Double" xid="xid18"/>  
      <column label="商品数量" name="qty" type="String" xid="xid19"/>  
      <column label="商品类型" name="typeCode" type="String" xid="xid46"/>  
      <column label="单位" name="unitId" type="String" xid="xid55"/> 
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="ConsumeBillData" idColumn="billNO"><column name="billNO" type="String" xid="xid130"></column>
  <column name="cartNO" type="String" xid="xid131"></column>
  <column name="fullName" type="String" xid="xid132"></column>
  <column name="conMoney" type="String" xid="xid133"></column>
  <column name="serMoney" type="String" xid="xid134"></column>
  <column name="discountMoney" type="String" xid="xid135"></column>
  <column name="lowMoney" type="String" xid="xid136"></column>
  <column name="checkOutMoney" type="String" xid="xid137"></column>
  <column name="discount" type="String" xid="xid138"></column>
  <column name="col9" type="String" xid="xid151"></column></div></div>  
   <div xid="popOverLoaing" class="popOverLoaing">
   <div xid="div86" class="popOverLoaing-content">
    <div xid="div97">
     <p xid="p4">
      <span xid="span79" class="title"><![CDATA[message]]></span></p> 
     <p xid="p5">
      <span xid="span80" class="popOverLoading-content"><![CDATA[]]></span></p> </div> </div> </div><div xid="div545645646" class="loading">
   <span xid="span153">加载中，请稍后</span>
  </div>
   <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1" swipe="false"> 
    <div class="x-contents-content" xid="login"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel26"> 
        <div class="x-panel-content" xid="content50">
          <div xid="div48" class="login-wrap"> 
            <div xid="div52"> 
              <h2 xid="h21" bind-text="language.val('WELCOME')" class="big-title"><![CDATA[]]></h2>
            </div>  
            <div xid="div56"> 
              <h4 xid="h41" class="login-error-info login-error-info-a" bind-text="language.val('CHECKLOGIN')"><![CDATA[]]></h4>  
              <h4 xid="h42" class="login-error-info login-error-info-b" bind-text="language.val('USERORPWD')"><![CDATA[]]></h4>
              <div class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"
                xid="form1"> 
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelInput1"> 
                  <label class="x-label" xid="label1" bind-text="language.val('USERNAME')">用户名:</label>  
                  <input component="$UI/system/components/justep/input/input"
                    class="form-control x-edit" xid="userName" />
                </div>  
                <div component="$UI/system/components/justep/labelEdit/labelEdit"
                  class="x-label-edit x-label30" xid="labelPassword1"> 
                  <label class="x-label" xid="label2" bind-text="language.val('PASSWORD')">密码:</label>  
                  <input component="$UI/system/components/justep/input/password"
                    class="form-control x-edit" xid="userPwd" />
                </div>  
                <p xid="p79" class="login-wrap"> 
                  <div component="$UI/system/components/bootstrap/row/row"
                    class="row" xid="row1"> 
                    <div class="col col-xs-6" xid="col2"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-default btn-exit" label="退出" xid="exit" onClick="exitClick"> 
                        <i xid="i17"/>  
                        <span xid="span86" bind-text="language.val('EXIT')">退出</span>
                      </a> 
                    </div>  
                    <div class="col col-xs-6" xid="col3"> 
                      <a component="$UI/system/components/justep/button/button"
                        class="btn btn-success btn-login" label="登录" xid="login1"
                        bind-click="login_btnClick"> 
                        <i xid="i16"/>  
                        <span xid="span85" bind-text="language.val('LOGIN')">登录</span>
                      </a> 
                    </div> 
                  </div> 
                </p> 
              </div> 
            </div> 
          </div>  
          <div xid="div160" class="login-check"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row34"> 
              <div class="col col-xs-6" xid="col100">
                <span class="x-checkbox" xid="checkbox2">
                <input type="checkbox" id="rememberPwd" checked="true"/>
                <label for="rememberPwd" bind-text="language.ref('REMEMBERPASSWORD')">记住密码</label>
                </span>
              </div>  
              <div class="col col-xs-6" xid="col101">
       
              <span class="x-checkbox" xid="checkbox1"> <input type="checkbox" id="autoLogin"/>
                <label for="autoLogin" bind-text="language.ref('AUTOLOGIN')">自动登录</label></span></div> 
            </div>
          </div> 
        </div>  
        <div class="x-panel-bottom login-bottom" xid="bottom21"> 
          <span xid="span94" class="bottom-copy">CopyRight©启旭科技有限公司</span>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-style p30"
            label="设置" xid="button70" bind-click="button70Click"> 
            <i xid="i70"/>  
            <span xid="span40" bind-text="language.ref('SETTING')">设置</span>
          </a>
          <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-style p30"
            label="语言" xid="languageBtn" onClick="languageBtnClick"> 
            <i xid="i38"/>  
            <span xid="span95" bind-text="language.ref('LANGUAGE')">语言</span>
          </a>
        </div>
      </div>
    </div>  
    <div class="x-contents-content index" xid="index" onActive="indexActive"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top menu-wrap" xid="top1" height="40"> 
          <div component="$UI/system/components/justep/list/list" class="x-list menu-con"
            xid="list1" data="roomData"> 
            <ul class="x-list-template clearfix" xid="listTemplateUl1"> 
              <li xid="li10" class="top-menu-li" bind-click="li10Click"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output" xid="output2" bind-ref="ref('typeName')"/> 
              </li> 
            </ul> 
          </div>
        </div>  
        <div class="x-panel-content content-wrap" xid="content2"> 
          <div xid="div4" class="main-con clearfix"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list2" data="deskData"> 
              <ul class="x-list-template clearfix main-ul" xid="listTemplateUl2"> 
                <li xid="li1" bind-attr-roomId="val('roomId')" bind-attr-state="val('state')"
                  bind-attr-tai_number="val('tai_number')" bind-attr-consumeRoomId="val('consumeRoomId')"
                  bind-attr-custQty="val('custQty')" bind-attr-billMasterId="val('billMasterId')" bind-touchstart="li1Touchstart" 
                  bind-touchend="li1Touchend" bind-touchmove="li1Touchmove" bind-css="{'blue':val('color')=='blue','gray':val('color')=='gray','yellow':val('color')=='yellow','red':val('color')=='red','green':val('color')=='green'}"> 
                  <div xid="div5" class="table-con use"> 
                    <p xid="p87"> 
                      <div component="$UI/system/components/justep/output/output"
                        class="x-output" xid="roomNum" id="roomNum" style="color:#FFFFFF;"
                        bind-text=" $model.language.val(&quot;&quot;+val('stateLang')+&quot;&quot;)"/> 
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
          <div xid="more" class="more-wrap" id="more"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row"
              xid="row3"> 
              <div class="col col-xs-4" xid="col4"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 搭台 " xid="button18" bind-click="button18Click"> 
                  <i xid="i20"/>  
                  <span xid="span8" bind-text="language.ref('STAGE')">搭台</span> 
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col5"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="并台 " xid="button20" bind-click="button20Click"> 
                  <i xid="i22"/>  
                  <span xid="span9" bind-text="language.ref('COMBINE')">并台</span> 
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col6"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="转台" xid="button21" bind-click="button21Click"> 
                  <i xid="i23"/>  
                  <span xid="span10" bind-text="language.ref('TURNTABLE')">转台</span> 
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col7"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 零结账" xid="button22" onClick="button22Click"> 
                  <i xid="i24"/>  
                  <span xid="span11" bind-text="language.ref('ZERO')">零结账</span> 
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col8"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="埋单" xid="button23" onClick="button23Click"> 
                  <i xid="i25"/>  
                  <span xid="span12" bind-text="language.ref('PAY')">埋单</span> 
                </a> 
              </div>  
              <div class="col col-xs-4" xid="col9"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label=" 点菜" xid="button24" target="menu"> 
                  <i xid="i26"/>  
                  <span xid="span13" bind-text="language.ref('ORDER')">点菜</span> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom bottom-wrap" xid="bottom1"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row w100"
            xid="row40"> 
            <div class="col col-xs-4" xid="col111"/>  
            <div class="col col-xs-4" xid="col112"><a component="$UI/system/components/justep/button/button" class="btn btn-warning cancel-active" label="取消" xid="button4" bind-click="button4Click">
   <i xid="i4"></i>
   <span xid="span83" bind-text="language.ref('CANCEL')">取消</span></a></div>  
            <div class="col col-xs-4" xid="col113">
              <a component="$UI/system/components/justep/button/button" class="btn btn-warning"
                label="注销" xid="button1" target="login"> 
                <i xid="i1"/>  
                <span xid="span1" bind-text="language.ref('CANCELLATION')">注销</span>
              </a>
            </div>
          </div>
        </div> 
      </div> 
    </div>  
    <div class="x-contents-content" xid="menu" onActive="menuActive"> 
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-top" xid="top2"> 
          <div xid="div39" class="menu-title-wrap">
            <div xid="div3" class="menu-title">
              <h5 xid="h51" bind-text="language.ref('MENU')"><![CDATA[菜单]]></h5>
            </div>
            <div xid="div2" class="menu-all">
              <span>共
                <b bind-text="$model.cartData.sum('qty') " class="color-price">0</b>份
              </span>
              <span> 
                <b bind-text="statusData.val('cartTotal')" class="color-price">0</b>元
              </span>
            </div>
          </div>
        </div>  
        <div class="x-panel-content home" xid="content4"> 
          <div xid="left-menu" class="left-menu"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list3" data="menuTypeData"> 
              <ul class="x-list-template" xid="listTemplateUl3"> 
                <li xid="li2" bind-click="li2Click">
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output5" bind-ref="ref('typeName')"/>  
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output count" xid="output6" bind-ref="ref('qty')" bind-visible="val('qty')&gt;0"/>
                </li>
              </ul> 
            </div>
          </div>  
          <div xid="right-main" class="right-main"> 
            <div component="$UI/system/components/justep/list/list" class="x-list"
              xid="list6" data="goodsListData"> 
              <ul class="x-list-template" xid="listTemplateUl6"> 
                <li xid="li3">
                  <ul xid="ul4"> 
                    <li xid="li32" bind-text="val('goodsName')"> 
                      <h3 xid="h31" bind-text="val('goodsName')">菜名</h3> 
                    </li>  
                    <li class="clearfix"> 
                      <p class="price fl" xid="span177" bind-text="val('sprice')">0.00</p>  
                      <p class="number fr" xid="span178"> 
                        <img class="subtract" xid="image1" bind-attr-src="$model.getImageUrl(&quot;./images/jiangreen.png&quot;)"
                          bind-click="image1Click"/>  
                        <label xid="qty" class="num" bind-text="val('qty')">label</label>
                        <img class="add" xid="image2" bind-attr-src="$model.getImageUrl(&quot;./images/jiagreen.png&quot;)"
                          bind-click="image2Click"/> 
                      </p> 
                    </li> 
                  </ul>
                </li>
              </ul>
            </div> 
          </div> 
        </div>  
        <div class="x-panel-bottom menu-bottom-wrap" xid="bottom2"> 
          <div xid="div105" class="menu-bottom"> 
            
            
          
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row18">
   <div class="col col-xs-3" xid="col57"><a component="$UI/system/components/justep/button/button" class="btn btn-style" xid="m-search" label="按拼音点菜" target="menu-search" onClick="m_searchClick"> 
              <i xid="i5" />  
              <span xid="span92" bind-text="language.ref('ORDERBYALPHABET')">按拼音点菜</span>
            </a></div>
   <div class="col col-xs-3" xid="col59"><a component="$UI/system/components/justep/button/button" class="btn btn-style" label="手写单" xid="handOrderBtn" target="handOrder" onClick="handOrderBtnClick">
   <i xid="i12"></i>
   <span xid="span115" bind-text="language.ref('HANDWRITINGORDER')">手写单</span></a></div>
   <div class="col col-xs-3" xid="col60"><a component="$UI/system/components/justep/button/button" class="btn btn-style" label="已点详情" xid="button9" bind-click="button9Click"> 
              <i xid="i9" />  
              <span xid="span181" bind-text="language.ref('ALREADYPOINTDETAILS')">已点详情</span> 
            </a></div>
  <div class="col col-xs-3" xid="col61"><a component="$UI/system/components/justep/button/button" class="btn back-btn" xid="button19" bind-click="button19Click" label="返回"> 
              <i xid="i21" />  
              <span xid="span41" bind-text="language.ref('BACK')">返回</span>
            </a></div></div></div>  
          </div> 
      </div> 
    </div>  
    <div class="x-contents-content menu-search" xid="menu-search">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel3"> 
        <div class="x-panel-top" xid="top3"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
            xid="titleBar4" title="按拼音或编码查找" bind-text=' $model.language.val("ORDERBYALPHABET")'> 
            <div class="x-titlebar-left" xid="div45"></div>  
            <div class="x-titlebar-title" xid="div47">按拼音或编码查找</div>  
            <div class="x-titlebar-right reverse" xid="div46"/>
          </div> 
        </div>  
        <div class="x-panel-content " xid="content22"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
            xid="panel11"> 
            <div class="x-panel-top" xid="top6">
              <div xid="div37">
                <div component="$UI/system/components/bootstrap/row/row" class="row w100"
                  xid="row37"> 
                  <div class="col col-xs-9" xid="col105">
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" xid="searchGoodsInput"/>
                  </div>  
                  <div class="col col-xs-3" xid="col106">
                    <a component="$UI/system/components/justep/button/button"
                      class="btn btn-style" label="搜索" xid="searchGoodsBtn" onClick="searchGoodsBtnClick"> 
                      <i xid="i14"/>  
                      <span xid="span139" bind-text="language.ref('SEARCH')">搜索</span>
                    </a>
                  </div> 
                </div> 
              </div>
            </div>  
            <div class="x-panel-content goodsList" xid="content5">
              <div xid="div42" class="div42"> 
                <div component="$UI/system/components/bootstrap/row/row" class="row"
                  xid="row36"> 
                  <div component="$UI/system/components/justep/list/list" class="x-list"
                    xid="list15" data="searchGoodsData"> 
                    <ul class="x-list-template" xid="listTemplateUl16"> 
                      <div class="col col-xs-6 count-radius-parent" xid="col45"
                        bind-click="col45Click"> 
                        <span xid="span37" bind-text="val('goodsName')"/>
                        <span xid="span2" class="count-radius" bind-text="ref('qty')"
                          bind-visible="val('qty')&gt;0"/>
                      </div>
                    </ul> 
                  </div> 
                </div>
              </div> 
            </div> 
          </div>
        </div>  
        <div class="x-panel-bottom menu-bottom-wrap" xid="bottom3"> 
          <div xid="div53" class="menu-bottom-right"> 
            <a component="$UI/system/components/justep/button/button" class="btn back-btn"
              label="返回菜单" xid="button12" target="menu"> 
              <i xid="i6"/>  
              <span xid="span136" bind-text="language.ref('RETURNMENU')">返回菜单</span>
            </a> 
          </div> 
        </div> 
      </div>
    </div> 
  <div class="x-contents-content handOrder" xid="handOrder" onActive="handOrderActive"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel23">
   <div class="x-panel-top" xid="top21"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar14" title="手写单" bind-text=' $model.language.val("HANDWRITINGORDER")'>
   <div class="x-titlebar-left" xid="div63"></div>
   <div class="x-titlebar-title" xid="div69">手写单</div>
   <div class="x-titlebar-right reverse" xid="div70"></div></div></div>
   <div class="x-panel-content" xid="content44"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput9">
   <label class="x-label" xid="label15" bind-text="language.ref('DISHNAME')"><![CDATA[菜名]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="handGoodsName"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput19">
   <label class="x-label" xid="label21" bind-text="language.ref('PRICES')"><![CDATA[价钱]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="handGoodsPrice" dataType="Float"></input></div>
  
  
  <div component="$UI/system/components/bootstrap/row/row" class="row handOrder-btn-wrap  p-top20" xid="row15">
   <div class="col col-xs-4" xid="col38"><img src="$UI/orderSystem/images/jiangreen.png" alt="" xid="image3" bind-click="button14OrderHandClick"></img></div>
   <div class="col col-xs-4 handInput" xid="col39"><input component="$UI/system/components/justep/input/input" class="form-control" xid="handGoodsQty" dataType="Integer"></input></div>
   <div class="col col-xs-4" xid="col44"><img src="$UI/orderSystem/images/jiagreen.png" alt="" xid="image4" bind-click="button15orderHandClick"></img></div></div></div>
   <div class="x-panel-bottom" xid="bottom5"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
  <div component="$UI/system/components/bootstrap/row/row" class="row handOrder-btn-wrap" xid="row17">
   <div class="col col-xs-6" xid="col54"><a component="$UI/system/components/justep/button/button" class="btn back-btn" label="返回菜单" xid="buttonHandBack" target="menu">
    <i xid="i15"></i>
    <span xid="span119" bind-text="language.ref('RETURNMENU')">返回菜单</span></a></div>
   <div class="col col-xs-6" xid="col55"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-style " label="确定" xid="button36" onClick="button36Click">
   <i xid="i71"></i>
   <span xid="span122" bind-text="language.ref('CONFIRM')">确定</span></a></div>
   </div></div></div></div></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver renShu"
    xid="popOver_renshu" opacity="1"> 
    <div class="x-popOver-overlay" xid="div1"/>  
    <div class="x-popOver-content con-wrap" xid="div6">
      <div xid="div7" class="con-con">
        <h2 xid="h22" bind-text="language.val('INPUTNUM')"><![CDATA[请输入就餐人数]]></h2>
        <input component="$UI/system/components/justep/input/input" class="form-control"
          xid="input1" dataType="Integer" autoFocus="true"/>
        <div xid="div8" class="btn-wrap">
          
           
        
  <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row61">
   <div class="col col-xs-6" xid="col164"><a component="$UI/system/components/justep/button/button" class="btn btn-default undo-btn" label="取消" xid="button17" onClick="button17Click"> 
            <i xid="i19" />  
            <span xid="span6" bind-text="language.val('CANCEL')">取消</span>
          </a></div>
   <div class="col col-xs-6" xid="col165"><a component="$UI/system/components/justep/button/button" class="btn btn-default do-btn" label="确认" xid="button16" onClick="button16Click"> 
            <i xid="i18" />  
            <span xid="span5" bind-text="language.val('CONFIRM')">确认</span>
          </a></div>
   </div></div>
      </div> 
    </div>
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver take"
    xid="popOver-take" opacity="1"> 
    <div class="x-popOver-overlay" xid="div10"/>  
    <div class="x-popOver-content con-wrap" xid="div11">
      <div xid="div13" class="con-con"> 
        <div xid="div16" class="pop-title">
          <h2 xid="h23" bind-text="language.val('STAGE')"><![CDATA[【搭  台】]]> </h2>
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelInput2"> 
            <label class="x-label" xid="label3" bind-text="language.ref('AHO')"><![CDATA[台号]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input3" placeHolder="台号" bind-ref="currentDeskData.ref('tai_number')"
              readonly="true"/>
          </div>
          <div component="$UI/system/components/justep/labelEdit/labelEdit"
            class="x-label-edit x-label30" xid="labelInput3"> 
            <label class="x-label" xid="label5" bind-text="language.ref('NNT')"><![CDATA[人数]]></label>  
            <input component="$UI/system/components/justep/input/input" class="form-control x-edit"
              xid="input4" placeHolder="请输入人数" dataType="Integer"/>
          </div>
        </div>  
        <div xid="div12" class="btn-wrap"> 
          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row62">
   <div class="col col-xs-6" xid="col167">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default undo-btn" label="取消" xid="button15" bind-click="button26Click">
   <i xid="i69"></i>
   <span xid="span14" bind-text="language.ref('CANCEL')">取消</span></a></div> 
   <div class="col col-xs-6" xid="col168">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default do-btn" label="确认" xid="button25" onClick="button25Click">
   <i xid="i71"></i>
   <span xid="span15" bind-text="language.ref('CONFIRM')">确认</span></a></div> </div></div> 
      </div>
    </div>
  </div>  
  
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="message" style="left:77px;top:34px;" /><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="order" style="box-shadow:0 0px 2px 2px #c9B9B9;" opacity="1"> 
    <div class="x-popOver-overlay" xid="div10"/>  
    <div class="x-popOver-content  pop-container" xid="div11" style="width:95%;height:96%;"> 
      <div xid="div12" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel7"> 
          <div class="x-panel-top" xid="top7" height="48"> 
            <div component="$UI/system/components/justep/button/buttonGroup"
              class="btn-group btn-group-justified order-info-title-btn" tabbed="true"
              xid="buttonGroup2"> 
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="没分单" xid="button27" target="content12"> 
                <i xid="i29"/>  
                <span xid="span29" bind-text="language.ref('NOSORT')">没分单</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="已分单" xid="button28" target="content13" onClick="button28Click"> 
                <i xid="i30"/>  
                <span xid="span30" bind-text="language.ref('COMPLETESORT')">已分单</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn x-main-color"
                label="结账单" xid="button29" target="content14" onClick="button29Click"> 
                <i xid="i31"/>  
                <span xid="span31" bind-text="language.ref('SETTLEMENT')">结账单</span> 
              </a> 
            </div> 
          </div>  
          <div class="x-panel-content" xid="content11"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents3"> 
              <div class="x-contents-content" xid="content12"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel27"> 
                  <div class="x-panel-content" xid="content52">
                    <div xid="div16" class="pop-con pop-menuSub-wrap"> 
                      <div class="menuSub-hide" xid="div18" bind-click="menuSubHide"></div>  
                      <div xid="pop-menuSub-btn" class="pop-menuSub-btn no-single"> 
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row8"> 
                          <div class="col col-xs-4" xid="col30"> 
                            <span xid="span32" bind-click="span32Click" bind-text="language.ref('DISHNAME')"><![CDATA[菜名]]></span> 
                          </div>  
                          <div class="col col-xs-4" xid="col31"> 
                            <span xid="span33" bind-click="span33Click" bind-text="language.ref('PRICES')"><![CDATA[价格]]></span> 
                          </div>  
                          <div class="col col-xs-4" xid="col32"> 
                            <span xid="span34" bind-click="span34Click" bind-text="language.ref('QUANTITY')"><![CDATA[数量]]></span> 
                          </div> 
                        </div>  
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row9"> 
                          <div class="col col-xs-4" xid="col33"> 
                            <span xid="span35" bind-click="span35Click" bind-text="language.ref('GIVE')"><![CDATA[赠送]]></span> 
                          </div>  
                          <div class="col col-xs-4" xid="col34"> 
                            <span xid="span36" bind-text="language.ref('POLYPHAGIA')"><![CDATA[多食]]></span> 
                          </div>  
                          <div class="col col-xs-4" xid="col25"> 
                            <span xid="span20" bind-click="button13Click" bind-text="language.ref('TASTE')"><![CDATA[口味]]></span>
                          </div>
                        </div>  
                        <div component="$UI/system/components/bootstrap/row/row"
                          class="row" xid="row5"> 
                          <div class="col col-xs-4" xid="col24"> 
                            <span xid="span21" bind-click="button14Click" bind-text="language.ref('REQUIRE')"><![CDATA[要求]]></span>
                          </div>  
                          <div class="col col-xs-4" xid="col58"> 
                            <span xid="span28" bind-click="button15Click" bind-text="language.ref('OTHER')">其它</span>
                          </div>  
                          <div class="col col-xs-4" xid="col17"> 
                            <span xid="span131" bind-click="menuSubHide" bind-text="language.ref('BACK')"
                              class="back">返回</span>
                          </div>
                        </div>
                      </div> 
                    </div>
                    <div component="$UI/system/components/justep/panel/panel"
                      class="x-panel x-full con-con" xid="panel28"> 
                      <div class="x-panel-top" xid="top11" height="56">
                        <p class="no-send order-info-title" xid="p10"> 
                          <span xid="span91" bind-text="language.val('TOTALQ')+':'">总数量：</span>  
                          <span xid="span24" bind-text="$model.cartData.sum('qty')"
                            class="color-price"/>  
                          <span xid="span84" bind-text="language.val('TOTALPRICESYUN')+':'"
                            class="ml20"/>  
                          <span xid="span23" bind-text="$model.statusData.val(&quot;cartTotal&quot;)"
                            class="color-price"/>
                        </p>  
                        <div xid="div14" class="pop-con-title"> 
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row4"> 
                            <div class="col col-xs-5dot2 " xid="col10"> 
                              <span xid="span53" bind-text="language.ref('DISHNAME')">菜名</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col11"> 
                              <span xid="span54" bind-text="language.ref('PRICE')">单价</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col12"> 
                              <span xid="span55" bind-text="language.ref('QUANTITY')">数量</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col13"> 
                              <span xid="span56" bind-text="language.ref('ADDED')">加收</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col18"> 
                              <span xid="span61" bind-text="language.ref('TOTALPRICES')">总价</span>
                            </div> 
                          </div> 
                        </div>
                      </div>  
                      <div class="x-panel-content" xid="content21">
                        <div component="$UI/system/components/justep/list/list"
                          class="x-list" xid="list10" data="cartData"> 
                          <ul class="x-list-template" xid="listTemplateUl10"> 
                            <li xid="li8" bind-click="li8Click"> 
                              <div component="$UI/system/components/bootstrap/row/row"
                                class="row" xid="row6"> 
                                <div class="col col-xs-5dot2" xid="col19"> 
                                  <span xid="span62" bind-text="val('goodsName')">菜名</span>
                                <span xid="span16gift" bind-visible="val('gift')!=undefined" bind-text="'赠'+val('gift')"><![CDATA[]]></span></div>  
                                <div class="col col-xs-1dot7" xid="col22"> 
                                  <span xid="span63" bind-text="val('sprice')">单价</span>
                                </div>  
                                <div class="col col-xs-1dot7" xid="col21"> 
                                  <span xid="span64" bind-text="val('qty')"
                                    class="color-price">数量</span>
                                </div>  
                                <div class="col col-xs-1dot7" xid="col20"> 
                                  <span xid="span65" bind-text="val('addMoney')">加收</span>
                                </div>  
                                <div class="col col-xs-1dot7" xid="col23"> 
                                  <span xid="span66" bind-text="val('sprice') * val('qty')+val('addMoney')"
                                    class="color-price">总价</span>
                                </div> 
                              </div> 
                            </li> 
                          </ul> 
                        </div> 
                      </div>  
                      <div class="x-panel-bottom" xid="bottom8" height="35">
                        <div xid="div32" class="pop-menu-btn"> 
                          <div component="$UI/system/components/justep/button/buttonGroup"
                            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup3"> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-link btn-only-icon" xid="button30" icon="icon-android-add"
                              bind-click="a1Click"> 
                              <i xid="i32" class="icon-android-add color-style"/>  
                              <span xid="span67"/> 
                            </a>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-link btn-only-icon" xid="button31" icon="icon-android-remove"
                              bind-click="a2Click"> 
                              <i xid="i33" class="icon-android-remove color-style"/>  
                              <span xid="span68"/> 
                            </a>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-link btn-only-icon" xid="button32" icon="icon-close"
                              bind-click="button32Click"> 
                              <i xid="i34" class="icon-close delete-color"/>  
                              <span xid="span69"/> 
                            </a>  
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-link" xid="button33" bind-click="menuSubShow"
                              label="更多"> 
                              <i xid="i35"/>  
                              <span xid="span70" class="color-style" bind-text="language.val('MORE')">更多</span> 
                            </a> 
                          </div> 
                        </div>
                      </div>
                    </div>
                  </div>  
                  <div class="x-panel-bottom" xid="bottom22">
                    <div xid="div20" class="bottom-wrap"> 
                      <div xid="div21" class="pop-bottom-left order-info-all-btn"> 
                        </div>  
                      <div xid="div22" class="poop-bottom-right"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn send-order-btn btn-style" label="送单" xid="button26"
                          onClick="button5Click"> 
                          <i xid="i28"/>  
                          <span xid="span19" bind-text="language.ref('SENDSHEET')">送单</span> 
                        </a>
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-default close-btn" label="关闭" xid="closeBtn"
                          bind-click="closeBtnClick"> 
                          <i xid="i27"/>  
                          <span xid="span18" bind-text="language.ref('CLOSE')">关闭</span> 
                        </a> 
                      </div> 
                    </div>
                  </div>
                </div> 
              </div>  
              <div class="x-contents-content" xid="content13"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel23">
   <div class="x-panel-content" xid="content38"><div xid="div28" class="pop-con pop-menuSub-wrap"> 
                  <div class="menuSub-hide" xid="div17" bind-click="menuSubHide"></div>  
                  <div class="pop-menuSub-btn has-single"> 
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row8"> 
                      <div class="col col-xs-4" xid="col32"> 
                        <span xid="hspan34" bind-click="hspan34Click" bind-text="language.val('URGE')"><![CDATA[催菜]]></span> 
                      </div> 
                    <div class="col col-xs-4" xid="col56"> 
                        <span xid="hspan35" bind-click="hspan35Click" bind-text="language.ref('GIVE')">赠送</span>
                      </div><div class="col col-xs-4" xid="col35"> 
                        <span xid="hspan36" bind-text="language.ref('SINGLEDISCOUNT')">单品打折</span>
                      </div></div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row9"> 
                      <div class="col col-xs-4" xid="col68"> 
                        <span xid="hspan94" bind-click="hspan94Click" bind-text="language.ref('CALLUP')">叫起</span>
                      </div>  
                        
                       
                    <div class="col col-xs-4" xid="col69"> 
                        <span xid="hspan95" bind-click="hspan95Click" bind-text="language.ref('ALLCALLUP')">全单叫起</span>
                      </div><div class="col col-xs-4" xid="col104"> 
                        <span xid="hspan37" bind-click="hspan37Click" bind-text="language.ref('ALLURGE')">全单催菜</span>
                      </div></div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row11"> 
                        
                        
                      <div class="col col-xs-4" xid="col14"> 
                        </div>
                    <div class="col col-xs-4" xid="col42">
   </div>
  <div class="col col-xs-4" xid="col43">
   <span xid="span119" bind-click="menuSubHide" class="back" bind-text="language.ref('BACK')">返回</span></div></div>
                  </div> 
                </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full con-con" xid="panel30"> 
                  <div class="x-panel-top" xid="top23" height="56">
                    <p class="no-send order-info-title" xid="p1"> 
                      <span xid="span75" bind-text="language.val('TOTALQ')+':'">总数量：</span>  
                      <span xid="span22" bind-text="$model.orderData.sum('qty')-$model.orderData.sum('cancelQty')" class="color-price" />  
                      <span xid="span22" bind-text="language.val('TOTALPRICESYUN')+':'" class="ml20" />  
                      <span xid="span25" class="color-price" bind-text="statusData.ref('orderTotal')" />
                    </p>  
                    <div xid="div15" class="pop-con-title"> 
                      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row35"> 
                        <div class="col col-xs-5dot2 " xid="col83"> 
                          <span xid="span123" bind-text="language.ref('DISHNAME')">菜名</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col102"> 
                          <span xid="span124" bind-text="language.ref('PRICE')">单价</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col92"> 
                          <span xid="span125" bind-text="language.ref('QUANTITY')">数量</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col84"> 
                          <span xid="span129" bind-text="language.ref('ADDED')">加收</span>
                        </div>  
                        <div class="col col-xs-1dot7" xid="col103"> 
                          <span xid="span130" bind-text="language.ref('TOTALPRICES')">总价</span>
                        </div> 
                      </div> 
                    </div>
                  </div>  
                  <div class="x-panel-content" xid="content51">
                    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list11" data="orderData"> 
                      <ul class="x-list-template" xid="listTemplateUl11"> 
                        <li xid="horderli" bind-click="horderliClick"> 
                          <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row7"> 
                            <div class="col col-xs-5dot2" xid="col15"> 
                              <span xid="span27" bind-text="val('goodsName')">菜名</span>
                            <span xid="span149" bind-text="'退'+val('cancelQty')" bind-visible="val('cancelQty')&gt;0?true:false"></span>
  <span xid="span152" bind-visible="val('presentQty')&gt;0?true:false" bind-text="'赠'+val('presentQty')"></span></div>  
                            <div class="col col-xs-1dot7" xid="col29"> 
                              <span xid="span26" bind-text="val('price')">单价</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col27"> 
                              <span xid="span45" bind-text="val('qty')" class="color-price">数量</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col26"> 
                              <span xid="span44" bind-text="val('addMoney')">加收</span>
                            </div>  
                            <div class="col col-xs-1dot7" xid="col28"> 
                              <span xid="span43" bind-text="val('totalPrice')" class="color-price">总价</span>
                            </div> 
                          </div> 
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom" xid="bottom23" height="35">
                    <div xid="div68" class="pop-menu-btn"> 
                      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup4"> 
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button40" label="价格" bind-click="hspan32Click"> 
                          <i xid="i43" class="color-style" />  
                          <span xid="span51" class="color-style" bind-text="language.ref('PRICES')">价格</span> 
                        </a>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button45" label="数量" bind-click="hspan33Click"> 
                          <i xid="i42" class="color-style" />  
                          <span xid="span50" class="color-style" bind-text="language.ref('NUMBER')">数量</span> 
                        </a>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button42" label="退菜" bind-click="hspan40Click"> 
                          <i xid="i47" />  
                          <span xid="span49" class="color-style" bind-text="language.ref('CANCELFOOD')">退菜</span> 
                        </a>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button41" label="更多" bind-click="menuSubShow"> 
                          <i xid="i44" />  
                          <span xid="span48" class="color-style" bind-text="language.ref('MORE')">更多</span> 
                        </a> 
                      </div> 
                    </div>
                  </div>
                </div></div>
   <div class="x-panel-bottom" xid="bottom5"><div xid="div63" class="bottom-wrap">
   <div xid="div69" class="pop-bottom-left order-info-all-btn"></div>
   <div xid="div70" class="poop-bottom-right">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-default close-btn" label="关闭" xid="button13" bind-click="closeBtnClick">
     <i xid="i12"></i>
     <span xid="span115" bind-text="language.ref('CLOSE')">关闭</span></a> </div> </div></div></div>  
                
              </div>  
              <div class="x-contents-content" xid="content14">
                 
              <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel31">
   <div class="x-panel-content" xid="content44"><div xid="div23" class="have-wrap">
            <div xid="div72" class="have-con">
                    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="currentDeskData"> 
                      <ul class="x-list-template" xid="listTemplateUl4"> 
                        <li xid="li11" bind-text=" $object.val(&quot;tai_number&quot;)" style="text-align:center;font-size:18px;font-weight:bold;" />
                      </ul> 
                    </div>
                    <div component="$UI/system/components/bootstrap/row/row" class="row top-border" xid="row41"> 
                      <div class="col col-xs-6" xid="col109">
                        <h5 xid="h52" bind-text="ConsumeBillData.ref('billNO')"><![CDATA[管理员]]></h5>
                      </div>  
                      <div class="col col-xs-6" xid="col115">
                        <span xid="span132" bind-text="userData.ref('userName')"><![CDATA[]]></span>
                      </div> 
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row42"> 
                      <div class="col col-xs-4" xid="col119"> 
                        <h5 xid="h53" bind-text="language.ref('ODDNUM')"><![CDATA[原始单号]]></h5>
                      </div>  
                      <div class="col col-xs-8" xid="col118" /> 
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row43"> 
                      <div class="col col-xs-4" xid="col122"> 
                        <h5 xid="h54" bind-text="language.ref('MEMBERNUM')"><![CDATA[会员卡]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col121">
                        <span xid="span134" bind-text="ConsumeBillData.ref('fullName')" />
                      </div>  
                      <div class="col col-xs-4" xid="col120">
                        <span xid="span135" bind-text="ConsumeBillData.ref('cartNo')" />
                      </div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row44"> 
                      <div class="col col-xs-4" xid="col125"> 
                        <h5 xid="h55" bind-text="language.ref('TOTAL')"><![CDATA[消费合计]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col124" />  
                      <div class="col col-xs-4" xid="col123"><span xid="span133" bind-text="statusData.ref('orderTotal')"></span></div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row45"> 
                      <div class="col col-xs-4" xid="col128"> 
                        <h5 xid="h56" bind-text="language.ref('SERVICECHARGE')"><![CDATA[服务费]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col127">
                        <span xid="span137" />
                      </div>  
                      <div class="col col-xs-4" xid="col126">
                        <span xid="span138" bind-text="ConsumeBillData.ref('serMoney')" />
                      </div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row46"> 
                      <div class="col col-xs-4" xid="col131"> 
                        <h5 xid="h57" bind-text="language.ref('EDITOODNUM')"><![CDATA[折扣费]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col130">
                        <span xid="span140" bind-text="ConsumeBillData.ref('discount')" />
                      </div>  
                      <div class="col col-xs-4" xid="col129">
                        <span xid="span141" bind-text="ConsumeBillData.ref('discountMoney')" />
                      </div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row47"> 
                      <div class="col col-xs-4" xid="col134"> 
                        <h5 xid="h58" bind-text="language.ref('ACCRUEDEXP')"><![CDATA[应付合计]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col133">
                        <span xid="span142"><![CDATA[]]></span>
                      </div>  
                      <div class="col col-xs-4" xid="col132">
                        <span xid="span143" bind-text="ConsumeBillData.ref('checkOutMoney')"><![CDATA[22]]></span>
                      </div>
                    </div>  
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row48"> 
                      <div class="col col-xs-4" xid="col137"> 
                        <h5 xid="h59" bind-text="language.val('EDITMINIMUM')"><![CDATA[最低消费]]></h5>
                      </div>  
                      <div class="col col-xs-4" xid="col136">
                        <span xid="span144" />
                      </div>  
                      <div class="col col-xs-4" xid="col135">
                        <span xid="span145" bind-text="ConsumeBillData.ref('lowMoney')" />
                      </div>
                    </div>
                  </div>
                  <div xid="div73">
                    <div xid="div75" class="pop-menu-btn"> 
                      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup5"> 
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button46" label="预览结帐单" bind-click="span92Click"> 
                          <i xid="i50" />  
                          <span xid="span57" class="color-style" bind-text="language.ref('PREVIEWCHECKLIST')">预览结帐单</span>
                        </a>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button49" label="输入会员卡号" bind-click="button49Click"> 
                          <i xid="i48" />  
                          <span xid="span52" class="color-style" bind-text="language.ref('INPUTCARTNUM')">输入会员卡号</span>
                        </a>  
                        <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button47" label="更多" bind-click="menuSubShow"> 
                          <i xid="i49" />  
                          <span xid="span58" class="color-style" bind-text="language.ref('MORE')">更多</span>
                        </a> 
                      </div> 
                    </div>
                    
                  <div xid="div109" class="pop-menuSub-wrap"><div xid="div110" class="menuSub-hide" bind-click="menuSubHide"></div><div xid="div83" class="pop-menuSub-btn  statement-btn"> 
                      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row13"> 
                        <div class="col col-xs-4" xid="col48"> 
                          <span xid="span73" bind-text="language.val('EDITSERVER')"><![CDATA[修改原始单号]]></span>
                        </div>  
                        <div class="col col-xs-4" xid="col49"> 
                          <span xid="span74" bind-text="language.ref('CHANGESERVERRATE')"><![CDATA[修改服务费率]]></span>
                        </div>  
                        <div class="col col-xs-4" xid="col50"> 
                          <span xid="jspan75" bind-click="jspan75Click" bind-text="language.val('EDITPEOPLENUMBER')"><![CDATA[修改人数]]></span>
                        </div> 
                      </div>  
                      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row14"> 
                        <div class="col col-xs-4" xid="col46"> 
                          <span xid="span76" bind-text="language.ref('CHANGEMINICHARGE')">修改最低消费</span>
                        </div>  
                        <div class="col col-xs-4" xid="col53"> 
                          <span xid="span60" bind-click="span60Click" bind-text="language.ref('DISCOUNT')">打折</span>
                        </div>  
                        <div class="col col-xs-4" xid="col52"> 
                          <span xid="span71" bind-click="span71Click" bind-text="language.val('MEMBERDISCOUNT')">会员打折</span>
                        </div> 
                      </div>  
                      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row19"> 
                        <div class="col col-xs-4" xid="col51"> 
                          <span xid="span72" bind-click="span72Click" bind-text="language.val('ALLSHEET')">重打总单</span>
                        </div>  
                        <div class="col col-xs-4" xid="col47"> 
                          <span xid="span77" bind-click="span77Click"><![CDATA[]]></span>
                        </div>  
                        <div class="col col-xs-4" xid="col16"> 
                          <span xid="span17" bind-click="menuSubHide" class="back" bind-text="language.ref('BACK')">返回</span>
                        </div>
                      </div>
                    </div></div></div>
                </div></div>
   <div class="x-panel-bottom" xid="bottom20"><div xid="div153" class="bottom-wrap">
   <div xid="div154" class="pop-bottom-left order-info-all-btn"></div>
   <div xid="div155" class="poop-bottom-right">
    
    <a component="$UI/system/components/justep/button/button" class="btn btn-default close-btn" label="关闭" xid="button36" bind-click="closeBtnClick">
     <i xid="i39"></i>
     <span xid="span121" bind-text="language.ref('CLOSE')">关闭</span></a> </div> </div></div></div></div>
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOver2" opacity="1" style="box-shadow:0 0px 2px 2px #B9B9B9;"> 
    <div class="x-popOver-overlay" xid="div76"/>  
    <div class="x-popOver-content edit-add-wrap" xid="div77" style="width:95%;height:96%;"> 
      <div xid="div78" style="height:94%;" class="edit-add"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel4"> 
          <div class="x-panel-top" xid="top4" style="line-height:48px;"> 
            <div xid="div79" class="order-info-title"> 
              <span xid="span156" bind-text="currentGoodsData.ref('goodsName')">海南鸡腿饭</span>
            </div> 
          </div>
          <div class="x-panel-content edit-add-con" xid="content3"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents2" swipe="false" slidable="false"> 
              <div class="x-contents-content" xid="content8"> 
                <div class="select-con-wrap" xid="div36"/>
              </div>  
              <div class="x-contents-content" xid="content10"> 
                <textarea class="select-con-wrap" placeholder="请输入要求" xid="textarea1"/>
              </div>  
              <div class="x-contents-content" xid="content1">
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel5"> 
                  <div class="x-panel-top" xid="top5" height="160">
                    <div xid="div80"> 
                      <p >
                      	<span bind-text="language.val('PRICE')">22.00</span> 
                        <span bind-text="currentGoodsData.ref('sprice')">22.00</span> 
                      </p>  
                      <p>
                      	<span bind-text="language.val('ADDTOTAL')">22.00</span> 
                        <span bind-text="currentGoodsData.val('addMoney')">22.00</span> 
                      </p>  
                      <p>
                      	<span bind-text="language.val('QUANTITY')">22.00</span> 
                        <span bind-text="currentGoodsData.ref('qty')">1</span> 
                      </p> 
                    </div>
                    <div xid="div81"> 
                      <div class="ed-btn-wrap"> 
                        <ul xid="ul6"> 
                          <li> 
                            <span xid="span161" bind-text="language.ref('SUMMARY')"><![CDATA[汇总]]></span> 
                          </li>  
                          <li> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default clear" label="清空" xid="button10"
                              bind-click="button10Click" onClick="button10Click"> 
                              <i xid="i10"/>  
                              <span xid="span159" bind-text="language.ref('CLEAR')">清空</span> 
                            </a> 
                          </li>  
                          <li> 
                            <a component="$UI/system/components/justep/button/button"
                              class="btn btn-default delete" label="删除" xid="button11"
                              onClick="button11Click"> 
                              <i xid="i11"/>  
                              <span xid="span160" bind-text="language.ref('DELETE')">删除</span> 
                            </a> 
                          </li> 
                        </ul> 
                      </div>  
                      <div component="$UI/system/components/justep/list/list"
                        class="x-list ed-con-con " xid="list9" data="sendCookWayData"
                        filter="$row.val('goodsId') ==  $model.currentGoodsData.val(&quot;goodsId&quot;)"> 
                        <ul class="x-list-template" xid="listTemplateUl9"> 
                          <li xid="li6" bind-click="li6Click" class="clearfix">
                            <div component="$UI/system/components/justep/labelEdit/labelEdit"
                              class="x-label-edit x-label30" xid="labelOutput1" bind-text="val('cookWay')+'('+val('addMoney')+')'"> 
                              <label class="x-label" xid="label4"/>  
                              <div component="$UI/system/components/justep/output/output"
                                class="x-output x-edit" xid="output3"/>
                            </div>
                          </li>
                        </ul> 
                      </div>
                    </div>
                  </div>  
                  <div class="x-panel-content" xid="content6">
                    <div component="$UI/system/components/justep/panel/panel"
                      class="x-panel x-full" xid="panel6"> 
                      <div class="x-panel-content" xid="content7"> 
                        <div component="$UI/system/components/justep/contents/contents"
                          class="x-contents x-full" active="0" xid="contents7" swipe="false"> 
                          <div class="x-contents-content" xid="content9"> 
                            <div xid="div9" class="require-title-wrap"> 
                              <div component="$UI/system/components/justep/list/list"
                                class="x-list require-title clearfix" xid="list7"
                                data="cookTypeData"> 
                                <div component="$UI/system/components/bootstrap/row/row"
                                  class="row" xid="row2"> 
                                  <ul class="x-list-template clearfix" xid="listTemplateUl7"> 
                                    <div class="col col-xs-4" xid="col1" bind-click="li4Click"> 
                                      <span xid="span7" bind-text="val('typeName')"
                                        bind-click="li4Click"/>
                                    </div> 
                                  </ul> 
                                </div> 
                              </div> 
                            </div>  
                            <div class="select-con-wrap" xid="div41"> 
                              <div component="$UI/system/components/justep/list/list"
                                class="x-list require-con" xid="list8" data="cookTypeDetailData"> 
                                <ul class="x-list-template clearfix" xid="listTemplateUl8"> 
                                  <li xid="li5" bind-text="val('cookWay')"
                                    bind-click="li5Click"/>
                                </ul> 
                              </div> 
                            </div> 
                          </div> 
                        </div> 
                      </div> 
                    </div>
                  </div> 
                </div>
              </div>
            </div>
          </div>  
          <div class="x-panel-bottom edit-add-bottom" xid="bottom4"> 
            <div component="$UI/system/components/bootstrap/row/row" class="row w100"
              xid="row38"> 
              <div class="col col-xs-6" xid="col107">
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default" label="确定" xid="button8" onClick="button8Click"> 
                  <i xid="i8"/>  
                  <span xid="span158" bind-text="language.val('CONFIRM')">确定</span>
                </a>
              </div>  
              <div class="col col-xs-6" xid="col108">
                <a component="$UI/system/components/justep/button/button"
                  class="btn x-orange" label="取消" xid="button7" onClick="button7Click"> 
                  <i xid="i7"/>  
                  <span xid="span157" bind-text="language.val('BACK')">取消</span>
                </a>
              </div> 
            </div>
          </div>
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style"
    xid="give" opacity="1"> 
    <div class="x-popOver-overlay" xid="div26"/>  
    <div class="x-popOver-content pop-container x-popOver-content-170" xid="div27"> 
      <div xid="div38" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel8"> 
          <div class="x-panel-content" xid="content18">         <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents4" swipe="false" wrap="false" slidable="false">               <div class="x-contents-content" xid="content17"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel9"> 
                  <div class="x-panel-top" xid="top9"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar2" title="修改菜名"> 
                      <div class="x-titlebar-left" xid="div19"/>  
                      <div class="x-titlebar-title" xid="div24" bind-text="language.val('MODIFYFOODNAME')">修改菜名</div>  
                      <div class="x-titlebar-right reverse" xid="div25"/> 
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content19"> 
                    <div xid="div40" class="pop-con"> 
                      <div class="con-con" xid="div43"> 
                        <div xid="div59"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput4"> 
                            <label class="x-label" xid="label6" bind-text=' $model.language.val("DISHNAME")'><![CDATA[菜名]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit"
                              xid="ninput2"/> 
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
                          <span xid="span99" bind-text="language.ref('CONFIRM')">确认</span> 
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col63"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button44" bind-click="closeGive"> 
                          <i xid="i46"/>  
                          <span xid="span100" bind-text="language.val('BACK')">返回</span> 
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div> 
              <div class="x-contents-content" xid="content15"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel10"> 
                  <div class="x-panel-top" xid="top10"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3" title="修改价格"> 
                      <div class="x-titlebar-left" xid="div35" />  
                      <div class="x-titlebar-title" xid="div30" bind-text="language.val('MODIFYFOODPRICE')">修改价格</div>  
                      <div class="x-titlebar-right reverse" xid="div29" /> 
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content20"> 
                    <div xid="div31" class="pop-con"> 
                      <div class="con-con" xid="div33"> 
                        <div xid="div34"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput5"> 
                            <label class="x-label" xid="label7" bind-text="language.ref('PRICE')"><![CDATA[价格]]></label>  
                            <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ninput5" dataType="Float" /> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom6"> 
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row10"> 
                      <div class="col col-xs-6" xid="col37"> 
                        <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button34" onClick="button34Click"> 
                          <i xid="i37" />  
                          <span xid="span39" bind-text="language.val('CONFIRM')">确认</span> 
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col36"> 
                        <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button35" bind-click="closeGive"> 
                          <i xid="i36" />  
                          <span xid="span38" bind-text="language.val('BACK')">返回</span> 
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content23"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel12"> 
                  <div class="x-panel-top" xid="top12"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar5" title="数量"> 
                      <div class="x-titlebar-left" xid="div64" />  
                      <div class="x-titlebar-title" xid="div57" bind-text=' $model.language.val("QUANTITY")'>数量</div>  
                      <div class="x-titlebar-right reverse" xid="div58" /> 
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content24"> 
                    <div xid="div62" class="pop-con"> 
                      <div class="con-con" xid="div66"> 
                        <div xid="div65"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput7"> 
                            <label class="x-label" xid="label9" bind-text=' $model.language.val("QUANTITY")'>数量</label>  
                            <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="ninput7" dataType="Integer" /> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom9"> 
                    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row12"> 
                      <div class="col col-xs-6" xid="col41"> 
                        <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button38" onClick="button38Click"> 
                          <i xid="i41" />  
                          <span xid="span47" bind-text="language.val('CONFIRM')">确认</span> 
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col40"> 
                        <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button39" bind-click="button44Click"> 
                          <i xid="i40" />  
                          <span xid="span46" bind-text="language.val('BACK')">返回</span> 
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              </div></div> 
        </div> 
      </div> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style"
    xid="yet-sort" opacity="1"> 
    <div class="x-popOver-overlay" xid="div87"/>  
    <div class="x-popOver-content pop-container x-popOver-content-170" xid="div88">
      <div xid="div96" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel16"> 
          <div class="x-panel-content" xid="content31"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents5" swipe="false" wrap="false"
              slidable="false"> 
              <div class="x-contents-content" xid="content28"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel15"> 
                  <div class="x-panel-top" xid="top13"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar6" title="修改菜名"> 
                      <div class="x-titlebar-left" xid="div126"/>  
                      <div class="x-titlebar-title" xid="div93" bind-text=' $model.language.val("MODIFYFOODNAME")'>修改菜名</div>  
                      <div class="x-titlebar-right reverse" xid="div92"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content30"> 
                    <div xid="div103" class="pop-con"> 
                      <div class="con-con" xid="div112"> 
                        <div xid="div116"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput13"> 
                            <label class="x-label" xid="label13" bind-text=' $model.language.val("DISHNAME")'>菜名</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input9" placeHolder="请输入菜名"
                              id="noOrderChangeName"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom12"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row23"> 
                      <div class="col col-xs-6" xid="col74"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button48" onClick="button43Click"> 
                          <i xid="i55"/>  
                          <span xid="span102" bind-text="language.val('CONFIRM')">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col73"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button51" bind-click="hbutton44Click"> 
                          <i xid="i54"/>  
                          <span xid="span96" bind-text="language.val('BACK')">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content29"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel14"> 
                  <div class="x-panel-top" xid="top14"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar7" title="修改价格"> 
                      <div class="x-titlebar-left" xid="div101"/>  
                      <div class="x-titlebar-title" xid="div95" bind-text=' $model.language.val("MODIFYFOODPRICE")'>修改价格</div>  
                      <div class="x-titlebar-right reverse" xid="div91"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content37"> 
                    <div xid="div94" class="pop-con"> 
                      <div class="con-con" xid="div102"> 
                        <div xid="div100"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput12"> 
                            <label class="x-label" xid="label12" bind-text=' $model.language.val("PRICE")'>价格</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="hinput10" dataType="Integer"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom14"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row21"> 
                      <div class="col col-xs-6" xid="col78"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="hbutton57" onClick="hbutton57Click"> 
                          <i xid="i56"/>  
                          <span xid="span88" bind-text="language.val('CONFIRM')">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col79"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button56" bind-click="hbutton44Click"> 
                          <i xid="i57"/>  
                          <span xid="span93" bind-text="language.val('BACK')">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content35"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel19"> 
                  <div class="x-panel-top" xid="top17"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar9" title="数量"> 
                      <div class="x-titlebar-left" xid="div119"/>  
                      <div class="x-titlebar-title" xid="div114" bind-text=' $model.language.val("QUANTITY")'>数量</div>  
                      <div class="x-titlebar-right reverse" xid="div115"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content36"> 
                    <div xid="div121" class="pop-con"> 
                      <div class="con-con" xid="div117"> 
                        <div xid="div118"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput10"> 
                            <label class="x-label" xid="label14" bind-text=' $model.language.val("QUANTITY")'>数量</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="hinput11" placeHolder="请输入数量"
                              />
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom13"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row20"> 
                      <div class="col col-xs-6" xid="col82"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="hbutton53" onClick="hbutton53Click"> 
                          <i xid="i51"/>  
                          <span xid="span59" bind-text="language.val('CONFIRM')">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col81"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button52" bind-click="hbutton44Click"> 
                          <i xid="i53"/>  
                          <span xid="span42" bind-text="language.val('BACK')">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              </div> 
          </div> 
        </div> 
      </div>
    </div>
  </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver box-style"
    xid="account" opacity="1" position="center"> 
    <div class="x-popOver-overlay" xid="div89"/>  
    <div class="x-popOver-content pop-container" xid="div90">
      <div xid="div132" class="pop-wrap" style="height:94%;"> 
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
          xid="panel22"> 
          <div class="x-panel-content" xid="content43"> 
            <div component="$UI/system/components/justep/contents/contents"
              class="x-contents x-full" active="0" xid="contents6" swipe="false" wrap="false"
              slidable="false"> 
              <div class="x-contents-content" xid="content40"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel21"> 
                  <div class="x-panel-top" xid="top18"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar10" title="修改菜名"> 
                      <div class="x-titlebar-left" xid="div156"/>  
                      <div class="x-titlebar-title" xid="div129">修改菜名</div>  
                      <div class="x-titlebar-right reverse" xid="div128"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content42"> 
                    <div xid="div139" class="pop-con"> 
                      <div class="con-con" xid="div142"> 
                        <div xid="div146"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput18"> 
                            <label class="x-label" xid="label18">菜名</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input14" placeHolder="请输入菜名"
                              id="noOrderChangeName"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom17"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row30"> 
                      <div class="col col-xs-6" xid="col91"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button60" onClick="button43Click"> 
                          <i xid="i64"/>  
                          <span xid="span118">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col90"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button61" bind-click="closeAccount"> 
                          <i xid="i63"/>  
                          <span xid="span114">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content41"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel20"> 
                  <div class="x-panel-top" xid="top19"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar11" title="修改价格"> 
                      <div class="x-titlebar-left" xid="div137"/>  
                      <div class="x-titlebar-title" xid="div131">修改价格</div>  
                      <div class="x-titlebar-right reverse" xid="div127"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content49"> 
                    <div xid="div130" class="pop-con"> 
                      <div class="con-con" xid="div138"> 
                        <div xid="div136"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput17"> 
                            <label class="x-label" xid="label17">价格</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input15" id="noOrderChangePrice"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom19"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row28"> 
                      <div class="col col-xs-6" xid="col95"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button67" onClick="button34Click"> 
                          <i xid="i65"/>  
                          <span xid="span112">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col96"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button66" bind-click="closeAccount"> 
                          <i xid="i66"/>  
                          <span xid="span113">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content47"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel25"> 
                  <div class="x-panel-top" xid="top22"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar13" title="修改人数"> 
                      <div class="x-titlebar-left" xid="div149"/>  
                      <div class="x-titlebar-title" xid="div144" bind-text="language.val('CHANGEPEOPLENUM')">修改人数</div>  
                      <div class="x-titlebar-right reverse" xid="div145"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content48"> 
                    <div xid="div151" class="pop-con"> 
                      <div class="con-con" xid="div147"> 
                        <div xid="div148"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput15"> 
                            <label class="x-label" xid="label19" bind-text="language.val('QUANTITY')">数量</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="input16" dataType="Integer"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom18"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row27"> 
                      <div class="col col-xs-6" xid="col99"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button63" onClick="button63Click"> 
                          <i xid="i61"/>  
                          <span xid="span111" bind-text="language.ref('CONFIRM')">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col98"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button62" bind-click="closeAccount"> 
                          <i xid="i62"/>  
                          <span xid="span110" bind-text="language.ref('BACK')">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content45"> 
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel24"> 
                  <div class="x-panel-top" xid="top20"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar12" title="会员打拆"> 
                      <div class="x-titlebar-left" xid="div141"/>  
                      <div class="x-titlebar-title" xid="div143">会员打拆</div>  
                      <div class="x-titlebar-right reverse" xid="div133"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content46"> 
                    <div xid="div134" class="pop-con"> 
                      <div class="con-con" xid="div135"> 
                        <div xid="div140"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput14"> 
                            <label class="x-label" xid="label20">原因</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="jinput17" placeHolder="请输入菜名"
                              id="cartno"/>
                          </div>  
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput16"> 
                            <label class="x-label" xid="label16">数量</label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="jinput18" placeHolder="请输入菜名"
                              id="cartpwd"/>
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom16"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row33"> 
                      <div class="col col-xs-6" xid="col89"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="jbutton65" onClick="jbutton65Click"> 
                          <i xid="i67"/>  
                          <span xid="span116">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col87"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="jbutton64" bind-click="closeAccount"> 
                          <i xid="i68"/>  
                          <span xid="span117">返回</span>
                        </a>
                      </div> 
                    </div> 
                  </div> 
                </div> 
              </div>  
              <div class="x-contents-content" xid="content53">
                <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
                  xid="panel29"> 
                  <div class="x-panel-top" xid="top25"> 
                    <div component="$UI/system/components/justep/titleBar/titleBar"
                      class="x-titlebar" xid="titleBar1" title="会员卡号"> 
                      <div class="x-titlebar-left" xid="div54"/>  
                      <div class="x-titlebar-title" xid="div55" bind-text=' $model.language.val("MEMBERDISCOUNT")'>会员卡号</div>  
                      <div class="x-titlebar-right reverse" xid="div50"/>
                    </div> 
                  </div>  
                  <div class="x-panel-content" xid="content54"> 
                    <div xid="div49" class="pop-con"> 
                      <div class="con-con" xid="div44"> 
                        <div xid="div51"> 
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput6"> 
                            <label class="x-label" xid="label8" bind-text="language.val('MEMBERNUM')"><![CDATA[卡号]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="cartno" />
                          </div>  
                          <div component="$UI/system/components/justep/labelEdit/labelEdit"
                            class="x-label-edit x-label30" xid="labelInput8"> 
                            <label class="x-label" xid="label10" bind-text="language.val('PASSWORD')"><![CDATA[密码]]></label>  
                            <input component="$UI/system/components/justep/input/input"
                              class="form-control x-edit" xid="cartpwd"/>
                          </div>
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="x-panel-bottom bottom-btn-wrap" xid="bottom24"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row" xid="row39"> 
                      <div class="col col-xs-6" xid="col114"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-success" label="确认" xid="button2" onClick="jbutton65Click"> 
                          <i xid="i2"/>  
                          <span xid="span4" bind-text="language.val('CONFIRM')">确认</span>
                        </a> 
                      </div>  
                      <div class="col col-xs-6" xid="col110"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn x-orange" label="返回" xid="button3" bind-click="closeAccount"> 
                          <i xid="i3"/>  
                          <span xid="span3" bind-text="language.val('BACK')">返回</span>
                        </a> 
                      </div> 
                    </div> 
                  </div> 
                </div>
              </div>
            </div> 
          </div> 
        </div> 
      </div>
    </div>
  </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="allInfo" opacity="1">
   <div class="x-popOver-overlay" xid="div71"></div>
   <div class="x-popOver-content pop-container allInfo" xid="div74"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel32">
   <div class="x-panel-top  preview-top" xid="top26">
    <h3 xid="h310" class="order-info-title" bind-text="language.ref('RESTAURANT')">大酒店</h3></div> 
   <div class="x-panel-content order-info-con" xid="content58">
    <div xid="div82" class="order-info-wrap">
     <div xid="div108">
      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row57">
       <div class="col col-xs-4" xid="col161">
        <span xid="span182" bind-text="language.val('ADMIN')">管理员：</span></div> 
       <div class="col col-xs-8" xid="col155">
        <span xid="span179" bind-text="userData.ref('userName')"></span></div> </div> 
      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row60">
       <div class="col col-xs-4" xid="col154">
        <span xid="span173" bind-text="language.val('AHO')">台号：</span></div> 
       <div class="col col-xs-8" xid="col156">
        <span xid="span186"></span></div> </div> 
      <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row59">
       <div class="col col-xs-4" xid="col162">
        <span xid="span174" bind-text="language.val('ORDERNUM')">单号：</span></div> 
       <div class="col col-xs-8" xid="col163">
        <span xid="span176" bind-text="ConsumeBillData.ref('billNO')"></span></div> </div> </div> 
     <div xid="div107">
      <h3 xid="h311" class="all-price">
       <span xid="span188" bind-text="language.val('TOTALPRICES')">总金额：</span>
       <span xid="span187" class="color-price" bind-text="statusData.ref('totalCheckOutMoney')"></span></h3> </div> </div> 
    <div component="$UI/system/components/bootstrap/row/row" class="row top-border" xid="row56">
     <div class="col col-xs-6" xid="col153">
      <h5 xid="h517" bind-text="language.val('PROJECT')">项目</h5></div> 
     <div class="col col-xs-3" xid="col152">
      <h5 xid="h516" bind-text="language.ref('QUANTITY')">数量</h5></div> 
     <div class="col col-xs-3" xid="col158">
      <h5 xid="h518" bind-text="language.val('PRICE')">金额</h5></div> </div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list17" data="showBillData">
     <ul class="x-list-template" xid="listTemplateUl18">
      <li xid="li14">
       <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row58">
        <div class="col col-xs-6" xid="col157">
         <span xid="span180" bind-text="val('goodsName')"></span></div> 
        <div class="col col-xs-3" xid="col160">
         <span xid="span183" bind-text="val('qty')"></span></div> 
        <div class="col col-xs-3" xid="col159">
         <span xid="span184" bind-text="val('checkOutMoney')"></span></div> </div> </li> </ul> </div> 
    <p xid="p6" style="text-align:center;">
     <span xid="span175" style="font-size:18px;" bind-text="language.val('WELCOMENEXT')">欢迎下次光临</span></p> </div> 
   <div class="x-panel-bottom order-info-button" xid="bottom25">
    <a component="$UI/system/components/justep/button/button" class="btn back-btn" label="返回" xid="button6" bind-click="allInfoHide">
     <i xid="i13"></i>
     <span xid="span185">返回</span></a> </div> </div></div></div><div component="$UI/system/components/justep/popOver/popOver" class="x-popOver othe-wrap" xid="othe" opacity="1">
   <div class="x-popOver-overlay" xid="div157"></div>
   <div class="x-popOver-content pop-container othe" xid="div158"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents8" wrap="false" swipe="false" slidable="false">
   <div class="x-contents-content" xid="content56"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel33">
   <div class="x-panel-top" xid="top27">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar14" title="赠送">
     <div class="x-titlebar-left" xid="div166"></div>
     <div class="x-titlebar-title" xid="div165" title="赠送" bind-text=' $model.language.val("GIVE")'></div>
     <div class="x-titlebar-right reverse" xid="div162"></div></div> </div> 
   <div class="x-panel-content" xid="content55">
    <div xid="div159" class="pop-con">
     <div class="con-con" xid="div161">
      <div xid="div167">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput9">
        <label class="x-label" xid="label15" bind-text=' $model.language.val("QUANTITY")'>数量</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputGive" placeHolder="请输入数量" dataType="Integer"></input></div> </div> 
      <div xid="div164">
       <div class="select-con-wrap" xid="div163">
        <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list5" data="presentsReasonData">
         <ul class="x-list-template clearfix" xid="listTemplateUl5">
          <li xid="li12" bind-text="val('zReason')" bind-click="gitliClick"></li></ul> </div> </div> </div> </div> </div> </div> 
   <div class="x-panel-bottom bottom-btn-wrap" xid="bottom26">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row29">
     <div class="col col-xs-6" xid="col86">
      <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button37" onClick="buttonGitClick">
       <i xid="i74"></i>
       <span xid="span126" bind-text="language.val('CONFIRM')">确认</span></a> </div> 
     <div class="col col-xs-6" xid="col85">
      <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button53" bind-click="otheClose">
       <i xid="i73"></i>
       <span xid="span122" bind-text="language.val('BACK')">返回</span></a> </div> </div> </div> </div></div>
  <div class="x-contents-content" xid="content57"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel34">
   <div class="x-panel-top" xid="top28">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar15" title="退菜">
     <div class="x-titlebar-left" xid="div171"></div>
     <div class="x-titlebar-title" xid="div172" bind-text="language.val('CANCELFOOD')">退菜</div>
     <div class="x-titlebar-right reverse" xid="div173"></div></div> </div> 
   <div class="x-panel-content " xid="content59">
    <div xid="div170" class="pop-con">
     <div class="con-con" xid="div169">
      <div xid="div168">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput19">
        <label class="x-label" xid="label21" bind-text="language.ref('QUANTITY')">数量</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputQuit" dataType="Integer"></input></div> </div> </div> </div> 
    <div component="$UI/system/components/justep/list/list" class="x-list cause" xid="list16" data="cancelReasonData">
     <ul class="x-list-template x-min-height" xid="listTemplateUl17" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl15">
      <li xid="li13" bind-click="canelliClick" bind-text="val('zReason')" class="x-min-height"></li></ul> </div> </div> 
   <div class="x-panel-bottom bottom-btn-wrap" xid="bottom27">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row31">
     <div class="col col-xs-6" xid="col88">
      <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button57" onClick="cancelReasonTrueClick">
       <i xid="i76"></i>
       <span xid="span128" bind-text="language.val('CONFIRM')">确认</span></a> </div> 
     <div class="col col-xs-6" xid="col93">
      <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button58" bind-click="otheClose">
       <i xid="i75"></i>
       <span xid="span127" bind-text="language.val('BACK')">返回</span></a> </div> </div> </div> </div></div>
  <div class="x-contents-content" xid="content60"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel35">
   <div class="x-panel-top" xid="top29">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar16" title="赠送">
     <div class="x-titlebar-left" xid="div181"></div>
     <div class="x-titlebar-title" xid="div180" title="赠送" bind-text=' $model.language.val("GIVE")'></div>
     <div class="x-titlebar-right reverse" xid="div179"></div></div> </div> 
   <div class="x-panel-content" xid="content61">
    <div xid="div174" class="pop-con">
     <div class="con-con" xid="div175">
      <div xid="div176">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelInput20">
        <label class="x-label" xid="label22" bind-text="language.ref('QUANTITY')">数量</label>
        <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="inputGive2" placeHolder="请输入数量"></input></div> </div> 
      <div xid="div178">
       <div class="select-con-wrap" xid="div177">
        <div component="$UI/system/components/justep/list/list" class="x-list require-con" xid="list18" data="presentsReasonData">
         <ul class="x-list-template clearfix" xid="listTemplateUl19">
          <li xid="li15" bind-text="val('zReason')" bind-click="gitliClick"></li></ul> </div> </div> </div> </div> </div> </div> 
   <div class="x-panel-bottom bottom-btn-wrap" xid="bottom28">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row32">
     <div class="col col-xs-6" xid="col94">
      <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button64" onClick="hbutton58Click">
       <i xid="i77"></i>
       <span xid="span146" bind-text="language.val('CONFIRM')">确认</span></a> </div> 
     <div class="col col-xs-6" xid="col97">
      <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button65" bind-click="otheClose">
       <i xid="i78"></i>
       <span xid="span147" bind-text="language.val('BACK')">返回</span></a> </div> </div> </div> </div></div>
  <div class="x-contents-content" xid="content62"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel36">
   <div class="x-panel-top" xid="top30">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar17" title="打折">
     <div class="x-titlebar-left" xid="div184"></div>
     <div class="x-titlebar-title" xid="div188" title="赠送" bind-text=' $model.language.val("DISCOUNT")'>打折</div>
     <div class="x-titlebar-right reverse" xid="div187"></div></div> </div> 
   <div class="x-panel-content" xid="content63">
    <div xid="div183" class="pop-con">
     <div class="con-con" xid="div182">
      <div xid="div185">
       <div class="select-con-wrap" xid="div186">
        <div component="$UI/system/components/justep/list/list" class="x-list require-con give-item" xid="list19" data="discountTypesData">
         <ul class="x-list-template clearfix x-min-height" xid="listTemplateUl20">
          <li xid="li16" bind-text="val('discountTypeName')" bind-click="li9Click"></li></ul> </div> </div> </div> </div> </div> </div> 
   <div class="x-panel-bottom bottom-btn-wrap" xid="bottom29">
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row49">
     <div class="col col-xs-6" xid="col117">
      <a component="$UI/system/components/justep/button/button" class="btn btn-success" label="确认" xid="button71" onClick="button68Click">
       <i xid="i79"></i>
       <span xid="span150" bind-text="language.ref('CONFIRM')">确认</span></a> </div> 
     <div class="col col-xs-6" xid="col116">
      <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="返回" xid="button69" bind-click="otheClose">
       <i xid="i80"></i>
       <span xid="span148" bind-text="language.ref('BACK')">返回</span></a> </div> </div> </div> </div></div></div></div></div><resource xid="resource2">
    <require xid="require1" url="$UI/demo/baas/baas"/>
  <require xid="require2" url="cordova!org.apache.cordova.file-transfer"></require></resource>
</div>
