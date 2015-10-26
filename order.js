define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var order = {	
		changeGoodsName:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('goodsName',data.goodsName);
				}
			});	
		},
		changeGoodsPrice:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('sprice',data.sprice);
				}
			});	
		},
		changeGoodsQty:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('qty',data.qty);
				}
			});	
		},
		//赠送原因
		getgiftReason:function(data){
			var obj;
			var success = function(param){
				 obj = {'rows':param};
			}
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=giftReason',
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//赠送
		gift:function(data){
			var obj;
			var success = function(param){
				obj =  param;		
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.qty+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//退菜原因
		cancelReason:function(data){
			var obj;
			var success = function(param){
				var a = {'rows':param};
				obj = a;
			};
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=returnReason',
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//退菜
		cancelGoods:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=cancelGoods&cancelQty='+data.qty+'&reasonId='+data.reasonId+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//已分单修改价格
		editPrice:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			///RoomFunctionServlet.do?func=editPrice&billDetailId=xxx&price=xxx&empcode=xxx
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editPrice&billDetailId='+data.billDetail+'&price='+data.price+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//已分单修改价格
		hEditPrice:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			///RoomFunctionServlet.do?func=editPrice&billDetailId=xxx&price=xxx&empcode=xxx
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editPrice&billDetailId='+data.billDetailId+'&price='+data.price+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//刷新订单
		updateOrderData:function(data){
			var successOrder = function(param){
				//清空现有的订单数据
				data.orderData.clear();
				debugger
				//更新现在的订单列表
				for(var o in param.consumeDetails){
					data.orderData.newData({
						defaultValues:[{
							goodsName:param.consumeDetails[o].goodsName,
							price:param.consumeDetails[o].price,
							addMoney:param.consumeDetails[o].addMoney,
							qty:param.consumeDetails[o].qty,
							billDetailId:data.billDetailId,
							unitName:param.consumeDetails[o].unitName
						}]
					});
				}
			}
			debugger
			//拿到订单详情
			Baas.sendRequest({
				"url" : data.ip + 'ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+data.billMasterId+'&roomId='+data.roomId,
				"dataType": "json",
				"success" : successOrder
			});		
		},
		//已分单修改数量
		hEditCout:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editCout&billDetailId='+data.billDetailId+'&qty='+data.qty+'&empcode='+data.userId+'&unitName='+data.unitName,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//催菜
		reminder:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=reminder&billDetailId='+data.billDetailId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
	//RoomFunctionServlet.do?func=respite&billDetailId=xxx	叫起
		respite:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=respite&billDetailId='+data.billDetailId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		}
		,
		//已分单赠送
		hGift:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.cancelQty+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//全单催菜
		hurryAll:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=hurryAll&billMasterId='+data.billMasterId+'&consumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;			
		}
	};

	return order;
});