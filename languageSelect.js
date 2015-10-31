define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var lan = require('$UI/orderSystem/language');
	var ip=localStorage.getItem('ip');
	//require("css!./index").load();
	var Model = function(){
		this.callParent();
	};

	Model.prototype.languageCustomRefresh = function(event){
		
		if(ip != null || ip != undefined){
			
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
			
		}else{
			location.href="languageSelect.w#!content3";
		
		}

			
	};

	Model.prototype.button1Click = function(event){
		//获取所选语言
		var languageId=$("#__baseID___language-select option:selected").val();
		//lan.setLanguage();
		lan.setLanguage(ip,languageId);		
		//var row = event.bindingContext.$rawData;
		//console.log(row);
		var result = lan.getTranslation({'internalCode':'WELCOME'});
		location.href='./index.w';
		console.log(result)
		localStorage.setItem('isEnterLanguageUI',false);		//var as = lan.getTranslation({'internalCode':'xxx'});
		//this.comp('titleBar1').title = as;
	};

	//设置iP和端口
	Model.prototype.button73Click = function(event){
		localStorage.setItem('pureip',$('#settingIp').val());
		localStorage.setItem('com',$('#settingCOM').val());
		ip = 'http://'+$('#settingIp').val()+':'+$('#settingCOM').val()+'/OrderSystemWeX5/';
		localStorage.setItem('ip',ip);
		location.href= 'languageSelect.w#!content2'; 
		this.languageCustomRefresh(event);
	};

	Model.prototype.modelActive = function(event){
		debugger
		//判断是否要显示设置语言界面
		if(localStorage.getItem('isEnterLanguageUI')==false){
			location.href= 'index.w'; 
		}
	};
	//显示设置好的ip
	Model.prototype.content3Active = function(event){
		$('#settingIp').val(localStorage.getItem('pureip'));
		$('#settingCOM').val(localStorage.getItem('com'));
	};


	Model.prototype.modelModelConstruct = function(event){
				//判断是否要显示设置语言界面
		if(localStorage.getItem('isEnterLanguageUI')=='false'){
			location.href= 'index.w'; 
		}
	};


	return Model;
});