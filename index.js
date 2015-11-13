define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var  loadingBar=require("$UI/system/components/justep/loadingBar/loadingBar");
	require('cordova!org.apache.cordova.file-transfer');
	require('cordova!ch.ti8m.documenthandler');
	require('cordova!hu.dpal.phonegap.plugins.SpinnerDialog');
	var version = "1.0.0";
	var cishu = 0;
	//var ip = "http://qixusoft.vicp.net";
	//var ip="http://192.168.1.20:8080/OrderSystemWeX5/";
	//var ip ="http://192.168.1.128:8080/OrderSystemWeX5/";
	var ip ;
	$(function(){
		if(localStorage.getItem('pureip') != null || localStorage.getItem('pureip') != undefined){
			 ip = 'http://'+localStorage.getItem('pureip')+':'+localStorage.getItem('com')+'/OrderSystemWeX5/';	
		}else
		{
			location.href = 'languageSelect.w#!settings';
		}
	})
	//长按
	var lang=false;
	//长按是否加载完成标记0表示加载中不能进行长按，1可以长按
	var lang_flag=0;  
	 
	//var url="UI2/orderSystem_a/index.w#!index";
	var Baas = require("$UI/demo/baas/baas");
	var Language = require('$UI/orderSystem/language');
	var myBaas = require('$UI/orderSystem/myBaas');
	var order = require('$UI/orderSystem/order');
	var check = require('$UI/orderSystem/check');
	var lan = require('$UI/orderSystem/language');
	    //定时器 
    var timeOutEvent=0;
     /*重写loadingBar的start和stop开始*/
     //loadingBar的start
      loadingBar.start= function(){
			var self = this;
			var oldNum = parseInt(self.$loadingBarNode.attr('loadingnum'));
    		self.$loadingBarNode.attr('loadingnum',oldNum + 1);
    		self.$loadingOverlayNode.addClass('x-default-overlay-open');
    		//设置加载时不可以长按
    		lang_flag=0;
			self.$loadingBarNode.fadeIn(200,function(){
				if(oldNum === 0){
	    			self.$loadingBarNode.width((40 + Math.random() * 30) + "%");
	    		}
	        });
	      
		};
	//loadingBar的stop
	loadingBar.stop=function(){
			var self = this;
			self.$loadingOverlayNode.removeClass('x-default-overlay-open');
			setTimeout(function(){
				var oldNum = parseInt(self.$loadingBarNode.attr('loadingnum'));
	    		self.$loadingBarNode.attr('loadingnum',oldNum - 1);
	    		if(oldNum <= 1){
		    		self.$loadingBarNode.width("101%").fadeOut(1000, function() {
		    			//设置回载后可以长按
		    			lang_flag=1;
		    			self.$loadingBarNode.width("1%");
			        });
		    	}
			},1000);
			
		};
    /*重写loadingBar的start和stop结束*/
    
	var Model = function(){
		this.callParent();
	};


	//订单详情页
	Model.prototype.button9Click = function(event){
		var currentDeskData = this.comp('currentDeskData');
		var orderData = this.comp('orderData');
		var success = function(param){
			orderData.clear();
			for(var o in param.consumeDetails){
				orderData.newData({
					defaultValues:[{
						goodsName:param.consumeDetails[o].goodsName,
						price:param.consumeDetails[o].price,
						addMoney:param.consumeDetails[o].addMoney,
						qty:param.consumeDetails[o].qty,
						billDetailId:param.consumeDetails[o].billDetailId,
						unitName:param.consumeDetails[o].unitName
					}]
				});
			}
		}
		Baas.sendRequest({
			"url" : ip + 'ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+currentDeskData.val('billMasterId')+'&roomId='+currentDeskData.val('roomId'),
			"dataType": "json",
			"success" : success
		});
		//为addMoney加上数据
		 var sendCookWayData = this.comp('sendCookWayData');
		 var cartData = this.comp('cartData');
		 var currentDeskData = this.comp('currentDeskData');
		 
		 sendCookWayData.clear();
		 if(localStorage.getItem('sendCookWayData') == undefined ||localStorage.getItem('sendCookWayData')==null||localStorage.getItem('sendCookWayData')==''){
//			 return false;
		 }else{
			 sendCookWayData.loadData(JSON.parse(localStorage.getItem('sendCookWayData'+currentDeskData.getFirstRow().val('roomId'))));
			 cartData.each(function(data){
				 data.row.val('addMoney',0);
			 });
			 cartData.each(function(data){
				 sendCookWayData.each(function(data1){
					 if(data1.row.val('goodsId')==data.row.val('goodsId')){
						 data.row.val('addMoney',data.row.val('addMoney')+data1.row.val('addMoney'));
					 }
				 });
			 });
		 }
		this.comp("contents3").to('content12');
		this.comp("order").show();
	};


	//修改菜单
	Model.prototype.div74Click = function(event){
		
		//获取当前行数据
		var row = event.bindingContext.$rawData;
		 
		var currentGoodsData = this.comp('currentGoodsData');
		currentGoodsData.newData({
			index:0,
			defaultValues:[{
				"goodsName":row.val('goodsName'),
				"sprice":row.val('sprice'),
				"qty":row.val('qty'),
				"goodsId":row.val('goodsId'),
				"addMoney":row.val('addMoney')
			}]
		});
		
		var sendCookWayData = this.comp('sendCookWayData');
		//清空加收文本框显示
		$('#showCookWays').text('');
		//清空购物车加钱文本
		var cart = this.comp('cartData');
		cart.eachAll(function(param){
		 
			if(param.row.val('goodsId') == currentGoodsData.val('goodsId')){
				param.row.val('cookWay','');
			}
		})
		//清空当前加收钱项目
		var currentCookWayData = this.comp('currentCookWayData');
		currentCookWayData.clear();

		this.comp("popOver2").show();
	};


	//显示加减购物车数量
	Model.prototype.button12Click = function(event){
		var html="<div class='select-con-wrap' style='text-align:center;'><h5><a href='javascript:;' class='subtract' id='popOver2Sub'></a><span>1</span><a href='javascript:;' class='add' id='popOver2Add'></a></h5></div>";
		$(".select-con").html(html);
	};

	//未分单口味
	Model.prototype.button13Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("popOver2").show();
		this.comp("contents2").to("content8");
		
	};

	//没分单其它
	Model.prototype.button15Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("popOver2").show();
		this.comp("contents2").to("content10")
		var html="<textarea class='select-con-wrap' placeholder='请输入要求'></textarea>";
		$(".select-con").html(html);
	};





	//删除选中的口味
	Model.prototype.button11Click = function(event){
		var deletingCookWayData = this.comp('deletingCookWayData');
		var sendCookWayData = this.comp('sendCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var row;
		sendCookWayData.each(function(param){
			if(param.row.val('goodsId')==deletingCookWayData.val('goodsId')&&param.row.val('cookWayId')==deletingCookWayData.val('cookWayId')){
//				sendCookWayData.deleteData(sendCookWayData.getCurrentRow());
				row = sendCookWayData.getCurrentRow();
				currentGoodsData.getFirstRow().val('addMoney',currentGoodsData.val('addMoney')-param.row.val('addMoney'))
				 return;
			}
		});
		sendCookWayData.deleteData(row);
	};





	//清空口味
	Model.prototype.button10Click = function(event){
		var sendCookWayData = this.comp('sendCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var rows= new Array();
		sendCookWayData.eachAll(function(data){
			if(data.row.val('goodsId') == currentGoodsData.val('goodsId')){
				rows.push(data.row);
			}
		});
		sendCookWayData.deleteData(rows);
		currentGoodsData.getFirstRow().val('addMoney',0);
		$(".require-con ul li").removeClass("active");
	};




//用户登录 ,并记录下当前的userId
	Model.prototype.login_btnClick = function(event){
		var userData = this.comp('userData');
		var contents1 = this.comp('contents1');
		var username=$("#"+this.getIDByXID("userName")).val();
			
		var pwd=$("#"+this.getIDByXID("userPwd")).val();
		/*记住密码*/
		var userName=$("#"+this.getIDByXID("userName")).val();
		var userPwd=$("#"+this.getIDByXID("userPwd")).val();
		console.log(userName +" "+userPwd)
		if($("#rememberPwd").is(':checked'))
		{
			localStorage.setItem("userName",userName);
			localStorage.setItem("userPwd",userPwd)
		}else
		{
			localStorage.setItem("userName","");
			localStorage.setItem("userPwd","")
		}
		/*记住密码结束*/
		/*自动登录*/
		if($("#autoLogin").is(':checked'))
		{
			localStorage.setItem("checked",'1');
		}else
		{
			localStorage.setItem("checked","0");
		}
		/*自动登录结束*/
		console.log(username +" "+ pwd)
		////
		var mydata = this.comp('user_inof');
		var success = function(data){
			     if(data.admin[0].userId != "")   {
			    	 userData.newData({
			    		 defaultValues:[{
			    		 userId : data.admin[0].userId,
			    		 userName:data.admin[0].userName
			    		 }]
			    	 });
			    	 contents1.to('index');
			     }else{
			    	 if(username == '' || pwd == ''){
			    		 $(".login-error-info").hide();
			    		 $(".login-error-info-a").show();
			    	 }else{
			    		 $(".login-error-info").hide();
			    		 $(".login-error-info-b").show();
			    	 }
			    	 //justep.Util.hint("登陆失败");
			     }                                            
		}
		Baas.sendRequest({
			"url" : ip + 'LoginByBackstageServlet.do?func=login&returnJson=1',
			"dataType": "json",
			"params":{"username":username,"password":pwd},
			"async" : true,
			"success" : success
		});
	
	};




	//加载台类型 加载数据,通过与链接拿到台类型，与用户id没关
	Model.prototype.fan_nameCustomRefresh = function(event){
		var masterData = event.source;
		var mydata = this.comp('menuTypeData');
		var url= ip+"RoomServlet.do?func=getRoomType&getJson=1";//http://192.168.1.20:8080
	    $.ajax({
	        type: "GET",
	        url: url,
	        dataType: 'json',
	        async: false,//使用同步方式，目前data组件有同步依赖
	        cache: false,
	        success: function(data){
	           // masterData.loadData(data);//将返回的数据加载到data组件
	            var rowss=[];
				for(var i=0;i<data.typeCodes.length;i++){
				 rowss[i]={'typeName':{'value':data.typeCodes[i].typeName},'typeCode':{'value':data.typeCodes[i].typeCode}};
			 	}
			 	var ffdata={"@type":"table","rows":rowss};
			 	//alert(ffdata)
		 	masterData.loadData(ffdata);//将返回的数据加载到data组件
		 	
	        },
	        error: function(){
	          throw justep.Error.create("加载数据失败");
	        }

	    });
	    
	    //加载菜单类型列表，以便让进房间的时候，可以快速看到菜单
	    var url=ip+"GoodsTypeServlet.do?func=listGoodsType&getJson=1";
	    $.ajax({
			type: "GET",
	        url: url,
	        //data:data,
	        dataType: 'json',
	        async: false,//使用同步方式，目前data组件有同步依赖
	        cache: false,
	        success: function(msg){        	
		            var rowss=[];		            
					for(var i=0;i<msg.typeCodes.length;i++){												 
					 rowss[i]={'typeCode':{'value':msg.typeCodes[i].typeCode},'typeName':{'value':msg.typeCodes[i].typeName},'qty':{'value':0}};
				 	}
				 	var ffdata={"rows":rowss};
			
			 	mydata.loadData(ffdata);
		        
	        },
	        error: function(){
	          throw justep.Error.create("加载数据失败");
	        }
		});
	    

	};



	
	
	//data加载完成，调整顶部宽度
	Model.prototype.modelLoad = function(event){
			//检查版本更新
			if(cishu == 0){
			cishu ++;
			var lastVersion = order.checkAppVersion({'ip':ip});
			if(lastVersion != version){	
				if(confirm('有更新，是否更新')){
//				var fullPath;
//					if (justep.Browser.isX5App) {
//						target="http://pkg.fir.im/472aa57b774dc7b5225685e78020eddb02958a63.apk?attname=orderSystem.apk_1.0.0.apk&e=1446696787&token=LOvmia8oXF4xnLh0IdH05XMYpH6ENHNpARlmPc-T:UUSf9jkiRQgOx4ghp2LNRpCapcE=";
//						var sad= new window.FileTransfer();
////						sad.download(encodeURI('pkg.fir.im'), target, function(){alert('success')}, function(data){debugger;alert(data)})
//						//start
//						   try {
//						              /*
//						            window.requestFileSystem = window.requestFileSystem || window.webkitRequestFileSystem;
//						            window.resolveLocalFileSystemURL = window.resolveLocalFileSystemURL                || window.ebkitResolveLocalFileSystemURL; //根据URL取得文件的读取权限
//						            */
//						            
//						            //查找是否有download这个文件夹，没有则创建，然后找到这个文件夹的绝对路径
//						            window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, function (fileSystem) {                
//						                fileSystem.root.getDirectory("download", {
//						                    create: true,
//						                    exclusive: false
//						                }, function (entry) {
//						                    //网上流传的资料中都是使用fullPath，在这里我获取到的是相对目录，在下载时使用会报错，所以换做了toURL()
//						                    //这是一个全局全局变量，用以保存路径
//						                    fullPath = entry.toURL();
//						                    alert(fullPath.toString() + '创建文件夹成功');
//						                    						           try {
//					          // onDeviceReady();
//					          var ft = new FileTransfer();
//					          var uri = encodeURI(target);
//					          var fileURL = entry.toURL()+'order.apk' ;					
//					          ft.download(
//					              uri,
//					              fileURL,
//					              function(entry) {
//					                  OpenFile(entry.fullPath);
//					                  console.log("download complete: " + entry.toURL());
//					              },
//					              function(error) {
//					                  alert("download error source " + error.source);
//					                  alert("download error target " + error.target);
//					                  console.log("download error source " + error.source);
//					                  console.log("download error target " + error.target);
//					                  console.log("upload error code" + error.code);
//					              },
//					              false,
//					              {
//					                  headers: {
//					                      "Authorization": "Basic dGVzdHVzZXJuYW1lOnRlc3RwYXNzd29yZA=="
//					                  }
//					              }
//					          );
//					        }
//					        catch (e) {
//					          alert(e.name + ":" + e.message);
//					        }
//					        //end	
//						                }, function () {
//						                    console.log('创建文件夹失败');
//						                    alert('创建文件夹失败');
//						                });
//						            }, function () {
//						                console.log('创建文件夹失败');
//						                alert('创建文件夹失败');
//						            });
//						          }
//						          catch (e) {
//						            alert(e.name + ":" + e.message);
//						          }			
//						          //end
//		
//					}
//				}
					window.plugins.spinnerDialog.show("下载中","正在下载中", true);
					target="http://pkg.fir.im/472aa57b774dc7b5225685e78020eddb02958a63.apk?attname=orderSystem.apk_1.0.0.apk&e=1446696787&token=LOvmia8oXF4xnLh0IdH05XMYpH6ENHNpARlmPc-T:UUSf9jkiRQgOx4ghp2LNRpCapcE=";
					if (justep.Browser.isX5App) {
					handleDocumentWithURL(
					      function() {console.log('success');window.plugins.spinnerDialog.hide();},
					      function(error) {
					        console.log('failure');
					        if(error == 53) {
					          console.log('No app that handles this file type.');
					        }
					      }, 
					      target
					    );
					 }
			}}
			}
			//设置菜单宽度
			var liWidth=parseInt($(".menu-con").find('li').outerWidth(true));
			var liMargin=$(".menu-con")
			var liLength=$(".menu-con").find('li').length;
			//alert(liLength)
			$('.menu-con').find("ul").css({"width":liWidth*liLength});
			//alert("k")
			//top-menu-li  加active类
			(function(){
				$(".top-menu-li").click(function(){
				//alert($(this).index())
				$(this).addClass("active").siblings().removeClass("active");
				})
			})();
			$(".top-menu-li").eq(0).trigger("click");
			var row = this.comp('deskData');
			console.log(row)	
			/*加载语言*/
			var languageData=this.comp("language");
			var languageId = localStorage.getItem("languageId");
			console.log(languageId);
			var result = lan.getTranslation();
			console.log(result)
			console.log(result.length)
			var str="{";
			for(var i=0;i<result.length;i++){
				if(i==result.length-1){
					str += result[i].internalCode+":'"+result[i].translation+"'}";
				}else{
					str += result[i].internalCode+":'"+result[i].translation+"',";
				}
				
			}
			var obj = eval('(' + str + ')');
			console.log("str="+str)
			console.log(obj)
			//将语言写入本地
			//localStorage.setItem("language", str)
			//加载语言数据
			languageData.newData({
				index: 0,
				defaultValues:[
				               obj 
				]
			});//end
			//加载时加载记录的登录用户名和密码
			var userName=localStorage.getItem("userName");
			var userPwd=localStorage.getItem("userPwd");
			//将记录下来的用户名和密码自动填写
			$("#"+this.getIDByXID("userName")).val(userName);
			$("#"+this.getIDByXID("userPwd")).val(userPwd);
			//实现自动登录
			var checked=localStorage.getItem("checked");
			////
			if(checked == '1'){
				$('#autoLogin').attr("checked","true");
			}else{
				$('#autoLogin').removeAttr("checked");
			}
			if($('#autoLogin').is(':checked')){
				$("#"+this.getIDByXID("login1")).trigger("click");
				$('#autoLogin').attr("checked","true");
			}else{
				
			}
			$(".loading").hide();
			
		};

	//mydata为deskData
	function getDesk(mydata,row,type){
		var typeCode ;
		if(type == 1){
			typeCode = row.val("typeCode");
		}else{
			typeCode = row;
		}
		var url= ip+"RoomServlet.do";
		var data="func=getRoom&typeCode="+typeCode+"&getJson=1";
		$.ajax({
			type: "GET",
	        url: url,
	        data: data,
	        dataType: 'json',
	        async: false,//使用同步方式，目前data组件有同步依赖
	        cache: false,
	        success: function(msg){	          
	            var rowss=[];
				for(var i=0;i<msg.rooms.length;i++){
					var state="空台";
					var color="black";
					var stateLang;
					if(msg.rooms[i].state=="3"){
						state="在用";
						color="blue";
						stateLang="USING";
					}else if(msg.rooms[i].state=="4"){
						state="埋单";
						color="gray";
						stateLang="PAY";
					}else if(msg.rooms[i].state=="2"){
						state="预定";
						color="yellow";
						stateLang="RESERVE";
					}else if(msg.rooms[i].state=="0"){
						state="禁用";
						color="red";
						stateLang="OFF";
					}else{
						state="空台";
						color="green";
						stateLang="EMPTY";
					}	
				 rowss[i]={'tai_number':{'value':msg.rooms[i].roomName},'state':{'value':state},'roomId':{'value':msg.rooms[i].roomId},'billMasterId':{'value':msg.rooms[i].consumeBillMasterID},'color':{'value':color},'typeCode':{'value':msg.rooms[i].typeCode},'custQty':{'value':msg.rooms[i].custQty},'consumeRoomId':{'value':msg.rooms[i].consumeRoomID},'shareNo':{'value':msg.rooms[i].shareNo},'stateLang':stateLang};
			 	}
			 	
			var ffdata={"rows":rowss};
		 	mydata.loadData(ffdata);
//		 	mydata.r
		 	$(".more-wrap").find(".col").removeClass("active");
		 	$(".more-wrap").hide();	
		 	$(".main-ul").find("li").each(function(){
	    		$(this).attr('action','');
			});
	        },
	        error: function(){
	          throw justep.Error.create("加载数据失败");
	        }
		});
	}


	//点击通过台类型加载桌子，通过状态字段来设置当前的颜色字段
	Model.prototype.li10Click = function(event){
		getDesk(this.comp('deskData'),event.bindingContext.$rawData,1);
			if(lang === true){
				 var currentDeskData = this.comp('currentDeskData');
				//当前房间的roomId
				var currentRoomId = currentDeskData.val('roomId');
				$(".more-wrap").show();
              $(".main-ul").css({"margin-bottom":"94px"});
				$(".main-ul").find("li").each(function(){
		    		if($(this).attr("roomId") == currentRoomId){
		    			$(this).css({"background":"rgb(0, 204, 102)"});
		    		}else{
		    			$(this).css({"background":"#ccc"})
		    		}
				});
			}

		
	};

	//进入房台，记录下当前的订单号和roomId,然后再根据状态跳去不同的页面
	//1.在这里应该先清空购物车
	//2.重新加载菜单类型信息
	//3.通过购物车重新菜单数量和
	Model.prototype.li1Click = function(event){
//		event.preventDefault(); 
		event.stopPropagation();
		var oneDeskData = this.comp('currentDeskData');
		var row = event.bindingContext.$rawData;
		var deskData = this.comp('deskData');
		var state=row.val("state");
		var contents1 = this.comp('contents1');
		var popOver_renshu = this.comp("popOver_renshu");
		var cartData = this.comp('cartData');
		var goodsListData = this.comp('goodsListData');
		var menuTypeData = this.comp('menuTypeData');
		//下面用于刷新当前房台状态
		var deskData = this.comp('deskData');
		;
		var success = function(param){
			
			//重新加载房台
			$('#more').slideUp();
			//清空购物车
			cartData.clear();
			//重新加载菜单类型信息
			$.ajax({
		        type: "GET",
		        url: ip + 'GoodsTypeServlet.do?func=listGoodsType&getJson=1',
		        dataType: 'json',
		        async: false,//使用同步方式，目前data组件有同步依赖
		        cache: false,
		        success: function(data){
		            var rowss=[];
					for(var i=0;i<data.typeCodes.length;i++){
					 rowss[i]={'typeName':{'value':data.typeCodes[i].typeName},'typeCode':{'value':data.typeCodes[i].typeCode},'qty':{'value':0}};
				 	}
				 	var ffdata={"@type":"table","rows":rowss};
				 	menuTypeData.loadData(ffdata);//将返回的数据加载到data组件
			 	
		        },
		        error: function(){
		          throw justep.Error.create("加载数据失败");
		        }
			});
			//---------end of ajax-------------
			
			//从localStorage中获取购物车数据
			 ;
			if(localStorage.getItem(param.rooms[0].roomId)!=null&&localStorage.getItem(param.rooms[0].roomId)!=""){
				cartData.loadData(JSON.parse(localStorage.getItem(param.rooms[0].roomId)));
			}
			//通过购物车计算，各商品类型中的数量和商品的数据
			menuTypeData.eachAll(function(data){
				cartData.eachAll(function(data1){
					if(data.row.val('typeCode')==data1.row.val('typeCode')){
						data.row.val('qty',data.row.val('qty')+data1.row.val('qty'));
					}
				});
			});
			//清空商品列表
			goodsListData.clear();	
			//		
			//记录当前台号
			oneDeskData.newData({
				index: 0,
				defaultValues:[{
					 "tai_number":param.rooms[0].tai_number,
					 "billMasterId":param.rooms[0].consumeBillMasterID,
					 "roomId":param.rooms[0].roomId,
					 "typeCode":param.rooms[0].typeCode,
					 "state":param.rooms[0].state,
					 "custQty":param.rooms[0].custQty,
					 "consumeRoomId":param.rooms[0].consumeRoomID,
					 "shareNo":param.rooms[0].shareNo
				}]
			});//end
			if(state=="在用"){
				contents1.to("menu"); 
			}else if(state=="埋单"){
				contents1.to("menu");
			}else if(state="空台"){
				popOver_renshu.show();
				//让文本框架
				$('#custNum').focus();
			}	
		}
		
		var room = '' ;
		var room1 = '';
		if( row.val('consumeRoomId')==null||row.val('consumeRoomId')==undefined||row.val('consumeRoomId')==''){
			 room = row.val('roomId');			
		}else{
			 room1 = row.val('consumeRoomId');
		}
		
		Baas.sendRequest({		
			"url" : ip + 'RoomServlet.do?func=getRoomById&getJson=1&consumeRoomId='+room1+'&roomId='+room,
			"dataType": "json",
			"success" : success
		});
		
	}



	//菜单点击列表点击
	Model.prototype.li2Click = function(event){
		$(event.target.parentElement).find("li").removeClass("active");
		$(event.target).is("li")?$(event.target).addClass("active").siblings().removeClass("active"):$(event.target.parentElement).addClass("active").siblings().removeClass("active");
		var row = event.bindingContext.$rawData;
		var typeCode=row.val("typeCode");
		var goodsListData = this.comp('goodsListData');
		//从购物车中统计当前各商品购买数量，并将数量显示在商品列中
		var cartData = this.comp('cartData');
		var url= ip+'GoodsServlet.do?func=listByTypeCode&typeCode='+typeCode+'&getJson=1';//http://192.168.1.20:8080
		var success = function(msg){
						var rowss=[];
						for(var i=0;i<msg.goods.length;i++){
						 rowss[i]={'goodsId':{'value':msg.goods[i].goodsId},'goodsName':{'value':msg.goods[i].goodsName},'sprice':{'value':msg.goods[i].sprice},'qty':{'value':0},'typeCode':{'value':msg.goods[i].typeCode},'unitId':{'value':msg.goods[i].unitId}};
					 	}
					 	var ffdata={"rows":rowss};
					 	goodsListData.loadData(ffdata);
				//从购物车中统计当前各商品购买数量，并将数量显示在商品列中
				goodsListData.eachAll(function(param){
						cartData.eachAll(function(data){
							if(param.row.val('goodsId')==data.row.val('goodsId')){
								param.row.val('qty',param.row.val('qty')+data.row.val('qty'));
							}
						});
				}); 	
					 	
					 		 	
	    }
	   
		Baas.sendRequest({
			"url" : url,
			"dataType": "json",
			"success" : success
		});
		
	};


	//取消输入人数弹框
	Model.prototype.button17Click = function(event){
		this.comp("popOver_renshu").hide();
	};



	//空房台的时候，确定人数，然后补上billMasterId,因为进入空房时获取不了billMasterId
	Model.prototype.button16Click = function(event){
	    var contents1 = this.comp('contents1');
	    var currentDeskData =  this.comp('currentDeskData');
	    var pop = this.comp('popOver_renshu');
	    var input = this.comp('input1');
	    var num = this.comp('input1').val();
	    if(num == ''||num == undefined){
	    	alert('输入错误');
	    	return;
	    }
	    var deskData = this.comp('deskData');
	    var row = currentDeskData.val('typeCode');
	    var success = function(param){
	    	getDesk(deskData,row,2);
	    	//补上当前台的订单id
	    	var roomId = currentDeskData.getFirstRow().val('roomId');
	    	var state = currentDeskData.getFirstRow().val('state');
	    	var typeCode = currentDeskData.getFirstRow().val('typeCode');
	    	var custQty = currentDeskData.getFirstRow().val('custQty');
	    	var shareNo = currentDeskData.getFirstRow().val('shareNo');
	    	var tai_number = currentDeskData.getFirstRow().val('tai_number');
	    	var billDetailId = currentDeskData.getFirstRow().val('billDetailId');
	    	currentDeskData.clear();
	    	
	    	currentDeskData.newData({
	    		index:0,
	    		defaultValues:[{
	    			 "tai_number":tai_number,
	    			 "billMasterId":param.result[0].billMasterId,
	    			 "consumeRoomId":param.result[0].consumeRoomId,
					 "roomId":roomId,
					 "state":state,
					 "typeCode":typeCode,
					 "custQty":custQty,
					 "shareNo":shareNo,
					 "billDetailId":billDetailId
	    		}]
	    	});
	    	currentDeskData.first();
	    	localStorage.setItem(currentDeskData.getFirstRow().val('roomId'),'');//清空购物车
	    	pop.hide();
	    	input.clear();
	    	contents1.to('menu');
	    }				
		Baas.sendRequest({
			"url" : ip + 'OrderedNumServlet.do?func=newConsumeRoom&getJson=1&roomId='+currentDeskData.getFirstRow().val('roomId')+'&custQty='+num+'&empcode='+this.comp('userData').val('userId'),
			"dataType": "json",
			"success" : success
		});
	};

	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};

	//菜单购物车加
	Model.prototype.image2Click = function(event){
		var cartData = this.comp('cartData');
		var row = event.bindingContext.$rawData;
		// ;
		var flag = false;//该菜单是否存在
		cartData.eachAll(function(param){
		// ;
			if(param.row.val('goodsId') == row.val('goodsId')){//已经存在
				param.row.val('qty',param.row.val('qty')+1);
				flag = true;
			}
		});
		if(flag === false){
			cartData.newData({
				defaultValues:[{
					'goodsId':row.val('goodsId'),
					'qty':row.val('qty')+1,
					'goodsName':row.val('goodsName'),
					'sprice':row.val('sprice'),
					'addMoney':0,
					'typeCode':row.val('typeCode'),
					'unitId':row.val('unitId')
				}]
			});
		}
		//购物车显示数量显示在goodsList
		row.val('qty',row.val('qty')+1);
		//向菜单类型右侧添加数量
		//---1.抽出与当前相同菜单类型的菜单类型
		var menuType = this.comp('menuTypeData');
		menuType.eachAll(function(data){
			if(data.row.val('typeCode') == row.val('typeCode')){
				data.row.val('qty',data.row.val('qty')+1);
			}
		});
		//---end of 加数量
		
		//将购物车数据写入到localStorage
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.getFirstRow().val('roomId');
		
		localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
	};



	//菜单购物车减,当购物车数量为0的时候，删掉当前行购物车
	Model.prototype.image1Click = function(event){
		var cartData = this.comp('cartData');
		var row = event.bindingContext.$rawData;
		var menuType = this.comp('menuTypeData');
		
		if(row.val('qty')<=1){		
			cartData.eachAll(function(param){
				if(param.row.val('goodsId') == row.val('goodsId')){//已经存在
					cartData.deleteData(param.row);
					row.val('qty',row.val('qty')-1);//将显示数量置0
							//向菜单类型右侧添减数量
							//---1.抽出与当前相同菜单类型的菜单类型
							menuType.eachAll(function(data){
								if(data.row.val('typeCode') == row.val('typeCode')){
									data.row.val('qty',data.row.val('qty')-1);
								}
							});
							//---end of 减数量
				}
			});
			return;
		}
		
		cartData.eachAll(function(param){
			if(param.row.val('goodsId') == row.val('goodsId')){//已经存在
				param.row.val('qty',param.row.val('qty')-1);
			}
		});
		
		//购物车显示数量显示在goodsList
		row.val('qty',row.val('qty')-1);
		
		//向菜单类型右侧添减数量
		//---1.抽出与当前相同菜单类型的菜单类型
		
		menuType.eachAll(function(data){
			if(data.row.val('typeCode') == row.val('typeCode')){
				data.row.val('qty',data.row.val('qty')-1);
			}
		});
		//---end of 减数量
		//将购物车数据写入到localStorage
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.getFirstRow().val('roomId');
		localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
	};



	//当打开菜单页面的时候，默认点击第一列
	Model.prototype.menuActive = function(event){
		$('.left-menu').find('li').eq(0).trigger('click');
	};
	/*
	//隐藏订单 
	Model.prototype.button6Click = function(event){
		//this.comp("order").hide();
		$(".no-single").hide();
	};
*/

	//删除购物车一行
	Model.prototype.p120Click = function(event){
		var row = event.bindingContext.$rawData;
		var goodsId = row.val('goodsId');
		var goodsList = this.comp('goodsListData');
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.val('roomId');
		var typeCode = row.val('typeCode');
		var menuTypeData = this.comp('menuTypeData');

		
		var cartData = this.comp('cartData');
		if(confirm('确定删除<'+row.val('goodsName')+'>')){
			cartData.deleteData(row);
			localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
			goodsList.eachAll(function(data){//菜单数量置0
				if(data.row.val('goodsId') == goodsId){
					data.row.val('qty',0);
				}
			});
			//菜单类型数量减
			menuTypeData.eachAll(function(param){
				if(param.row.val('typeCode')==typeCode){
					param.row.val('qty',param.row.val('qty')-row.val('qty'));
				}
			});
		}
	};


	//取消编辑菜单
	Model.prototype.button7Click = function(event){
		var currentCookWayData = this.comp('currentCookWayData');
		currentCookWayData.clear();
		var deletingCookWayData = this.comp('deletingCookWayData');
		deletingCookWayData.clear();
		//清空待
		this.comp("popOver2").hide();
	};

	//确定完成编辑菜单，
	Model.prototype.button8Click = function(event){
		//清空待删除口味
		var deletingCookWayData = this.comp('deletingCookWayData');
		deletingCookWayData.clear();
		//购物车加上加工
		var cart = this.comp('cartData');
		var currentCookWayData = this.comp('currentCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var sendCookWayData = this.comp('sendCookWayData');
		//为cart补上cookWay字段，主要用于菜单页面显示,加上附加费用
		cart.eachAll(function(param){
			param.row.val('addMoney',0);
		});
		cart.eachAll(function(param){
			sendCookWayData.eachAll(function(data){
				if(param.row.val('goodsId')== data.row.val('goodsId')){
						param.row.val('cookWay',param.row.val('cookWay')+data.row.val('cookWay')+'('+data.row.val('addMoney')+')');
				}
			});
			sendCookWayData.each(function(data){
				if(param.row.val('goodsId') ==  data.row.val('goodsId')){
					param.row.val('addMoney',param.row.val('addMoney')+	data.row.val('addMoney'));
				}
			});

		});
		
		localStorage.setItem('sendCookWayData'+this.comp('currentDeskData').getFirstRow().val('roomId'),JSON.stringify(sendCookWayData.toJson()));
//		//将currentCookWayData数据加入sendCookWayData，用于发送订单的数据
//		currentCookWayData.eachAll(function(param){
//			sendCookWayData.newData({
//				defaultValues:[{
//					'goodsId':param.row.val('goodsId'),
//					'cookWayId':param.row.val('cookWayId')
//				}]
//			});
//		});
//		
//		//清空当前加收
//		currentCookWayData.clear();
		this.comp("popOver2").hide();
	};



	//+购物车详情
	Model.prototype.a1Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var cartData = this.comp('cartData');
		// ;
		cartData.eachAll(function(param){
			if(currentGoodsData.val('goodsId') == param.row.val('goodsId')){
				param.row.val('qty',param.row.val('qty')+1);
			}
		});
		currentGoodsData.newData({
			index:0,
			defaultValues:[{
				"goodsName":currentGoodsData.val('goodsName'),
				"sprice":currentGoodsData.val('sprice'),
				"qty":currentGoodsData.val('qty')+1,
				"goodsId":currentGoodsData.val('goodsId'),
				"addMoney":currentGoodsData.val('addMoney')
			}]
		});
	};

	//购物车-
	Model.prototype.a2Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var cartData = this.comp('cartData');
		if(currentGoodsData.val('qty')<=1){
			return;
		}
		cartData.eachAll(function(param){
			// ;
			if(currentGoodsData.val('goodsId') == param.row.val('goodsId')){
				param.row.val('qty',param.row.val('qty')-1);
			}
		});
		currentGoodsData.newData({
			index:0,
			defaultValues:[{
				"goodsName":currentGoodsData.val('goodsName'),
				"sprice":currentGoodsData.val('sprice'),
				"qty":currentGoodsData.val('qty')-1,
				"goodsId":currentGoodsData.val('goodsId'),
				"addMoney":currentGoodsData.val('addMoney')
			}]
		});
	};





	//未分单要求分类
	Model.prototype.button14Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("popOver2").show();
		this.comp("contents2").to("content1");
		var cookTypeData = this.comp('cookTypeData');
		// ;
		cookTypeData.clear();//清空要求数据
		var success = function(param){
			for(var o in param.typeCodes){
				var typeCode = param.typeCodes[o].typeCode;
				var typeName = param.typeCodes[o].typeName;
				cookTypeData.newData({
					defaultValues:[{
						'typeCode':typeCode,
						'typeName':typeName
					}]
				});
			}
		}
		//获取做法要求分类：
		Baas.sendRequest({
			"url" : ip + 'CookWayServlet.do?func=getCookType&getJson=1',
			"dataType": "json",
			"success" : success
		});
		/*
		//设置要求内标题ul的宽
		var liWidthAll=0; 
		$(".require-title").find("ul").children("li").each(function(){
			liWidthAll+=parseInt($(this).outerWidth(true));
		})
		$(".require-title").find("ul").css({"width":liWidthAll});
		 */
	};


	//要求行事件
	Model.prototype.li4Click = function(event){
			var cookTypeDetailData = this.comp('cookTypeDetailData');
			var row = event.bindingContext.$rawData;
			var success = function(param){
			// ;
				cookTypeDetailData.clear();
				for(var o in param.cookways){
					cookTypeDetailData.newData({
						defaultValues:[{
							'cookWayId':param.cookways[o].cookWayId,
							'typeCode':param.cookways[o].typeCode,
							'cookWay':param.cookways[o].cookWay,
							'addMoney':param.cookways[o].addMoney
						}]
					});
				}
			}
			Baas.sendRequest({
			"url" : ip + 'CookWayServlet.do?func=getCookWay&getJson=1&typeCode='+row.val('typeCode'),
			"dataType": "json",
			"success" : success
		});
		$(event.target).addClass("active").parents(".col").siblings().children("span").removeClass("active");
	};

	//加收一项
	Model.prototype.li5Click = function(event){
		var row = event.bindingContext.$rawData;
		var currentCookWayData = this.comp('sendCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var flag = false;//判断是否已经添加
		currentCookWayData.eachAll(function(param){
			if(param.row.val('cookWayId') == row.val('cookWayId')&&param.row.val('goodsId')==currentGoodsData.val('goodsId')){
				justep.Util.hint('已经添加');
				flag = true;
			}
		});
		if(flag === true){
			return;
		}
		//$('#showCookWays').append("<span"+" id='"+row.val('cookWayId')+"'>"+row.val('cookWay')+'('+row.val('addMoney')+')'+"</span>");
		var money = currentGoodsData.val('addMoney')+row.val('addMoney');
		
		currentGoodsData.getFirstRow().val('addMoney',money);
		currentCookWayData.newData({
			defaultValues:[{
				'cookWayId':row.val('cookWayId'),
				'goodsId':currentGoodsData.val('goodsId'),
				'cookWay':row.val('cookWay'),
				'addMoney':row.val('addMoney'),
				'detail':$('#showCookWays').text()
			}]
		});	
		$(event.target).addClass("active");
	};





	//送单
	Model.prototype.button5Click = function(event){
		var currentDeskData = this.comp('currentDeskData').getFirstRow();
		var billMasterId = currentDeskData.val('billMasterId');
		var roomId = currentDeskData.val('roomId');
		var orderData = this.comp('orderData');
		var goods = '';
		var cartData = this.comp('cartData');
		cartData.eachAll(function(param){
			goods += param.row.val('goodsId')+'_'+param.row.val('qty')+'_'+param.row.val('sprice')+'_'+param.row.val('goodsName')+'_'+param.row.val('unitId')+',';
		});
		goods = goods.substring(0,goods.length-1);
		var sendCook = this.comp('sendCookWayData');
		var cookways = '';
		sendCook.eachAll(function(param){
				cookways += param.row.val('goodsId')+'_'+param.row.val('cookWayId')+'_'+param.row.val('cookWay')+'_'+param.row.val('addMoney')+',';
		});
		cookways = cookways.substring(0,cookways.length-1);
		var user = this.comp('userData');
		//整理presents的东西
		var sendPresentsReasonData = this.comp('sendPresentsReasonData');
		var presents = '';
		sendPresentsReasonData.eachAll(function(param){
			presents += param.row.val('goodsId')+'_'+param.row.val('qty')+'_'+param.row.val('tfzReasonId')+',';
		});
		presents = presents.substring(0,cookways.length-1);
		
		var url = 'ShopCartServlet.do?func=orderByReturnJson&billMasterId='+billMasterId+'&roomId='+roomId+'&goods='+goods+'&cookways='+cookways+'&orderempcode='+user.val('userId')+'&presents='+presents;	
		var menuTypeData = this.comp('menuTypeData');//用于清0数据
		var goodsListData = this.comp('goodsListData');
		//
		//送单成功
		var success = function(param){	

			alert(param.result[0].msg);
			localStorage.setItem(roomId,'');//清空购物车缓存
			localStorage.setItem('sendCookWayData'+roomId, '');//清空sendCookWayData
			cartData.clear();//发送订单成功，清空cartData
			sendCook.clear();//清空sendCook
			//menuList清0
			menuTypeData.eachAll(function(menuData){
				menuData.row.val('qty',0);
			});
			goodsListData.eachAll(function(goodsData){
				goodsData.row.val('qty',0);
			});
			var billDetailId = param.result[0].billmasterid;
					//更新orderData
							var successOrder = function(param){
									//清空现有的订单数据
									orderData.clear();
									//更新现在的订单列表
									for(var o in param.consumeDetails){
										orderData.newData({
											defaultValues:[{
												goodsName:param.consumeDetails[o].goodsName,
												price:param.consumeDetails[o].price,
												addMoney:param.consumeDetails[o].addMoney,
												qty:param.consumeDetails[o].qty,
												billDetailId:billDetailId,
												unitName:param.consumeDetails[o].unitName,
												presentQty:param.consumeDetails[o].presentQty
											}]
										});
									}
									$('.left-menu').find('li').eq(0).trigger('click');//触发菜单界面的点击事件，以便让菜单数量清0
								};
								//拿到订单详情
								Baas.sendRequest({
									"url" : ip + 'ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+currentDeskData.val('billMasterId')+'&roomId='+currentDeskData.val('roomId'),
									"dataType": "json",
									"success" : successOrder
								});			
			var testPrintSuccess = function(printData){
			//----------------------------------------------------start of print----------------------------------
			
//			alert(param.result[0].msg);
			//当有订单时才打印
			if(param.result[0].billmasterid != ''&&param.result[0].billmasterid != undefined){
				//打印成功

			}
			//----------------------------------------------end of print------------------------------
			}
			//打印
			Baas.sendRequest({
					"url" : ip + 'ShopCartServlet.do?func=printOrder&consumeRoomId='+param.result[0].msg.split('=')[1],
					"dataType": "json",
					"success" : testPrintSuccess
			});
		};
			//送单
		Baas.sendRequest({
			"url" : ip + url,
			"dataType": "json",
			"success" : success
		});
	};
	

		
	//删除----选中口味事件
	Model.prototype.li6Click = function(event){
			//去除所有激活点
		$('.ed-con-con').find('li').attr('__inline-id__',$(event.target).attr('__inline-id__')).addClass('active').siblings().removeClass('active');
			//为点击的li加上绿色
		$(event.target.parentElement).addClass('active');
		var deletingCookWayData = this.comp('deletingCookWayData');
		var row = event.bindingContext.$rawData;//currentCookWayData
		
		//将待删除的口味，放入到deletingCookWayData
		deletingCookWayData.newData({
			index:0,
			defaultValues:[{
				'cookWayId':row.val('cookWayId'),
				'goodsId':row.val('goodsId')
			}]
		});
		
		
	};

	Model.prototype.button19Click = function(event){
		clearTimeout(timeOutEvent);//清除定时器  
		 timeOutEvent = 0; 
		 localStorage.setItem("long","1"); 
		this.comp("contents1").to("index");
//		$('.left-menu').find('li').eq(0).trigger('click');//刷新
	};
	//搭台
	Model.prototype.button18Click = function(event){
		//加active
		this.bgColor(event);
		lang=false;
		//$('#more').css({'display':'none'});
		this.comp("popOver-take").show();	
	};

	Model.prototype.button26Click = function(event){
		this.comp("popOver-take").hide();
	};
	
	//切换主页底按钮bgcolor
	Model.prototype.bgColor=function(event){
		$(event.target).parents(".col").addClass("active");
		$(event.target).parents(".col").siblings().removeClass("active");
	}


	
	//房号加载
	Model.prototype.li1Load = function(event){

	};
	

	
	
	

	//搭台确定
	//当什么的时候就不能搭台
	Model.prototype.button25Click = function(event){
		var currentDeskData = this.comp('currentDeskData');
		//---用于刷新
		var status = this.comp('statusData');
		var deskData = this.comp('deskData');
		
		if(currentDeskData.val('state')!='在用'){
			this.comp('popOver-take').hide();
			this.comp('message').show({'message':'error','title':'当前台不允许搭台'});
			return;
		}
		var url = 'RoomFunctionServlet.do?func=shareRoom&roomId='+currentDeskData.val('roomId')+'&custQty='+$('#'+this.getIDByXID('input4')).val();
		var contents1 = this.comp('contents1');
		var success = function(param){
			if(param.code == '1'){
				contents1.to('index');
			}
		}
		//送单
		Baas.sendRequest({
			"url" : ip + url,
			"dataType": "json",
			"success" : success
		});
		$(".cancel-active").hide();
		this.comp("popOver-take").hide();
		getDesk(deskData,status.val('typeCode'),2);		
	};
		
	
    //长按开始
    Model.prototype.li1Touchstart = function(event){
    	event.stopPropagation();
    	var currentDeskData = this.comp('currentDeskData');
    	var row = event.bindingContext.$rawData;
    	var status = this.comp('statusData');
    	var _this=$(event.target).parents("li");
    	status.getFirstRow().val('typeCode',row.val('typeCode'));
    	if(lang_flag == 1){
    	    		   timeOutEvent = setTimeout(function(){
    				   lang=true;
			    //记录下当前长按的桌子信息
			    	currentDeskData.clear();
			        currentDeskData.newData({
							index: 0,
							defaultValues:[{
								 "tai_number":row.val('tai_number'),
								 "billMasterId":row.val('billMasterId'),
								 "roomId":row.val('roomId'),
								 "typeCode":row.val('typeCode'),
								 "state":row.val('state'),
								 "consumeRoomId":row.val('consumeRoomId'),
								 "shareNO":row.val('shareNO'),
								 "custQty":row.val('custQty')
							}]
					}); 
				currentDeskData.first(); 
            //执行长按要执行的内容，如弹出菜单         
            //找出台li里的attr=mydata    
//          var liObj= $(event.target).is("li") ? $(event.target).attr("mydata") : $(event.target).parents("li").attr("mydata");
//            //找出台下主体
            var divObj= $(event.target).parents("li");
             	divObj.removeClass("ccc");
//            //为选中的台加上active
            divObj.addClass("active").siblings().removeClass("active").addClass("ccc"); //? $(event.target).addClass("active").siblings().removeClass("active") : $(event.target).parents("li").addClass("active").siblings().removeClass("active");
              $(".more-wrap").show();
              $(".cancel-active").css("display","block");
              $(".main-ul").css({"margin-bottom":"94px"});
//            $(".more-wrap").find(".btn").each(function(){
//            	$(this).attr({"roomId":liObj});
//            });
			timeOutEvent = 0;
			 $(".main-ul").find("li").each(function(){
				 action = $(this).attr('action','action');
			 });
        },600);//这里设置定时器，定义长按500毫秒触发长按事件，时间可以自己改，个人感觉500毫秒非常合适 
    	
    	}

    	
    	
    			
    	
	
		
    };
    
    //移动
    Model.prototype.li1Touchmove = function(event){
        clearTimeout(timeOutEvent);//清除定时器  
        timeOutEvent = 0;  
    };
    
    var action;//记录当前的操作方法
    //结束
    Model.prototype.li1Touchend = function(event){
    	var _this=$(event.target).parents("li");
    	var action=_this.attr("action");
    	var newNum = this.getElementByXid('input1');//新开台输入人数框
    	event.preventDefault();
        clearTimeout(timeOutEvent);//清除定时器   
        if(timeOutEvent!=0 && lang==false){              
        //这里写要执行的内容（尤如onclick事件）  
       
		if(action == undefined ||action == ''){
		 clearTimeout(timeOutEvent);//清除定时器  
        timeOutEvent = 0; 
        var currentDeskData = this.comp('currentDeskData');
		var row = event.bindingContext.$rawData;
		var deskData = this.comp('deskData');
		var state=row.val("state");
		var contents1 = this.comp('contents1');
		var popOver_renshu = this.comp("popOver_renshu");
		var cartData = this.comp('cartData');
		var goodsListData = this.comp('goodsListData');
		var menuTypeData = this.comp('menuTypeData');
		   //记录下当前长按的桌子信息
			    	currentDeskData.clear();
			        currentDeskData.newData({
							index: 0,
							defaultValues:[{
								 "tai_number":row.val('tai_number'),
								 "billMasterId":row.val('billMasterId'),
								 "roomId":row.val('roomId'),
								 "typeCode":row.val('typeCode'),
								 "state":row.val('state'),
								 "consumeRoomId":row.val('consumeRoomId'),
								 "shareNO":row.val('shareNO'),
								 "custQty":row.val('custQty')
							}]
					}); 
					currentDeskData.first();  
					//设置埋单按钮
					
					if(row.val('state')=='埋单'){
						$(this.getElementByXid('span77')).text('取消埋单'); 
					}else{
						$(this.getElementByXid('span77')).text('埋单'); 
					}
		//下面用于刷新当前房台状态
		var deskData = this.comp('deskData');
		var success = function(param){
			//重新加载房台
			$('#more').slideUp();
			//清空购物车
			cartData.clear();
			//重新加载菜单类型信息
			$.ajax({
		        type: "GET",
		        url: ip + 'GoodsTypeServlet.do?func=listGoodsType&getJson=1',
		        dataType: 'json',
		        async: false,//使用同步方式，目前data组件有同步依赖
		        cache: false,
		        success: function(data){
		            var rowss=[];
					for(var i=0;i<data.typeCodes.length;i++){
					 rowss[i]={'typeName':{'value':data.typeCodes[i].typeName},'typeCode':{'value':data.typeCodes[i].typeCode},'qty':{'value':0}};
				 	}
				 	var ffdata={"@type":"table","rows":rowss};
				 	menuTypeData.loadData(ffdata);//将返回的数据加载到data组件
			 	
		        },
		        error: function(){
		          throw justep.Error.create("加载数据失败");
		        }
			});
			//---------end of ajax-------------
			

			//清空商品列表
			goodsListData.clear();			
			//记录当前台号
			currentDeskData.newData( );//end
			if(state=="在用"){
				contents1.to("menu"); 
			}else if(state=="埋单"){
				contents1.to("menu");
			}else if(state="空台"){
				clearTimeout(timeOutEvent);//清除定时器  
				popOver_renshu.show();
				$(newNum).focus();//让文本框架获得焦点
			}
			if(currentDeskData.getFirstRow().val('state')!='空台'){
				//从localStorage中获取购物车数据
				if(localStorage.getItem(param.rooms[0].roomId)!=null&&localStorage.getItem(param.rooms[0].roomId)!=""){
					cartData.loadData(JSON.parse(localStorage.getItem(param.rooms[0].roomId)));
				}
				//通过购物车计算，各商品类型中的数量和商品的数据
				menuTypeData.eachAll(function(data){
					cartData.eachAll(function(data1){
						if(data.row.val('typeCode')==data1.row.val('typeCode')){
							data.row.val('qty',data.row.val('qty')+data1.row.val('qty'));
						}
					});
				});
			}	
		}
		
		var room = '' ;
		var room1 = '';
		if( row.val('consumeRoomId')==null||row.val('consumeRoomId')==undefined||row.val('consumeRoomId')==''){
			 room = row.val('roomId');			
		}else{
			 room1 = row.val('consumeRoomId');
		}
		
		Baas.sendRequest({		
			"url" : ip + 'RoomServlet.do?func=getRoomById&getJson=1&consumeRoomId='+room1+'&roomId='+room,
			"dataType": "json",
			"success" : success
		});
	    //-------------end of click-----------------
	    }else if(action == "turntable"){//转台-----------
	    	var status = this.comp('statusData');
	    	var deskData = this.comp('deskData');
	    	
	    var currentDeskData = this.comp('currentDeskData');
		//当前房间的roomId
		var currentRoomId = currentDeskData.val('roomId');
		//当前台BillMasterID
		var currentBillMasterId	= currentDeskData.val('billMasterId');
		//当前台ConsumeRoomID
		var currentConsumeRoomId =currentDeskData.val("consumeRoomId");
		//当前台currentShareNo
		var currentShareNo = currentDeskData.val("shareNO");
		//判断shareNo是否是undefind
		currentShareNo= currentShareNo === undefined? "" : currentShareNo;
		//当前房间的名称
		var currentRoomName	= currentDeskData.val("tai_number");
		//选择的房间的名称，如果有【xx】 需要截断字符串再上传  --去【xx】
			currentRoomName = currentRoomName.replace(/【.*/g," ");
			//当a节点点击的时候，当前节点变红其它节点变灰
				if(_this.attr("state") == '空台' && currentDeskData.val('state') == "在用"){
					//记录下当前房台的信息
					var changeRoomId = _this.attr('roomid');
					
					//要改变的台名
					var changeRoomName = _this.attr('tai_number');
					//选择的房间的名称，如果有【xx】 需要截断字符串再上传  --去【xx】
					changeRoomName = changeRoomName.replace(/【.*/g," ");
					//alert(changeRoomName);
					_this.css({"background":"#18AEB6"});
					var url=ip + 'RoomFunctionServlet.do';
					var data='func=changeRoom&changeRoomId='+changeRoomId+'&changeRoomName='+changeRoomName+'&currentRoomId='+currentRoomId+'&current='+currentBillMasterId+'&currentConsumeRoomId='+currentConsumeRoomId+'&currentShareNo='+currentShareNo+'&currentRoomName='+currentRoomName;
					console.log(data)
						$.ajax({
					        type: "GET",
					        url: url,
					        data:data,
					        dataType: 'json',
					        async: false,//使用同步方式，目前data组件有同步依赖
					        cache: false,
					        success: function(msg){
					        	if(msg.code == 1){
					        		 $(".more-wrap").hide();
					        		 $(".main-ul").css({"margin-bottom":"0"});
					        		 lang=false;
					        		alert(msg.result);
									//刷新
									getDesk(deskData,status.val('typeCode'),2);		
									$(".cancel-active").hide();			        	
								}else{
					        		alert("转台失败！");
					        	}
					        	
					        },
					        error: function(){
					          throw justep.Error.create("加载数据失败");
					        }
						});
			
				
			}else{
				alert("此台已有人，不能转");
			}
			
	
	    }else if(action=="shareRoom"){//并台------
	    		
	    		var currentDeskData = this.comp('currentDeskData');
	    		var mergeRoomData = this.comp('mergeRoomData');
	    		//---用于刷新
	    		var status = this.comp('statusData');
	    		var deskData = this.comp('deskData');
	    		if(_this.attr("state") == '在用'){
			
					//记录下当前房台的信息
					var currentRoomId = _this.attr('roomid');
					var currentBillMasterId = _this.attr('billmasterid');	
					var currentConsumeRoomId = _this.attr('consumeRoomId');
					var currentCustQty = _this.attr('custQty');
					var custQty = _this.attr('custQty');
					
					var shareRoomId = currentDeskData.val('roomId');
					var shareBillMasterId = currentDeskData.val('billMasterId');
					var shareConsumeRoomId = currentDeskData.val('consumeRoomId');
								
					_this.css({"background":"#18AEB6"});
					var success = function(param){
						if(param.code == '1'){
//							location.reload();//刷新房台	
							lang=false;
							//刷新台
							getDesk(deskData,status.val('typeCode'),2);
							$(".cancel-active").hide();
							return;
						}else{
						}
					};
					Baas.sendRequest({
						"url" : ip + 'RoomFunctionServlet.do?func=mergeRoom&shareRoomId='+shareRoomId+'&shareConsumeRoomId='+shareConsumeRoomId+'&shareBillMasterId='+shareBillMasterId+'&currentRoomId='+currentRoomId+'&currentBillMasterId='+currentBillMasterId+'&currentConsumeRoomId='+currentConsumeRoomId+'&currentCustQty='+currentCustQty,
						"dataType": "json",
						"success" : success
					});
				}else{//如果当前房间不为在用状态，不允许并单
					this.comp('message').show({'title':'当前桌子不允许并台','message':'error'});
				}
	    	
	    }
      }  
    };


    //刷新房台
	Model.prototype.indexActive = function(event){
		var deskData = this.comp('deskData');
		var status = this.comp('statusData');
		if(status.val('typeCode') != undefined){
			getDesk(deskData,status.val('typeCode'),2);
		}else{
			$('.left-menu').find('li').eq(0).trigger('click');
		}
	};
    
	
	//并台	
	Model.prototype.button20Click = function(event){
		//加active
		this.bgColor(event);
		var currentDeskData = this.comp('currentDeskData');
		//当前房间的roomId
		var roomId = currentDeskData.val('roomId');
		
		//选判断当前节点是否为已点节点
		//1.如果当前节点为空房，则不允许点击
		//2.如果点击的房间为当前房间，则不允许点击 
		
		//当a节点点击的时候，当前节点变红其它节点变灰
		$(".main-ul").find("li").each(function(){
		
			//$(this).unbind("click");
			$(this).attr('action','shareRoom');
//			if($(this).attr("action")=="shareRoom"){
//				//alert("a")
//			}
			if($(this).attr("roomid") == roomId){
				$(this).css({"background":"rgb(0, 204, 102)"});
			}else{
				if($(this).attr("state") == '在用'){
					$(this).css({"background":"#2BB8AA"});
				}else if($(this).attr("state") == '空台'){
					$(this).css({"background":"#ccc"});
				}
			}
		
		});
	};

	
	//未分单弹出修改菜名框
	Model.prototype.span32Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("give").show();
		this.comp("contents4").to("content17");
		$(this.getElementByXid('ninput2')).focus();
	};

	
	//未分单关闭give pop框
	Model.prototype.closeGive = function(event){
		this.comp("give").hide();
	};

	
	//未分单修改价格
	Model.prototype.span33Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("give").show();
		this.comp("contents4").to("content15");
		$(this.getElementByXid('ninput5')).focus();
	};

	
	//未分单弹出修改数量框
	Model.prototype.span34Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("give").show();
		this.comp("contents4").to("content23");
		$(this.getElementByXid('ninput7')).focus();
	};

	
	//未分单弹出赠送框
	Model.prototype.span35Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		this.comp("contents8").to("content56");
		this.comp("othe").show();

		$(this.getElementByXid('inputGive')).focus();	
	};

	//转台
	Model.prototype.button21Click = function(event){
		//加active
		this.bgColor(event);
		 var currentDeskData = this.comp('currentDeskData');
		//当前房间的roomId
		var currentRoomId = currentDeskData.val('roomId');

		$(".main-ul").find("li").each(function(){
			//$(this).unbind("click");
			$(this).attr('action','turntable');
			//console.log($(this))
			
			  	if($(this).attr("roomid") == currentRoomId){
				$(this).css({"background":"rgb(0, 204, 102)"});
				
			}else{
				if($(this).attr("state") == '空台'){
					$(this).css({"background":"#2BB8AA"});
				}else{
					$(this).css({"background":"#ccc"});
				}
			}
		
	
	})
	};


	
	
	Model.prototype.li1Dblclick = function(event){

	};

	
	//从这里进入菜单详细
	Model.prototype.li8Click = function(event){
		
		var liObj= $(event.target).is("li") ? $(event.target).addClass("active").siblings().removeClass("active") : $(event.target).parents("li").addClass("active").siblings().removeClass("active");
		//获取当前行数据
		var row = event.bindingContext.$rawData;
		 
		var currentGoodsData = this.comp('currentGoodsData');
		currentGoodsData.newData({
			index:0,
			defaultValues:[{
				"goodsName":row.val('goodsName'),
				"sprice":row.val('sprice'),
				"qty":row.val('qty'),
				"goodsId":row.val('goodsId'),
				"addMoney":row.val('addMoney'),
				'typeCode':row.val('typeCode')
			}]
		});
		var sendCookWayData = this.comp('sendCookWayData');
		//清空购物车加钱文本
		var cart = this.comp('cartData');
		cart.eachAll(function(param){		 
			if(param.row.val('goodsId') == currentGoodsData.val('goodsId')){
				param.row.val('cookWay','');
			}
		});
		//清空当前加收钱项目
		var currentCookWayData = this.comp('currentCookWayData');
		currentCookWayData.clear();
	};

	
	//零结帐
	Model.prototype.button22Click = function(event){
			//加active
			this.bgColor(event);
			var currentDeskData = this.comp('currentDeskData');
			var userData = this.comp('userData');
			//---用于刷新
    		var status = this.comp('statusData');
    		var deskData = this.comp('deskData');
			var success = function(param){
				//$('.left-menu').find('li').eq(0).trigger('click');//刷新房台
				getDesk(deskData,status.val('typeCode'),2);	
				localStorage.setItem(currentDeskData.getFirstRow().val('roomId'),'');//清空购物车
			}
			Baas.sendRequest({
				//RoomFunctionServlet.do?func=cleanRoom&currentBillMasterId=xxx&checkEmpCodeId=xxx&bankTerminalID=xxx
				"url" :ip+ 'RoomFunctionServlet.do?func=cleanRoom&currentBillMasterId='+currentDeskData.val('billMasterId')+'&checkEmpCodeId='+userData.val('userId')+'&bankTerminalID=0001000000000106',
				"dataType": "json",
				"success" : success
			});
	};

	
	//埋单
	Model.prototype.button23Click = function(event){
		var button = this.comp('button23');//埋单	
		var currentDeskData = this.comp('currentDeskData').getFirstRow();
		
		if(currentDeskData.val('state')!='埋单'){
		var userData = this.comp('userData');
			var a = myBaas.cleanRoom({'currentBillMasterId':currentDeskData.val('billMasterId'),'userId':userId.val('userId'),'currentConsumeRoomId':currentDeskData.val('consumeRoomId')});
		}else{//取消埋单
			var a = myBaas.uncheckBill({'currentBillMasterId':currentDeskData.val('billMasterId'),'userId':userId.val('userId')});
			
		}
	};

	
	
	Model.prototype.button44Click = function(event){
		this.comp('give').hide();
	};
	

	
