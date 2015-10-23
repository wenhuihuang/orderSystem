define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var lan = {	
		//{"languages":[{"languageId":"00010000000000000101","languageName":"中文"}]}
		//	{'ip':xxx}
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
		//{"code":"1","result":"在用"}
		//{'ip':xxx,'languageId',xxx,'internalCode':xxx}
		getTranslation:function(data){
			var success = function(param){
				return param;
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