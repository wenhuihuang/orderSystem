define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var myBaas = {	
		//已分单检测是否选中行
		hCheckSelect:function(data){
			if(data.currentOrderData.getCount()<=0){
				data.message.show({'title':'警告','message':'请先选择菜品'});
				return false;
			}
		}

	};

	return myBaas;
});