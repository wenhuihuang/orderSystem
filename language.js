define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var lan = {	
		//获取语言
		//返回参数"{languages":[{"languageId":"00010000000000000101","languageName":"中文"}]}
		//输入参数	{'ip':xxx}
		getLanguages:function(data){
			var obj;
			var success = function(param){
				//在这里要保存ip到本地和当前语言到本地
				obj = param;
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'LanguageServlet.do?func=getLanguages',
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//翻译
		//返加参数 字符串
		//输入参数{'internalCode':xxx}
		getTranslation:function(data){
			var obj;
			var success = function(param){
				obj = param;
			}
			debugger;
			Baas.sendRequest({
				//getTranslation&languageId=00010000000000000101&internalCode=USING
				"url" : localStorage.getItem('ip') + 'LanguageServlet.do?func=getTranslation&languageId='+localStorage.getItem('languageId'),
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//设置语言
		//把ip和languageId保存到本地
		setLanguage:function(ip,languageId){
//			var ip = 'http://'+localStorage.getItem('pureip')+':'+localStorage.getItem('com')+'/OrderSystemWeX5/';
//			localStorage.setItem('ip', ip);
			localStorage.setItem('languageId',languageId);
		}
		
	};

	return lan;
});