//	//未分单长按来解决
//	Model.prototype.span32Touchstart = function(event){
//		var currentGooodsData = this.comp('currentGoodsData');
//		var row = event.bindingContext.$rawData;
//		//选将当前行缓存下来
//		currentGoodsData.newData({
//			index:0,
//			defaultValues:[{
//				'goodsName':row.val('goodsName'),
//				'goodsId':row.val('goodsId'),
//				'qty':row.val('qty'),
//				'sprice':row.val('sprice'),
//				'addMoney':row.val('addMoney'),
//				'cookWay':row.val('cookWay'),
//				'totalPrice':row.val('totalPrice'),
//				'typeCode':row.val('typeCode')
//			}]
//		});
//		
//		
//	};

	
	//未分单修改菜名
	Model.prototype.button43Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		var goodsName = this.comp('ninput2').val();
		var goodsId = this.comp('currentGoodsData').val('goodsId');		
		var cartData = this.comp('cartData');
		order.changeGoodsName({'goodsName':goodsName,'goodsId':goodsId,'cartData':cartData});
		this.comp('ninput2').clear();
		currentGoodsData.clear();
		this.comp('give').hide();
	};

	
	//未分单修改价格
	Model.prototype.button34Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		var sprice =this.comp('ninput5').val();
		order.changeGoodsPrice({'sprice':sprice,'goodsId':this.comp('currentGoodsData').val('goodsId'),'cartData':this.comp('cartData')});
		currentGoodsData.clear();
		this.comp('ninput5').clear();
		this.comp('give').hide();
	};

	
	//未分单修改数量
	Model.prototype.button38Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var message = this.comp('message');
		if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
			return false;
		}
		var qty = this.comp('ninput7').val();
		order.changeGoodsQty({'qty':qty,'goodsId':this.comp('currentGoodsData').val('goodsId'),'cartData':this.comp('cartData')})
		currentGoodsData.clear();
		this.comp('ninput7').clear();
		this.comp('give').hide();
	};

	
	//赠送原因model
	Model.prototype.presentsDataCustomRefresh = function(event){
		var param = order.getgiftReason({'ip':ip});
		var presentsData = this.comp('presentsReasonData');
		presentsData.loadData(param);
	};

	
	//赠送确定---保存到本地
	Model.prototype.buttonGitClick = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var qty = this.comp("inputGive").val();		
		var currentPresentsReasonData = this.comp('currentPresentsReasonData');
		var sendPresentsReasonData = this.comp('sendPresentsReasonData');
		if(qty==null||qty==''||qty==undefined){
			this.comp('message').show({'title':'message','message':'数量不能为空'});
			return;
		}
		if(currentPresentsReasonData.getCount()<1){
			this.comp('message').show({'title':'message','message':'理由没选'});
			return;			
		}
		sendPresentsReasonData.newData({
			defaultValues:[{
				'goodsId':currentGoodsData.val('goodsId'),
				'qty':qty,
				'tfzReansonId':currentPresentsReasonData.val('tfzReansonId')
			}]		
		});
		this.comp('othe').hide();
	};

	
	//记录下当前的赠送原因
	Model.prototype.gitliClick = function(event){
		var currentPresentsReasonData = this.comp('currentPresentsReasonData');
		var row = event.bindingContext.$rawData;
		currentPresentsReasonData.newData({
			index:0,
			defaultValues:[{
				'tfzReasonId':row.val('tfzReasonId'),
				'zReason':row.val('zReason'),
				'zReasonCode':row.val('zReasonCode'),
				'zType':row.val('zType')
			}
			]
		});
		$(event.target).addClass("active");
		$(event.target).siblings().removeClass("active");
	};

	
	//退菜原因model刷新
	Model.prototype.cancelReasonDataCustomRefresh = function(event){
		var a = order.cancelReason({'ip':ip});
		////
		this.comp('cancelReasonData').loadData(a);
	};

	
	//点击菜单获取当前退菜原因
	Model.prototype.canelliClick = function(event){
		$(event.target).addClass("active").siblings().removeClass("active");
		var currentCancelReasonData = this.comp('currentCancelReasonData');
		var row = event.bindingContext.$rawData;
		currentCancelReasonData.newData({
			index:0,
			defaultValues:[{
				'tfzReasonId':row.val('tfzReasonId'),
				'zReason':row.val('zReason'),
				'zReasonCode':row.val('zReasonCode'),
				'zType':row.val('zType')
			}
			]
		});
	};

	
	//发送退菜原因
	Model.prototype.cancelReasonTrueClick = function(event){
		var currentCancelReasonData = this.comp('currentCancelReasonData');
		var userData = this.comp('userData');
		var userId = userData.val('userId');
		var currentCancelReasonData = this.comp('currentCancelReasonData');
		var reasonId = currentCancelReasonData.val('tfzReasonId');
		var billDetailId = this.comp('currentOrderData').getFirstRow().val('billDetailId');
		var qty = this.comp("inputQuit").val();
		var cancelQty =  this.comp('currentOrderData').getFirstRow().val('cancelQty');
		var orderQty = this.comp('currentOrderData').getFirstRow().val('qty');
		
		if(qty > orderQty-cancelQty){
			this.comp('message').show({'title':'error','message':'退菜数量超出订单数量'});
			return;
		}
		if(currentCancelReasonData.getCount()<1){
				this.comp('message').show({'title':'error','message':'请选择退菜原因'});
		}
		var result = order.cancelGoods({'ip':ip,'userId':userId,'reasonId':reasonId,'qty':qty,'billDetailId':billDetailId});
		order.refreshOrder({'ip':ip,'currentDeskData':this.comp('currentDeskData'),'orderData':this.comp('orderData')});//刷新
		this.comp('currentOrderData').clear();//清空退菜
		currentCancelReasonData.clear();//清空退菜原因
		this.comp('othe').hide();
	};

	
	//已分单价格修改
	Model.prototype.hspan32Click = function(event){
		////
		//检查是否选中行
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}
//		this.comp('hinput10').clear();
		this.comp("yet-sort").show();
		this.comp("contents5").to("content29");
		$(this.getElementByXid('hinput10')).focus();
	};



	
	//已分单的点击(获取点击的订单)
	Model.prototype.horderliClick = function(event){
		var liObj= $(event.target).is("li") ? $(event.target).addClass("active").siblings().removeClass("active") : $(event.target).parents("li").addClass("active").siblings().removeClass("active");
		var currentOrderData = this.comp('currentOrderData');
		var row = event.bindingContext.$rawData;
		
		currentOrderData.newData({
			index:0,
			defaultValues:[{
				goodsName:row.val('goodsName'),
				price:row.val('price'),
				addMoney:row.val('addMoney'),
				qty:row.val('qty'),
				billDetailId:row.val('billDetailId'),
				unitName:row.val('unitName'),
				cancelQty:row.val('cancelQty'),
				presentQty:row.val('presentQty')
			}]
		});
	};

	
	//已分单订单界面退菜跳转
	Model.prototype.hspan40Click = function(event){
//		if(this.comp('currentOrderData').getCount()<=0){
//			this.comp('message').show({'title':'警告','message':'请先选择菜品'});
//			return;
//		}
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}
		this.comp('othe').show();
		this.comp('contents8').to('content57');
	};

	
	//已分单修改价格
	Model.prototype.hbutton57Click = function(event){
		var currentOrderData = this.comp('currentOrderData');
		var currentGoodsData = this.comp('currentGoodsData');
		var userData = this.comp('userData');
		var price = this.comp('hinput10').val();
		var currentDeskData = this.comp('currentDeskData').getFirstRow();
		var result = order.hEditPrice({'ip':ip,'billDetailId':currentOrderData.val('billDetailId'),'price':price,'userId':userData.val('userId')});
		if(result.code == '-1'){
			this.comp('message').show({'title':'message','message':result.result});
			return;
		}
		//刷新orderData
		////
		order.refreshOrder({'ip':ip,'currentDeskData':this.comp('currentDeskData'),'orderData':this.comp('orderData')});
		currentOrderData.clear();
		debugger
		//隐藏dialog
		this.comp('hinput10').clear();
		this.comp('yet-sort').hide();
	};

	//登录页面设置
	Model.prototype.button70Click = function(event){
		location.href = 'languageSelect.w#!settings';
		localStorage.setItem("back", "0");
	};

	
	//关闭登录页面设置弹框
	Model.prototype.button71Click = function(event){
		this.comp("Settings").hide();
	};
	
	//已分单界面数量跳转
	Model.prototype.hspan33Click = function(event){
		//检查是否选中行
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}
		this.comp('yet-sort').show();
		this.comp('contents5').to('content35');
		$(this.getElementByXid('hinput11')).focus();
	};

	
	
	//已分单界面数量
	Model.prototype.hbutton53Click = function(event){
		var currentOrderData = this.comp('currentOrderData');
		var currentDeskData = this.comp('currentDeskData').getFirstRow();
		var userData = this.comp('userData');
		var qty = this.comp('hinput11').val();
		var result = order.hEditCout({'ip':ip,'billDetailId':currentOrderData.val('billDetailId'),'userId':userData.val('userId'),'qty':qty,'unitName':currentOrderData.val('unitName')});
		if(result.code=='1'){
				order.refreshOrder({'ip':ip,'orderData':this.comp('orderData'),'currentDeskData':this.comp('currentDeskData')});
				this.comp('yet-sort').hide();
				this.comp('hinput11').clear();
				currentOrderData.clear();
		}
		
	};

	
	
	//催菜
	Model.prototype.hspan34Click = function(event){
		//检查是否选中行
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}
		var currentOrderData = this.comp('currentOrderData');
		var a = order.reminder({'ip':ip,'billDetailId':currentOrderData.val('billDetailId')});
		if(a.code=='1'){
			this.comp('message').show({'title':'success','message':a.result});
			currentOrderData.clear();
		}else{
			this.comp('message').show({'title':'error','message':a.result});
		}
	};

	
	
	//隐藏yet-sort popOver
	Model.prototype.hbutton44Click = function(event){
		this.comp('yet-sort').hide();
	};

	
	
	//叫起
	Model.prototype.hspan94Click = function(event){
		//检查是否选中行
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}		
		var currentOrderData = this.comp('currentOrderData');
		var a = order.respite({'ip':ip,'billDetailId':currentOrderData.val('billDetailId')});
		if(a.code=='1'){
			this.comp('message').show({'title':'success','message':a.result});
			currentOrderData.clear();
		}else{
			this.comp('message').show({'title':'error','message':a.result});
		}
	};

	
	//已分单赠送跳转
	Model.prototype.hspan35Click = function(event){
		//检查是否选中行
		if(check.hCheckSelect({'currentOrderData':this.comp('currentOrderData'),'message':this.comp('message')})== false){
			return;
		}	
		this.comp('othe').show();
		this.comp('contents8').to('content60');
		this.comp('presentsReasonData').refreshData();
		$(this.getElementByXid('hinput9')).focus();
	};

	
	//已分单赠送实际操作
	Model.prototype.hbutton58Click = function(event){
		//data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.cancelQty+'&empcode='+data.userId		var currentOrderData = this.comp('currentOrderData');
		var userData = this.comp('userData');
		var currentOrderData = this.comp('currentOrderData');
		var currentPresentsReasonData = this.comp('currentPresentsReasonData');
		var qty = this.comp('inputGive2').val();
		if(currentPresentsReasonData.getCount()<1){
			this.comp('message').show('请选择赠送理由');
			return;
		}
		if(qty > (currentOrderData.val('qty')-currentOrderData.val('presentQty')-currentOrderData.val('cancelQty'))){
			this.comp('message').show({'title':'error','message':'赠送数量不能大于已点数量'});
			return false;
		}
		//赠送数量不能大于点单数量
		var result = order.hGift({'ip':ip,'billDetailId':currentOrderData.val('billDetailId'),'reasonId':currentPresentsReasonData.getFirstRow().val('tfzReasonId'),'qty':qty,'userId':userData.val('userId')});	
		if(result.code=='1'){
			this.comp('inputGive2').clear();
			currentPresentsReasonData.clear();
			currentOrderData.clear();
			this.comp('othe').hide();
			order.refreshOrder({'ip':ip,'orderData':this.comp('orderData'),'currentDeskData':this.comp('currentDeskData')});
		}
		this.comp('message').show({'title':'message','message':result.result})
	};

	
	//全单催菜
	Model.prototype.hspan37Click = function(event){
		var  currentDeskData = this.comp('currentDeskData').getFirstRow();
		var result = order.hurryAll({'ip':ip,'billMasterId':currentDeskData.val('billMasterId'),'consumeRoomId':currentDeskData.val('consumeRoomId')});
		this.comp('message').show({'title':'message','message':result.result})
	};

	//全单叫起
	Model.prototype.hspan95Click = function(event){
		var  currentDeskData = this.comp('currentDeskData').getFirstRow();
		var result = order.respiteAllL({'ip':ip,'billMasterId':currentDeskData.val('billMasterId'),'consumeRoomId':currentDeskData.val('consumeRoomId')});
		this.comp('message').show({'title':'message','message':result.result})
	};

	
	//预览结帐单
	Model.prototype.span92Click = function(event){
		var showBillData = this.comp('showBillData');
		var consumeRoomId = this.comp('currentDeskData').getFirstRow().val('consumeRoomId');
		var data = order.showBill({'ip':ip,'consumeRoomId':consumeRoomId});
		var a = {'@type':'table','rows':data};
		showBillData.loadData(a);
		showBillData.first();
		this.comp('allInfo').show();
		//this.comp('contents6').to('content38');
		$(this.getElementByXid('span186')).text(this.comp('currentDeskData').getFirstRow().val('tai_number'));//结帐单显示台号
	};

	//
	
	//会员打折跳转
	Model.prototype.span71Click = function(event){
		this.comp('account').show();
		this.comp('contents6').to('content53');
		$(this.getElementByXid('cartno')).focus();
	};
	


	//隐藏account窗口
	Model.prototype.closeAccount = function(event){
		this.comp('account').hide();
	};
	

	//会员打折
	Model.prototype.jbutton65Click = function(event){
		var cartno = this.comp('cartno').val();
		var cartpwd = this.comp('cartpwd').val();
		
		var currentDeskData = this.comp('currentDeskData');
		var billMasterId = currentDeskData.getFirstRow().val('billMasterId');
		var result = order.memberDiscount({'ip':ip,'cartno':cartno,'pwd':cartpwd,'billMasterId':billMasterId});
		if(result.code == '-1'){
			this.comp('message').show({'title':'error','message':result.result});
		}else{
			this.comp('cartno').val('');
			this.comp('cartpwd').val('');
			justep.Util.hint('输入会员卡成功')
			//刷新结帐单
			var currentDeskData = this.comp('currentDeskData');
			var ConsumeBillData = this.comp('ConsumeBillData');
			var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
			var param = {"@type":"table",'rows':data};
			ConsumeBillData.loadData(param);
			ConsumeBillData.first();			
			this.comp('account').hide();
		}
	};
	


	
	//结帐单修改人数
	Model.prototype.button63Click = function(event){
		//"url" : data.ip + 'RoomFunctionServlet.do?func=editCustQty&billMasterId='+data.billMasterId+'&consumeRoomId='+data.consumeRoomId+'&custQty='+data.qty,
		var qty = this.comp('input16').val();
		var consumeRoomId = this.comp('currentDeskData').getFirstRow().val('consumeRoomId');
		var billMasterId =  this.comp('currentDeskData').getFirstRow().val('billMasterId');
		var roomId = this.comp('currentDeskData').getFirstRow().val('roomId');
		var result = order.editCustQty({'ip':ip,'qty':qty,'billMasterId':billMasterId,'consumeRoomId':consumeRoomId,'roomId':roomId});
		order.refreshOrder({'ip':ip,'currentDeskData':this.comp('currentDeskData'),'orderData':this.comp('orderData')});
		this.comp('input16').clear();
		//刷新结帐单
		var currentDeskData = this.comp('currentDeskData');
		var ConsumeBillData = this.comp('ConsumeBillData');
		var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
		var param = {"@type":"table",'rows':data};
		ConsumeBillData.loadData(param);
		ConsumeBillData.first();
		this.comp('account').hide();
	};
	



	//打拆跳转
	Model.prototype.span60Click = function(event){
		////
		this.comp('othe').show();
		this.comp('contents8').to('content62');
	};
	


	
	//结帐单修改人数跳转
	Model.prototype.jspan75Click = function(event){
		this.comp('account').show();
		this.comp('contents6').to('content47');		
		$(this.getElementByXid('input16')).focus();
		
	};
	


	//折扣类型model
	Model.prototype.discountTypesDataCustomRefresh = function(event){
		var discountTypesData = this.comp('discountTypesData');
		var data = order.discountTypes({'ip':ip});
		discountTypesData.loadData({'rows':data.discountTypes});
	};
	

	//当前打折类型
	Model.prototype.li9Click = function(event){
		var currentDisCountTypesData = this.comp('currentDisCountTypesData');
		var row = event.bindingContext.$rawData;
		$(event.target).addClass("active");
		$(event.target).siblings().removeClass("active");
		currentDisCountTypesData.newData({
			index:0,
			defaultValues:[{
				discount:row.val('discount'),
				discountTypeId:row.val('discountTypeId'),
				discountTypeName:row.val('discountTypeName')
			}]
		});
	};
	


	//确认打折
	Model.prototype.button68Click = function(event){
		//				"url" : data.ip + 'RoomFunctionServlet.do?func=allDiscout&billMasterId='+data.billMasterId+'&empCode='+data.userId+'&discountTypeId='+data.discountTypeId+'&discount='+data.discount,
		var currentDeskData = this.comp('currentDeskData');
		var userData = this.comp('userData');
		var a = this.comp('currentDisCountTypesData');
		var currentDisCountTypesData = this.comp('currentDisCountTypesData');
		if(currentDisCountTypesData.getCount()<1){
			this.comp('message').show({'title':'message','message':'请用选择打折类型'});
			return false;
		}
		var result = order.allDiscout({'ip':ip,'billMasterId':currentDeskData.getFirstRow().val('billMasterId'),'userId':userData.val('userId'),'discount':a.val('discount'),'discountTypeId':a.val('discountTypeId')});
		if(result.code == '-1'){
			this.comp('message').show({'title':'error','message':result.result});
		}else{
			$(event.target).css({'background':'yellow'});
			currentDisCountTypesData.clear();
			this.comp('othe').hide();
			//刷新结帐单
			var currentDeskData = this.comp('currentDeskData');
			var ConsumeBillData = this.comp('ConsumeBillData');
			var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
			var param = {"@type":"table",'rows':data};
			ConsumeBillData.loadData(param);
			ConsumeBillData.first();
			this.comp('account').hide();		}
	};
	



	
	//重打总单
	Model.prototype.span72Click = function(event){
		var result = order.reprintAll({'ip':ip,'consumeRoomId':this.comp('currentDeskData').val('consumeRoomId')});
		this.comp('message').show({'title':'message','message':result.result});
	};
	


	//埋单
	Model.prototype.span77Click = function(event){
		
		var currentDeskData = this.comp('currentDeskData').getFirstRow();
		var userId = this.comp('userData').val('userId');
		////
		if($(event.currentTarget).text() == '埋单'){
			var a= order.checkBill({'ip':ip,'userId':userId,'billMasterId':currentDeskData.val('billMasterId'),'consumeRoomId':currentDeskData.val('consumeRoomId')});
			if(a.code == '1'){
				this.comp('message').show({'title':'埋单成功','message':a.result});
//				currentDeskData.val('state','取消埋单');
				$(this.getElementByXid('span77')).text('取消埋单');
				//刷新结帐单
				var currentDeskData = this.comp('currentDeskData');
				var ConsumeBillData = this.comp('ConsumeBillData');
				var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
				var param = {"@type":"table",'rows':data};
				ConsumeBillData.loadData(param);
				ConsumeBillData.first();	
			}else{
				this.comp('message').show({'title':'error','message':a.result});
			}
		}else{
			var a = order.unCheckBill({'ip':ip,'billMasterId':currentDeskData.val('billMasterId'),'userId':userId});
			if(a.code == '1'){
				this.comp('message').show({'title':'取消埋单成功','message':a.result});
//				currentDeskData.val('state','埋单');
				$(this.getElementByXid('span77')).text('埋单');
				//刷新结帐单
				var currentDeskData = this.comp('currentDeskData');
				var ConsumeBillData = this.comp('ConsumeBillData');
				var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
				var param = {"@type":"table",'rows':data};
				ConsumeBillData.loadData(param);
				ConsumeBillData.first();	
			}else{
				this.comp('message').show({'title':'error','message':a.result});
			}
		}

	};
	



	//应用设置ip
	Model.prototype.button73Click = function(event){
		localStorage.setItem('pureip',$('#settingIp').val());
		localStorage.setItem('com',$('#settingCOM').val());
		ip = 'http://'+$('#settingIp').val()+':'+$('#settingCOM').val()+'/OrderSystemWeX5/';
		localStorage.setItem('ip',ip);
		this.comp('contents1').to('login');
		location.href= 'languageSelect.w'; 
	};
	




	//设置返回
	Model.prototype.Settings_conActive = function(event){
		$('#settingIp').val(localStorage.getItem('pureip'));
		$('#settingCOM').val(localStorage.getItem('com'));
	};
	

	
	Model.prototype.languageBtnClick = function(event){
		localStorage.setItem('back',"0");
		location.href = 'languageSelect.w#!content2';
	};
	

