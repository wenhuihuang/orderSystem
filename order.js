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
		}
	};

	return order;
});