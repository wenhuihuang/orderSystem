define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var lan = {	
		//返回参数"languages":[{"languageId":"00010000000000000101","languageName":"中文"}]}
		//输入参数	{'ip':xxx}
		getLanguages:function(data){
			var success = function(param){
				return param;
			}
			Baas.sendRequest({
				"url" : data.ip + 'LanguageServlet.do?func=getLanguages',
				"dataType": "json",
				"success" : success
			});		
		},
		//返加参数{"code":"1","result":"在用"}
		//输入参数{'ip':xxx,'languageId',xxx,'internalCode':xxx}
		getTranslation:function(data){
			var success = function(param){
				return param.result;
			}
			Baas.sendRequest({
				//getTranslation&languageId=00010000000000000101&internalCode=USING
				"url" : data.ip + 'getTranslation&languageId='+data.languageId+'&internalCode='+data.internalCode,
				"dataType": "json",
				"success" : success
			});	
		}
		
	};

	return lan;
});