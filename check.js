define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/orderSystem/baas");
	
	var myBaas = {	
		//已分单检测是否选中行
		hCheckSelect:function(data){
			if(data.currentOrderData.getCount()<=0){
				data.message.show({'title':'警告','message':'请先选择菜品'});
				return false;
			}
		},
		nCheckSelect:function(data){
			if(data.currentGoodsData.getCount()<=0){
				data.message.show({'title':'警告','message':'请先选择购物车中的物品'});
				return false;
			}
		}

	};

	return myBaas;
});