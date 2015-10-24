define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var lan = require('$UI/orderSystem/language');
	var ip="http://192.168.1.20:8080/OrderSystemWeX5/";
	var Model = function(){
		this.callParent();
	};

	Model.prototype.languageCustomRefresh = function(event){
		var language = this.comp('language');
		//获取地区语言各类
		var lanJson = lan.getLanguages({'ip':ip});
		//lanJson.clear();
		for(var o in lanJson){
			language.newData({
				defaultValues:[{
					'languageId':lanJson[o].languageId,
					'languageName':lanJson[o].languageName
				}]
			});
		}
	};

	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$rawData;
		location.href('index.w');
		
		var as = lan.getTranslation({'internalCode':'xxx'});
		this.comp('titleBar1').title = as;
		
	};

	return Model;
});