/*

	//没分单更多菜单
	Model.prototype.button33Click = function(event){
		 $(".no-single").show();
		 //$(event.target).parents(".pop-menu-btn").hide();
		 //alert($(".no-single").height())
		// $(event.target).parents(".pop-menuSub-btn").show();
		 
	};
	
*/

/*
	//已分单更多菜单
	Model.prototype.button41Click = function(event){
		$(".has-single").show();
	};
	
*/

/*
	//已分单返回隐藏更多菜单
	Model.prototype.hiedClick = function(event){
		//$(".has-single").hide();
		$(event.target).parents(".pop-menuSub-btn").hide();
	};
	
*/


	//结账单更多
	Model.prototype.button47Click = function(event){
		//$(".statement-btn").show();
		$(".pop-menuSub-wrap").show();
	};
	



	//删除商品
	Model.prototype.button32Click = function(event){
		var row = this.comp('currentGoodsData');
		var goodsId = row.val('goodsId');
		var goodsList = this.comp('goodsListData');
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.val('roomId');
		var typeCode = row.getFirstRow().val('typeCode');
		var menuTypeData = this.comp('menuTypeData');

		
		var cartData = this.comp('cartData');
		if(confirm('确定删除<'+row.val('goodsName')+'>')){
			cartData.deleteData(cartData.getRowByID(row.val('goodsId')));
			//用于进入房台时加载购物车数据
			localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
			goodsList.eachAll(function(data){//菜单数量置0
				if(data.row.val('goodsId') == goodsId){
					data.row.val('qty',0);
				}
			});
			//菜单类型数量减
			menuTypeData.eachAll(function(param){
				
				if(param.row.val('typeCode')==typeCode){
					param.row.val('qty',param.row.val('qty')-row.val('qty'));
				}
			});
		}
	};
	


	//关闭order弹框
	Model.prototype.closeBtnClick = function(event){
		this.comp("order").hide();
	};
	

	//app退出事件
	Model.prototype.exitClick = function(event){
		//这里要区分打包
		if (justep.Browser.isX5App) {
			navigator.app.exitApp();
		}
	};
	

	
	
	//菜单拼音搜索
	Model.prototype.searchGoodsBtnClick = function(event){
		var searchGoodsData=this.comp('searchGoodsData');
		var condition = $('#'+this.getIDByXID('searchGoodsInput')).val();
		var data = order.getGoodsByCondition({'ip':ip,'condition':condition});
		searchGoodsData.loadData({'rows':data.goods});
		$(this.getElementByXid('searchResult0')).text('');
		if(data.goods.length==0){
//			this.comp('message').show({'title':'结果','message':'没有查找到内容'});
			$(this.getElementByXid('searchResult0')).text('没有查找到内容')
		}

	};
	

	
	

	//搜索框查找内容后选菜
	Model.prototype.col45Click = function(event){
		$(event.target).css({'background':'orange'});
		var cartData = this.comp('cartData');
		var row = event.bindingContext.$rawData;
		// ;
		
		var flag = false;//该菜单是否存在
		cartData.eachAll(function(param){
		// ;
			if(param.row.val('goodsId') == row.val('goodsId')){//已经存在
				param.row.val('qty',param.row.val('qty')+1);
				flag = true;
			}
		});
		if(flag == false){
			cartData.newData({
				defaultValues:[{
					'goodsId':row.val('goodsId'),
					'qty':row.val('qty')+1,
					'goodsName':row.val('goodsName'),
					'sprice':row.val('sprice'),
					'addMoney':0,
					'typeCode':row.val('typeCode'),
					'unitId':row.val('unitId')
				}]
			});
		}
		//购物车显示数量显示在goodsList
		row.val('qty',row.val('qty')+1);
		//向菜单类型右侧添加数量
		//---1.抽出与当前相同菜单类型的菜单类型
		var menuType = this.comp('menuTypeData');
		menuType.eachAll(function(data){
			if(data.row.val('typeCode') == row.val('typeCode')){
				data.row.val('qty',data.row.val('qty')+1);
			}
		});
		//---end of 加数量
		
		//将购物车数据写入到localStorage
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.getFirstRow().val('roomId');
		localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
	};	
	

	
	

	//login激活
	Model.prototype.loginActive = function(event){
		$('#'+this.getIDByXID('userName')).focus();
	};	
	
	//输入会员卡
	Model.prototype.button49Click = function(event){
		this.comp("account").show();
		this.comp("contents6").to("content53")
		$(this.getElementByXid('cartno')).focus();
	};	
	
	//清空搜索结果
	Model.prototype.m_searchClick = function(event){
		this.comp('searchGoodsData').clear();
		this.comp('searchGoodsInput').clear();
		$(this.getElementByXid('searchGoodsInput')).focus();
	};	
	
	//加载结帐单数据
	Model.prototype.button29Click = function(event){
		var currentDeskData = this.comp('currentDeskData');
		var ConsumeBillData = this.comp('ConsumeBillData');
		var data = order.getConsumeBill({'ip':ip,'consumeRoomId':currentDeskData.getFirstRow().val('consumeRoomId')})
		var param = {"@type":"table",'rows':data};
		ConsumeBillData.loadData(param);
		ConsumeBillData.first();
		
	};	
	
	//加载已分单orderDATA
	Model.prototype.button28Click = function(event){
		order.refreshOrder({'ip':ip,'currentDeskData':this.comp('currentDeskData'),'orderData':this.comp('orderData')});
	};	
	
	
	
	
	//取消长按
	Model.prototype.button4Click = function(event){
		//下面用于刷新当前房台状态
		var status = this.comp('statusData');
	    var deskData = this.comp('deskData');
		lang=false;
		//刷新
		getDesk(deskData,status.val('typeCode'),2);	
		$(".cancel-active").hide();
	};	
	
	

	//点击隐藏定单信息
	Model.prototype.allInfoHide = function(event){
		this.comp("allInfo").hide();
	};	
	
	

	
	
	//点击更多
	Model.prototype.menuSubShow = function(event){
		//检查是否选择
		//var currentGoodsData = this.comp('currentGoodsData');
		//var message = this.comp('message');
		//if(check.nCheckSelect({'currentGoodsData':currentGoodsData,'message':message})==false){
		//	return false;
		//}
		$(".pop-menuSub-wrap").show();
	};	
	
	
	//点击隐藏更多菜单
	Model.prototype.menuSubHide = function(event){
		$(".pop-menuSub-wrap").hide();
	};	
	
	


	
	//手写单
	Model.prototype.button36Click = function(event){
		var result = order.getWriterBillID({'ip':ip});
		if(result == null){
			this.comp('message').show({'title':'message','message':'未设置手写单'});
			return;
		}
		var qty = this.comp('handGoodsQty').val();
		var goodsName = this.comp('handGoodsName').val();
		var sprice = this.comp('handGoodsPrice').val();
		if(goodsName==''||goodsName == undefined){
			this.comp('message').show({'title':'message','message':'菜单名不能为空'});
			return false;
		}
		if(sprice==''||sprice == undefined){
			this.comp('message').show({'title':'message','message':'价格不能为空'});
			return false;
		}
		if(qty==''||qty == undefined||qty==0){
			this.comp('message').show({'title':'message','message':'数量不能为0'});
			return;
		}
		debugger
		var cartData = this.comp('cartData');
			cartData.newData({
				defaultValues:[{
					'goodsId':result.goodsId,
					'qty':qty,
					'goodsName':goodsName,
					'sprice':sprice,
					'addMoney':0,
					'typeCode':result.typeCode,
					'unitId':result.unitId
				}]
			});
		
		//将购物车数据写入到localStorage
		var currentDeskData = this.comp('currentDeskData');
		var roomId = currentDeskData.getFirstRow().val('roomId');
		
		localStorage.setItem(roomId,JSON.stringify(cartData.toJson()));
		this.comp('contents1').to('menu');
	};	
	
	//高尺寸的更多弹出框关闭
	Model.prototype.otheClose = function(event){
		this.comp("othe").hide();
	};	
	



	
	
	//初始化手写单界面事件
	Model.prototype.handOrderActive = function(event){
		this.comp('handGoodsQty').val(0);
	};	
	
	


	
	

	Model.prototype.button14OrderHandClick = function(event){
			if(	this.comp('handGoodsQty').val()>1){
			this.comp('handGoodsQty').val(this.comp('handGoodsQty').val()-1);
			}
	};	
	
	


	
	

	Model.prototype.button15orderHandClick = function(event){
				this.comp('handGoodsQty').val(this.comp('handGoodsQty').val()+1);
	};	
	
	


	
	

	Model.prototype.handOrderBtnClick = function(event){
				$(this.getElementByXid('handGoodsName')).focus();
	};	
	
	


	
	

	return Model;
});


