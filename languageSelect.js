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
		console.log(lanJson.languages.length)
		language.clear();
		for(var o=0 ;o<lanJson.languages.length;o++){
			language.newData({
				defaultValues:[{
					languageId:lanJson.languages[o].languageId,
					languageName:lanJson.languages[o].languageName
				}]
			});
		}
			

	};

	Model.prototype.button1Click = function(event){
		//获取所选语言
		var lan=$("#__baseID___language-select option:selected").val();
		console.log(lan)
		//lan.setLanguage();
		//var row = event.bindingContext.$rawData;
		//console.log(row);
		//location.href('index.w');
		//console.log(row.val("languageName"));
		//var as = lan.getTranslation({'internalCode':'xxx'});
		//this.comp('titleBar1').title = as;
	};

	return Model;
});