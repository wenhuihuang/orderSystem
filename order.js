define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = require("$UI/demo/baas/baas");
	
	var order = {	
		changeGoodsName:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('goodsName',data.goodsName);
				}
			});	
		},
		changeGoodsPrice:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('sprice',data.sprice);
				}
			});	
		},
		changeGoodsQty:function(data){
			data.cartData.eachAll(function(param){
				if(param.row.val('goodsId')==data.goodsId){
					param.row.val('qty',data.qty);
				}
			});	
		},
		//赠送原因
		getgiftReason:function(data){
			var obj;
			var success = function(param){
				 obj = {'rows':param};
			}
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=giftReason',
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//赠送
		gift:function(data){
			var obj;
			var success = function(param){
				obj =  param;		
			}
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.qty+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//退菜原因
		cancelReason:function(data){
			var obj;
			var success = function(param){
				var a = {'rows':param};
				obj = a;
			};
			
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=returnReason',
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//退菜
		cancelGoods:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=cancelGoods&cancelQty='+data.qty+'&reasonId='+data.reasonId+'&empcode='+data.userId+'&billDetailId='+data.billDetailId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//已分单修改价格
		editPrice:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			///RoomFunctionServlet.do?func=editPrice&billDetailId=xxx&price=xxx&empcode=xxx
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editPrice&billDetailId='+data.billDetail+'&price='+data.price+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//已分单修改价格
		hEditPrice:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			///RoomFunctionServlet.do?func=editPrice&billDetailId=xxx&price=xxx&empcode=xxx
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editPrice&billDetailId='+data.billDetailId+'&price='+data.price+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//刷新订单
		updateOrderData:function(data){
			var successOrder = function(param){
				//清空现有的订单数据
				data.orderData.clear();
				debugger
				//更新现在的订单列表
				for(var o in param.consumeDetails){
					data.orderData.newData({
						defaultValues:[{
							goodsName:param.consumeDetails[o].goodsName,
							price:param.consumeDetails[o].price,
							addMoney:param.consumeDetails[o].addMoney,
							qty:param.consumeDetails[o].qty,
							billDetailId:data.billDetailId,
							unitName:param.consumeDetails[o].unitName
						}]
					});
				}
			}
			debugger
			//拿到订单详情
			Baas.sendRequest({
				"url" : data.ip + 'ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+data.billMasterId+'&roomId='+data.roomId,
				"dataType": "json",
				"success" : successOrder
			});		
		},
		//已分单修改数量
		hEditCout:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editCout&billDetailId='+data.billDetailId+'&qty='+data.qty+'&empcode='+data.userId+'&unitName='+data.unitName,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//催菜
		reminder:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=reminder&billDetailId='+data.billDetailId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
	//RoomFunctionServlet.do?func=respite&billDetailId=xxx	叫起
		respite:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=respite&billDetailId='+data.billDetailId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		}
		,
		//已分单赠送
		hGift:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=gift&billDetailId='+data.billDetailId+'&reasonId='+data.reasonId+'&cancelQty='+data.qty+'&empcode='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;
		},
		//全单催菜
		hurryAll:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=hurryAll&billMasterId='+data.billMasterId+'&consumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;			
		},
		//全单叫起
		respiteAllL:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=respiteAll&billMasterId='+data.billMasterId+'&consumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;					
		},
		//预览结帐单
		showBill:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=showBill&consumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;					
		},
		//结帐单会员打折
		//RoomFunctionServlet.do?func=memberDiscount&cardno=xxx&pwd=xxx&billMasterId=xxx
		memberDiscount:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=memberDiscount&cardno='+data.cartno+'&pwd='+data.pwd+'&billMasterId='+data.billMasterId,
				"dataType": "json",
				"success" : success
			});	
			return obj;	
		},
		//结帐单修改人数
		editCustQty:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=editCustQty&billMasterId='+data.billMasterId+'&consumeRoomId='+data.consumeRoomId+'&custQty='+data.qty+'&roomId='+data.roomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;				
		},
		//结帐单打折RoomFunctionServlet.do?func=allDiscout&billMasterId=xxx&empCode=xxx&discountTypeId=xxx&discount=xxx
		allDiscout:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=allDiscout&billMasterId='+data.billMasterId+'&empCode='+data.userId+'&discountTypeId='+data.discountTypeId+'&discount='+data.discount,
				"dataType": "json",
				"success" : success
			});	
			return obj;				
		},
		//拆扣类型
		discountTypes:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=getDiscountType',
				"dataType": "json",
				"success" : success
			});	
			return obj;		
		},
		//重打订单
		//RoomFunctionServlet.do?func=reprintAll&consumeRoomId=000100000000000003LV
		reprintAll:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=reprintAll&consumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;		
		},
		//埋单
		//RoomFunctionServlet.do?func=checkBill&currentBillMasterId=xxx&checkEmpCodeId=xxxx&currentConsumeRoomId=xxx
		checkBill:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			debugger
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=checkBill&currentBillMasterId='+data.billMasterId+'&checkEmpCodeId='+data.userId+'&currentConsumeRoomId='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;				
		},
		//取消埋单
		///RoomFunctionServlet.do?func=uncheckBill&currentBillMasterId=xxx&checkEmpCodeId=xxx
		unCheckBill:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=uncheckBill&currentBillMasterId='+data.billMasterId+'&checkEmpCodeId='+data.userId,
				"dataType": "json",
				"success" : success
			});	
			return obj;		
		},
		//按拼音点菜
		//OrderSystemWeX5/GoodsServlet.do?func=getGoodsByCondition&condition=ZSM
		getGoodsByCondition:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'GoodsServlet.do?func=getGoodsByCondition&condition='+data.condition,
				"dataType": "json",
				"success" : success
			});	
			return obj;		
		},
		//获取结账单
		getConsumeBill:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'ShopCartServlet.do?func=getConsumeBill&CONSUMEROOMID='+data.consumeRoomId,
				"dataType": "json",
				"success" : success
			});	
			return obj;	
		},
		refreshOrder:function(data){
			//更新现在的订单列表
			var successOrder = function(param){
				data.orderData.clear()
			for(var o in param.consumeDetails){
				data.orderData.newData({
					defaultValues:[{
						goodsName:param.consumeDetails[o].goodsName,
						price:param.consumeDetails[o].price,
						addMoney:param.consumeDetails[o].addMoney,
						qty:param.consumeDetails[o].qty,
						unitName:param.consumeDetails[o].unitName,
						billDetailId:param.consumeDetails[o].billDetailId,
						cancelQty:param.consumeDetails[o].cancelQty,
						checkOutQty:param.consumeDetails[o].checkOutQty,
						presentQty:param.consumeDetails[o].presentQty
					}]
				});
			}
			};
		//拿到订单详情
		Baas.sendRequest({
			"url" : data.ip + 'ShopCartServlet.do?func=showOrderedReturnJson&billMasterId='+data.currentDeskData.getFirstRow().val('billMasterId')+'&roomId='+data.currentDeskData.getFirstRow().val('roomId'),
			"dataType": "json",
			"success" : successOrder
		});		
		},
		//获取版本号
		//http://127.0.0.1:8080/OrderSystemWeX5/RoomFunctionServlet.do?func=checkAppVersion
		checkAppVersion:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=checkAppVersion',
				"dataType": "json",
				"success" : success
			});	
			return obj.result;	
		},
		//得到手写单基本信息
		//OrderSystemWeX5/RoomFunctionServlet.do?func=getWriterBillID
		getWriterBillID:function(data){
			var obj;
			var success = function(param){
				var a = param;
				obj = a;
			};
			Baas.sendRequest({
				"url" : data.ip + 'RoomFunctionServlet.do?func=getWriterBillID',
				"dataType": "json",
				"success" : success
			});	
			return obj;				
		}
	};

	return order;
});