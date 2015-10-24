define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var myBaas = {	
		cleanRoom:function(data){
			var success = function(param){
				return param;
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=cleanRoom&currentBillMasterId='+data.billMasterId+'&checkEmpCodeId='+data.userId+'&currentConsumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});		
		},
		uncheckBill:function(data){
			var success = function(param){
				return param;
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=uncheckBill&currentBillMasterId='+data.billMasterId+'&checkEmpCodeId='+data.userId,
				"dataType": "json",
				"success" : success
			});		
		}
		//RoomFunctionServlet.do?func=uncheckBill&currentBillMasterId=xxx&checkEmpCodeId=xxx
	};

	return myBaas;
});