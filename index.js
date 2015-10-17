define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	//var ip = "http://qixusoft.vicp.net";
	var ip="http://192.168.1.20:8080";
	//var url="UI2/orderSystem_a/index.w#!index";
	var Baas = require("$UI/demo/baas/baas");
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
						qty:param.consumeDetails[o].qty
					}]
					
				});
			}
		}
		Baas.sendRequest({
			"url" : ip + '/OrderSystemWeixin/ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+currentDeskData.val('billMasterId')+'&roomId='+currentDeskData.val('roomId'),
			"dataType": "json",
			"success" : success
		});
		this.comp("popOver1").show();
	};


	//修改菜单
	Model.prototype.div74Click = function(event){
		
		//获取当前行数据
		var row = event.bindingContext.$rawData;
		debugger
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
		debugger
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


	Model.prototype.button13Click = function(event){
		var html="<div class='select-con-wrap'></div>";
		$(".select-con").html(html);
	};


	Model.prototype.button15Click = function(event){
		var html="<textarea class='select-con-wrap' placeholder='请输入要求'></textarea>";
		$(".select-con").html(html);
	};





	//删除选中的
	Model.prototype.button11Click = function(event){
	
		var seleObj=$(".ed-con-con").children("span.active");
		//alert(seleObj.html());
		//alert()
		seleObj.remove();
	};






	Model.prototype.button10Click = function(event){
		var seleObj=$(".ed-con-con").children("span");
		seleObj.remove();
	};




	//用户登录 ,并记录下当前的userId
	Model.prototype.login_btnClick = function(event){
		var userData = this.comp('userData');
		var contents1 = this.comp('contents1');
		var username=this.comp('userName').val();
		var pwd=this.comp('userPwd').val();
		var mydata = this.comp('user_inof');
		var success = function(data){
			     if(data.admin[0].userId != "")   {
			    	 userData.newData({
			    		 defaultValues:[{
			    		 userId : data.admin[0].userId
			    		 }]
			    	 });
			    	 contents1.to('index');
			     }else{
			    	 justep.Error.create("登陆失败");
			     }                                            
		}
		Baas.sendRequest({
			"url" : ip + '/OrderSystemWeixin/LoginByBackstageServlet.do?func=login&returnJson=1',
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
		var url= ip+"/OrderSystemWeixin/RoomServlet.do?func=getRoomType&getJson=1";//http://192.168.1.20:8080
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
	    var url=ip+"/OrderSystemWeixin/GoodsTypeServlet.do?func=listGoodsType&getJson=1";
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
					 rowss[i]={'typeCode':{'value':msg.typeCodes[i].typeCode},'typeName':{'value':msg.typeCodes[i].typeName}};
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
				
	};




	//点击通过台类型加载桌子，通过状态字段来设置当前的颜色字段
	Model.prototype.li10Click = function(event){
		var masterData = event.source;
		var row = event.bindingContext.$object;
		var typeCode= row.val("typeCode");
		var mydata = this.comp('deskData');
		//var state=mydata.val('state')
		var url= ip+"/OrderSystemWeixin/RoomServlet.do";//http://192.168.1.20:8080
		var data="func=getRoom&typeCode="+typeCode+"&getJson=1";
		$.ajax({
			type: "GET",
	        url: url,
	        data:data,
	        dataType: 'json',
	        async: false,//使用同步方式，目前data组件有同步依赖
	        cache: false,
	        success: function(msg){
	        	//ebugger;
	           // masterData.loadData(data);//将返回的数据加载到data组件
	          
	            var rowss=[];
				for(var i=0;i<msg.rooms.length;i++){
					var state="空台";
					var color="black";
					if(msg.rooms[i].state=="3"){
						state="在用";
						color="blue";
					}else if(msg.rooms[i].state=="4"){
						state="埋单";
						color="gray";
					}else if(msg.rooms[i].state=="2"){
						state="预定";
						color="yellow";
					}else if(msg.rooms[i].state=="0"){
						state="禁用";
						color="red";
					}else{
						state="空台";
						color="green";
					}
				 rowss[i]={'tai_number':{'value':msg.rooms[i].roomName},'state':{'value':state},'roomId':{'value':msg.rooms[i].roomId},'billMasterId':{'value':msg.rooms[i].billMasterId},'color':{'value':color}};
			 	}
			 	var ffdata={"rows":rowss};
		 	mydata.loadData(ffdata);	
	        },
	        error: function(){
	          throw justep.Error.create("加载数据失败");
	        }
		});
		
	};



	//进入房台，记录下当前的订单号和roomId,然后再根据状态跳去不同的页面
	Model.prototype.li1Click = function(event){
		var oneDeskData = this.comp('currentDeskData');
		var row = event.bindingContext.$rawData;
		var state=row.val("state");
		var contents1 = this.comp('contents1');
		var popOver_renshu = this.comp("popOver_renshu");
		 
		var success = function(param){	
			//记录当前台号
			oneDeskData.newData({
				index: 0,
				defaultValues:[{
					 "billMasterId":param.rooms[0].billMasterId,
					 "roomId":param.rooms[0].roomId
				}]
			});//end
			if(state=="在用"){
				contents1.to("menu"); 
			}else if(state=="埋单"){
				contents1.to("menu");
			}else if(state="空台"){
				popOver_renshu.show();
			}	
		}
		
		Baas.sendRequest({
			"url" : ip + '/OrderSystemWeixin/RoomServlet.do?func=getRoomById&getJson=1&roomId='+row.val('roomId'),
			"dataType": "json",
			"success" : success
		});
		
	
	};



	//菜单点击列表点击
	Model.prototype.li2Click = function(event){
		$(event.target.parentElement).find("li").removeClass("active");
		$(event.target).is("li")?$(event.target).addClass("active").siblings().removeClass("active"):$(event.target.parentElement).addClass("active").siblings().removeClass("active");
		var row = event.bindingContext.$rawData;
		var currentDeskData = this.comp('currentDeskData');
		var typeCode=row.val("typeCode");
		var mydata = this.comp('goodsListData');
		var url= ip+'/OrderSystemWeixin/GoodsServlet.do?func=listByTypeCode&typeCode='+typeCode+'&getJson=1';//http://192.168.1.20:8080
		//alert(data)
		var success = function(msg){
						var rowss=[];
						for(var i=0;i<msg.goods.length;i++){
						 rowss[i]={'goodsId':{'value':msg.goods[i].goodsId},'goodsName':{'value':msg.goods[i].goodsName},'sprice':{'value':msg.goods[i].sprice},'qty':{'value':0}};
					 	}
					 	var ffdata={"rows":rowss};
					 	mydata.loadData(ffdata);
					 		 	
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
	    var oneDeskData =  this.comp('currentDeskData');
	    var pop = this.comp('popOver_renshu');
	    var num = $('#custNum').val();
	    if(num == ''||num == undefined){
	    	alert('输入错误');
	    }
	    var success = function(param){
	    	debugger
	    	//补上当前台的订单id
	    	oneDeskData.newData({
	    		defaultValues:[{
	    			 "billMasterId":param.result[0].msg.split('=')[1],
					 "roomId":oneDeskData.val('roomId')
	    		}]
	    	});
	    	pop.hide();
	    	contents1.to('menu');
	    }				
		Baas.sendRequest({
			"url" : ip + '/OrderSystemWeixin/OrderedNumServlet.do?func=newConsumeRoom&getJson=1&roomId='+oneDeskData.val('roomId')+'&custQty='+num,
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
		//debugger;
		var flag = false;//该菜单是否存在
		cartData.eachAll(function(param){
		//debugger;
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
					'addMoney':0
				}]
			});
		}
		//购物车显示数量显示在goodsList
		row.val('qty',row.val('qty')+1);
	};



	//菜单购物车减
	Model.prototype.image1Click = function(event){
		var cartData = this.comp('cartData');
		var row = event.bindingContext.$rawData;
		
		if(row.val('qty')<=0){		
			justep.Util.hint('已经为0');
			return;
		}
		
		cartData.eachAll(function(param){
			if(param.row.val('goodsId') == row.val('goodsId')){//已经存在
				param.row.val('qty',param.row.val('qty')-1);
			}
		});
		
		//购物车显示数量显示在goodsList
		row.val('qty',row.val('qty')-1);
		
	};



	//当打开菜单页面的时候，默认点击第一列
	Model.prototype.menuActive = function(event){
		$('.left-menu').find('li').eq(0).trigger('click');
	};

	//隐藏订单 
	Model.prototype.button6Click = function(event){
		this.comp("popOver1").hide();
	};


	//删除购物车一行
	Model.prototype.p120Click = function(event){
		var row = event.bindingContext.$rawData;
		var goodsId = row.val('goodsId');
		var goodsList = this.comp('goodsListData');
		goodsList.eachAll(function(data){
			if(data.row.val('goodsId') == goodsId){
				data.row.val('qty',0);
			}
		})
		
		var cartData = this.comp('cartData');
		cartData.deleteData(row);
	};


	//取消编辑菜单
	Model.prototype.button7Click = function(event){
		var currentCookWayData = this.comp('currentCookWayData');
		currentCookWayData.clear();
		this.comp("popOver2").hide();
	};

	//确定完成编辑菜单，
	Model.prototype.button8Click = function(event){
		//购物车加上加工
		var cart = this.comp('cartData');
		var currentCookWayData = this.comp('currentCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var sendCookWayData = this.comp('sendCookWayData');
		//为cart补上cookWay字段，主要用于菜单页面显示,加上附加费用
		cart.eachAll(function(param){
			if(param.row.val('goodsId') == currentCookWayData.val('goodsId')){
				param.row.val('cookWay',currentCookWayData.val('detail'));
			}
			if(param.row.val('goodsId') ==  currentGoodsData.val('goodsId')){
				param.row.val('addMoney',currentGoodsData.val('addMoney'));
			}
		})
		//将数据加入sendCookWayData，用于发送订单的数据
		currentCookWayData.eachAll(function(param){
			sendCookWayData.newData({
				defaultValues:[{
					'goodsId':param.row.val('goodsId'),
					'cookWayId':param.row.val('cookWayId')
				}]
			});
		});
		
		//清空当前加收
		currentCookWayData.clear();
		this.comp("popOver2").hide();
	};



	//+购物车详情
	Model.prototype.a1Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var cartData = this.comp('cartData');
		//debugger;
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

	//-
	Model.prototype.a2Click = function(event){
		var currentGoodsData = this.comp('currentGoodsData');
		var cartData = this.comp('cartData');
		if(currentGoodsData.val('qty')<=1){
			return;
		}
		cartData.eachAll(function(param){
			//debugger;
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





	//要求分类
	Model.prototype.button14Click = function(event){
		var cookTypeData = this.comp('cookTypeData');
		//debugger;
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
		Baas.sendRequest({
			"url" : ip + '/OrderSystemWeixin/CookWayServlet.do?func=getCookType&getJson=1',
			"dataType": "json",
			"success" : success
		});
			//计算出ul宽
		var liLength=$(".require-title").find("ul").children("li").length;
		//alert(liLength)
//		$(".require-title").find("ul").children("li").each(function(){
//			alert($(this).css("width"));
//		});
	};


	//要求行事件
	Model.prototype.li4Click = function(event){
			var cookTypeDetailData = this.comp('cookTypeDetailData');
			var row = event.bindingContext.$rawData;
			var success = function(param){
			//debugger;
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
			"url" : ip + '/OrderSystemWeixin/CookWayServlet.do?func=getCookWay&getJson=1&typeCode='+row.val('typeCode'),
			"dataType": "json",
			"success" : success
		});
	};

	//加收一项
	Model.prototype.li5Click = function(event){
		var row = event.bindingContext.$rawData;
		var currentCookWayData = this.comp('currentCookWayData');
		var currentGoodsData = this.comp('currentGoodsData');
		var flag = false;
		currentCookWayData.eachAll(function(param){
			if(param.row.val('cookWayId') == row.val('cookWayId')){
				justep.Util.hint('已经添加');
				flag = true;
			}
		});
		if(flag == true){
			return;
		}
//		$('#showCookWays').append("<span"+" id='"+row.val('cookWayId')+"'>"+row.val('cookWay')+'('+row.val('addMoney')+')'+"</span>");
		
		currentCookWayData.newData({
			defaultValues:[{
				'cookWayId':row.val('cookWayId'),
				'goodsId':currentGoodsData.val('goodsId'),
				'cookWay':row.val('cookWay'),
				'addMoney':row.val('addMoney'),
				'detail':$('#showCookWays').text()
			}]
		});	
		debugger;
		
	};





	//送单
	Model.prototype.button5Click = function(event){
		var currentDeskData = this.comp('currentDeskData');
		var billMasterId = currentDeskData.val('billMasterId');
		var roomId = currentDeskData.val('roomId');
		var orderData = this.comp('orderData');
		var goods = '';
		var cartData = this.comp('cartData');
		cartData.eachAll(function(param){
			goods += param.row.val('goodsId')+'_'+param.row.val('qty')+',';
		});
		goods = goods.substring(0,goods.length-1);
		var sendCook = this.comp('sendCookWayData');
		var cookways = '';
		sendCook.eachAll(function(param){
				cookways += param.row.val('goodsId')+'_'+param.row.val('cookWayId')+',';
		});
		cookways = cookways.substring(0,cookways.length-1);
		var url = '/OrderSystemWeixin/ShopCartServlet.do?func=orderByReturnJson&billMasterId='+billMasterId+'&roomId='+roomId+'&goods='+goods+'&&cookways='+cookways;	
		
		debugger;
		//送单成功
		var success = function(param){	
			sendCook.clear();//清空sendCook
			alert(param.result[0].msg);
			debugger
			if(param.result[0].billmasterid != ''&&param.result[0].billmasterid != undefined){
				//打印成功
				var success1 = function(param){
					debugger;
					cartData.clear();//发送订单成功，清空cartData
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
												qty:param.consumeDetails[o].qty
											}]
										});
									}
									$('.left-menu').find('li').eq(0).trigger('click');//触发菜单界面的点击事件，以便让菜单数量清0
								}
								//拿到订单详情
								Baas.sendRequest({
									"url" : ip + '/OrderSystemWeixin/ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+currentDeskData.val('billMasterId')+'&roomId='+currentDeskData.val('roomId'),
									"dataType": "json",
									"success" : successOrder
								});
				}
				//打印
				Baas.sendRequest({
					"url" : ip + '/OrderSystemWeixin/ShopCartServlet.do?func=afterPrint&isReturnJson=true&billMasterId='+billMasterId+'&roomId='+roomId,
					"dataType": "json",
					"success" : success1
				});
			}
		}
			//送单
		Baas.sendRequest({
			"url" : ip + url,
			"dataType": "json",
			"success" : success
		});
	};
	

	
	
	

	
	
	
	return Model;
});



