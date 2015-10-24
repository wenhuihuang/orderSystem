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
		//data可以直接loadData
		getgiftReason:function(param){
			var success = function(param){
				return {'rows':param};
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=giftReason',
				"success" : success
			});	
		},
		//RoomFunctionServlet.do?func=gift&billDetailId=xxx&reasonId=xxx&cancelQty=xxx&empcode=xxx
		gift:function(data){
			var success = function(param){
				return {'rows':param};
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.qty+'&empcode='+data.userId,
				"success" : success
			});	
		}
	};

	return order;
});