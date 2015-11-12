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
			if(lanJson){
				
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
				//为选中的语言加select
				 var optionObj=$("#"+this.getIDByXID("language-select")).find("option");
				optionObj.each(function(){	
					 if( $(this).attr("value") == localStorage.getItem("languageId")){
						 $(this).attr("selected","true");
					 }
				})
			
			}else{
				location.href="languageSelect.w#!settings";
				
			}

		 
		}else{
			location.href="languageSelect.w#!settings";
		
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
		localStorage.setItem("back","1");
		location.href='./index.w#!login';
		console.log(result)
		//localStorage.setItem('isEnterLanguageUI',false);		//var as = lan.getTranslation({'internalCode':'xxx'});
		//this.comp('titleBar1').title = as;
	};

	//设置iP和端口
	Model.prototype.button73Click = function(event){
		if(this.comp('settingIp').val() != "" && this.comp('settingCOM').val()){
			localStorage.setItem('pureip',this.comp('settingIp').val());
			localStorage.setItem('com',this.comp('settingCOM').val());
			
			ip = 'http://'+this.comp('settingIp').val()+':'+this.comp('settingCOM').val()+'/OrderSystemWeX5/';
			localStorage.setItem('ip',ip);
			if(localStorage.getItem("back") != "0"){
				location.href= 'languageSelect.w#!content2'; 
			}else{
				location.href="index.w#!login";
			}
			
			localStorage.setItem("back","1");
			this.languageCustomRefresh(event);
		}else{
			alert("请输入ip和端口");
		}
		
	};
	/*
	Model.prototype.modelActive = function(event){
		debugger
		//判断是否要显示设置语言界面
		if(localStorage.getItem('isEnterLanguageUI')==false){
			location.href= 'index.w'; 
		}
	};
	 */
	//显示设置好的ip
	Model.prototype.content3Active = function(event){
		this.comp('settingIp').val(localStorage.getItem('pureip'));
		this.comp('settingCOM').val(localStorage.getItem('com'));
	};


	Model.prototype.modelModelConstruct = function(event){
				//判断是否要显示设置语言界面
		if(localStorage.getItem('languageId') != null && localStorage.getItem("back") == "1"){
			location.href= 'index.w'; 
		}else{
			
		}
		this.comp('settingIp').val(localStorage.getItem("pureip"));
		this.comp('settingCOM').val(localStorage.getItem("com"));
	
	
	};

	//返回登录界面
	Model.prototype.button71Click = function(event){
		localStorage.setItem("back","1");
		location.href= 'index.w#!login'; 
	};

	//返回登录界面
	Model.prototype.button2Click = function(event){
		localStorage.setItem("back","1");
		location.href= 'index.w#!login'; 
	};


	Model.prototype.modelLoad = function(event){
		$(".loading").hide();
	};


	Model.prototype.settingsActive = function(event){
//		debugger
//		$(this.getElementByXid('settingIp')).focus();
	};


	return Model;
});