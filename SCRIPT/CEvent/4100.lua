--开局搜刮事件
--OEVENTLUA[4100] = function() 

	local picid = 228;
	
	instruct_0();
	
	if JY.Base["物品2"] == 234 then
		say("你手里还有介绍信，赶紧先去入门",picid,1,"开局助手");
		
	else
		local title = "是否搜刮减道德的箱子";
		local str = "是：搜刮之后道德为46*否：不搜刮减道德箱子*放弃：不使用自动搜刮功能";
		local btn = {"是","否","放弃"};
		local num = #btn;
		local r = JYMsgBox(title,str,btn,num);
		
		if r == 3 then
			return;
		end
	
	--胡斐居(代码0）：食材10，好逑汤1，小还丹10，白云熊胆丸10
		if GetD(0,1,2) > 0 then
			instruct_2(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(0,1,0,0,0,0,0,0,0,0,0,0,0);
		end
	
		if GetD(0,2,2) > 0 then
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(0,2,0,0,0,0,0,2468,2468,2468,-2,-2,-2); 
		end
		
		if GetD(0,3,2) > 0 then
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(0,3,0,0,0,0,0,2468,2468,2468,-2,-2,-2); 
		end
	
		if GetD(0,5,2) > 0 then
			instruct_32(19,1);   --  2(2):得到物品[好逑汤][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(0,5,0,0,0,0,0,2468,2468,2468,-2,-2,-2);
		end
		
	--成昆居(代码9）：食材10，药材50，小还丹10，白云熊胆丸10 
		if GetD(9,8,2) > 0 then
			instruct_3(9,8,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(9,5,2) > 0 then
			instruct_3(9,5,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(9,7,2) > 0 then
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(9,7,0,0,0,0,0,2468,2468,2468,-2,-2,-2);
		end
	
		if GetD(9,6,2) > 0 then
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(9,6,0,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--古墓(代码18）：天罗地网掌
		if GetD(18,4,2) > 0 then
			instruct_3(18,4,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(107,1);   --  2(2):得到物品[天罗地网掌][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--百花谷(代码20）：食材10 
		if GetD(20,15,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(20,15,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--黑龙潭(代码21）：食材10，呕血谱
		if GetD(21,13,2) > 0 then
			instruct_3(21,13,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(21,12,2) > 0 then
			instruct_3(21,12,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(213,1);   --  2(2):得到物品[刘仲甫呕血棋谱][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--绝情谷(代码22）：银两200，食材10×2，药材50，牛黄血歇丹5，阴阳倒乱刃，九转熊蛇丸1，断肠草
		if GetD(22,1,2) > 0 then
			instruct_3(22,1,1,0,0,0,0,2612,2612,2612,-2,-2,-2); 
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,200);   --  2(2):得到物品[银两][200]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(22,2,2) > 0 then
			instruct_3(22,2,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(176,1);   --  2(2):得到物品[阴阳倒乱刃][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(22,3,2) > 0 then
			instruct_3(22,3,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(10,5);   --  2(2):得到物品[牛黄血蝎丹][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(22,4,2) > 0 then
			instruct_3(22,4,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(6,1);   --  2(2):得到物品[九转熊蛇丸][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(22,6,2) > 0 then
			instruct_3(22,6,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(22,0,2) > 0 then
			instruct_3(22,0,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(201,1);   --  2(2):得到物品[断肠草][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--洪七公居(代码23）：食材10×4，叫花鸡2
		if GetD(23,2,2) > 0 then
			instruct_3(23,2,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(23,3,2) > 0 then
			instruct_3(23,3,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(23,4,2) > 0 then
			instruct_3(23,4,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(23,5,2) > 0 then
			instruct_3(23,5,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(23,9,2) > 0 then
			instruct_3(23,9,1,0,0,0,0,0,0,0,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(18,2);   --  2(2):得到物品[叫化鸡][2]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--苗人凤居(代码24）：食材10，小还丹10
		if GetD(24,10,2) > 0 then
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(24,10,0,0,0,0,0,2468,2468,2468,-2,-2,-2);
		end
	
		if GetD(24,13,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(24,13,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--少林寺(代码28），在厨房有食材25(10+15）
		if GetD(28,84,2) > 0 then
			instruct_3(28,84,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(28,18,2) > 0 and r == 1 then
			instruct_3(28,18,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,15);   --  2(2):得到物品[食材][15]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_37(-1);   --  37(25):增加道德-1
		end
	
	--平一指居(代码30）：药材50，食材10，小还丹10，天香续命膏5，白云熊胆丸10，田七鲨胆散5，黄连解毒丸10，牛黄血歇丹5，无常丹3 
		if GetD(30,1,2) > 0 then
			instruct_3(30,1,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(7,3);   --  2(2):得到物品[无常丹][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(30,2,2) > 0 then
			instruct_3(30,2,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(9,10);   --  2(2):得到物品[黄连解毒丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(10,5);   --  2(2):得到物品[牛黄血蝎丹][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(30,3,2) > 0 then
			instruct_3(30,3,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(4,5);   --  2(2):得到物品[田七鲨胆散][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(30,4,2) > 0 then
			instruct_3(30,4,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(1,5);   --  2(2):得到物品[天香续命膏][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(30,5,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(30,5,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--牛家村(代码32）：食材10
		if GetD(32,4,2) > 0 then
			instruct_3(32,4,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--峨嵋派(代码33）：食材10
		if GetD(33,28,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(33,28,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--星宿海(代码35）：食材10 ，牛黄血蝎丹5
		if GetD(35,11,2) > 0 then
			instruct_3(35,11,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(10,5);   --  2(2):得到物品[牛黄血蝎丹][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--青城派(代码36）：银两200,天香续命膏2 
		if GetD(36,6,2) > 0 and r == 1 then
			instruct_3(36,6,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,200);   --  2(2):得到物品[银两][200]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(1,2);   --  2(2):得到物品[天香续命膏][2]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_37(-1);   --  37(25):增加道德-1
		end
	
	--五毒教(代码37）：食材10，白云熊胆丸10
		if GetD(37,9,2) > 0 then
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(37,9,0,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(37,11,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(37,11,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--恒山山麓(代码38）：大蟠桃1
		if GetD(38,8,2) > 0 then
			instruct_3(38,8,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(15,1);   --  2(2):得到物品[大蟠桃][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--洛阳城(代码40）：食材10
		if GetD(40,32,2) > 0 then
			instruct_3(40,32,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--武当派(代码43）：食材10
		if GetD(43,34,2) > 0 then
			instruct_3(43,34,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(43,14,2) > 0 and r == 1 then
			instruct_3(43,14,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_2(8,2);   --  2(2):得到物品[天王保命丹][2]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_37(-1);   --  37(25):增加道德-1
		end
	
	--蝴蝶谷(代码44）：银两200，药材50，食材10，黑玉断续膏2，九转熊蛇丸2
		if GetD(44,3,2) > 0 then
			instruct_3(44,3,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,200);   --  2(2):得到物品[银两][200]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(44,4,2) > 0 then
			instruct_3(44,4,0,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(2,2);   --  2(2):得到物品[黑玉断续膏][2]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(44,5,2) > 0 then
			instruct_3(44,5,0,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(6,2);   --  2(2):得到物品[九转熊蛇丸][2]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(44,6,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(44,6,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--金蛇山洞(代码46）：银两200，药材50，金蛇锥10
		if GetD(46,8,2) > 0 then
			instruct_3(46,8,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,200);   --  2(2):得到物品[银两][200]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(46,2,2) > 0 then
			instruct_3(46,2,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(30,10);   --  2(2):得到物品[金蛇锥][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--药王庄(代码49）：食材10，药材50，小还丹10，天香续命膏3，黑玉断续膏1，白云熊胆丸10，田七鲨胆散3，九花玉露丸2，九转熊蛇丸1，牛黄血歇丹3 
		if GetD(49,3,2) > 0 then
			instruct_3(49,3,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(1,3);   --  2(2):得到物品[天香续命膏][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(2,1);   --  2(2):得到物品[黑玉断续膏][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(4,3);   --  2(2):得到物品[田七鲨胆散][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(5,2);   --  2(2):得到物品[九花玉露丸][2]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(6,1);   --  2(2):得到物品[九转熊蛇丸][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(10,3);   --  2(2):得到物品[牛黄血蝎丹][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(49,4,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(49,4,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--阎基居(代码50）：食材10，药材20，小还丹15，天香续命膏3，田七鲨胆散3，天王保命丹1
		if GetD(50,2,2) > 0 then
			instruct_3(50,2,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,20);   --  2(2):得到物品[药材][20]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(50,3,2) > 0 then
			instruct_3(50,3,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(1,3);   --  2(2):得到物品[天香续命膏][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(4,3);   --  2(2):得到物品[田七鲨胆散][3]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(50,4,2) > 0 then
			instruct_3(50,4,1,0,0,0,0,2468,2468,2468,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(8,1);   --  2(2):得到物品[天王保命丹][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,5);   --  2(2):得到物品[小还丹][5]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(50,9,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(50,9,0,0,0,0,0,0,0,0,0,0,0);
		end
	
	--聚贤庄(代码54）：食材10×2，药材50，小还丹10，天香续命膏3，黑玉断续膏1，白云熊胆丸10，田七鲨胆散3，九花玉露丸2，九转熊蛇丸1，牛黄血歇丹3
		if GetD(54,1,2) > 0 then
			instruct_3(54,1,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(1,3);   --  2(2):得到物品[天香续命膏][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(2,1);   --  2(2):得到物品[黑玉断续膏][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(3,10);   --  2(2):得到物品[白云熊胆丸][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(4,3);   --  2(2):得到物品[田七鲨胆散][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(5,2);   --  2(2):得到物品[九花玉露丸][2]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(6,1);   --  2(2):得到物品[九转熊蛇丸][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(10,3);   --  2(2):得到物品[牛黄血蝎丹][3]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,50);   --  2(2):得到物品[药材][50]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(54,33,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(54,33,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
		if GetD(54,34,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(54,34,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--福威镖局(代码56）：银两200，小还丹3
		if GetD(56,4,2) > 0 then
			instruct_3(56,4,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,200);   --  2(2):得到物品[银两][200]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,3);   --  2(2):得到物品[小还丹][3]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--金龙帮(代码59）：食材10×2
		if GetD(59,31,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(59,31,0,0,0,0,0,0,0,0,0,0,0);
		end 
	
		if GetD(59,32,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(59,32,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--龙门客栈(代码60）：食材10
		if GetD(60,11,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(60,11,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--田伯光居(代码64）：银两100，食材10，飞蝗石10
		if GetD(64,1,2) > 0 then
			instruct_3(64,1,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,100);   --  2(2):得到物品[银两][100]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(28,10);   --  2(2):得到物品[飞蝗石][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(64,3,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(64,3,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--山洞(代码65）：食材10
		if GetD(65,4,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(65,4,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--昆仑派(代码68）：食材10 
		if GetD(68,30,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(68,30,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--灵蛇岛(代码73）：食材10，小还丹5，黄连解毒丸3 
		if GetD(73,8,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(73,8,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
		if GetD(73,3,2) > 0 then
			instruct_3(73,3,1,0,0,0,0,2492,2492,2492,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,5);   --  2(2):得到物品[小还丹][5]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(9,3);   --  2(2):得到物品[黄连解毒丸][3]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--桃花岛(代码75）：食神秘籍
		if GetD(75,44,2) > 0 then
			instruct_3(75,44,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(220,1);   --  2(2):得到物品[食神秘笈][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--台湾(代码76）：飞蝗石10，银两500，食材10 ，小还丹10，白云熊胆丸3
		if GetD(76,3,2) > 0 then
			instruct_3(76,3,-2,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(3,3);   --  2(2):得到物品[白云熊胆丸][3]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(76,4,2) > 0 and r == 1 then
			instruct_3(76,4,-2,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(28,10);   --  2(2):得到物品[飞蝗石][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(174,500);   --  2(2):得到物品[银两][500]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_37(-1);   --  37(25):增加道德-1
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(76,6,2) > 0 then
			instruct_3(76,6,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--渤泥岛(代码78）：食材10×2
		if GetD(78,1,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(78,1,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
		if GetD(78,2,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(78,2,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--朱府(代码92）：翡翠杯
		if GetD(92,17,2) > 0 then
			instruct_3(92,17,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(194,1);   --  2(2):得到物品[翡翠杯][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--长乐帮(代码94）：食材10×2 
		if GetD(94,12,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(94,12,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
		if GetD(94,13,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(94,13,0,0,0,0,0,0,0,0,0,0,0);
		end 
	
	--大功坊(代码95）：药材100，天山雪莲1
		if GetD(95,15,2) > 0 then
			instruct_3(95,15,1,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(17,1);   --  2(2):得到物品[天山雪莲][1]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(209,100);   --  2(2):得到物品[药材][100]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--五仙教(代码96）：食材10
		if GetD(96,14,2) > 0 then
			instruct_32(210,10);   --  2(2):得到物品[食材][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(96,14,0,0,0,0,0,0,0,0,0,0,0); 
		end
	
	--紫烟岛(代码97）：金乌刀法
		if GetD(97,1,2) > 0 then
			instruct_3(97,1,1,0,0,0,0,3500,3500,3500,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(141,1);   --  2(2):得到物品[金乌刀法][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--明霞岛(代码98）：千年灵芝2，小还丹10，白云熊胆丸3，大燕传国玉玺
		if GetD(98,9,2) > 0 then
			instruct_3(98,9,1,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(196,1);   --  2(2):得到物品[大燕传国玉玺][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(98,10,2) > 0 then
			instruct_3(98,10,-2,0,0,0,0,2612,2612,2612,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(3,3);   --  2(2):得到物品[白云熊胆丸][3]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		if GetD(98,11,2) > 0 then
			instruct_3(98,11,0,0,0,0,0,2608,2608,2608,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(14,2);   --  2(2):得到物品[千年灵芝][2]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
	--老祖居(代码102）：小还丹10 
		if GetD(102,10,2) > 0 then
			instruct_32(0,10);   --  2(2):得到物品[小还丹][10]
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_3(102,10,0,0,0,0,0,2468,2468,2468,-2,-2,-2);
		end
	
	--药王庙(代码103）：广陵散
		if GetD(103,10,2) > 0 then
			instruct_3(103,10,1,0,0,0,0,6698,6698,6698,-2,-2,-2);   --  3(3):修改事件定义:当前场景:当前场景事件编号
			instruct_0();   --  0(0)::空语句(清屏)
			instruct_32(212,1);   --  2(2):得到物品[广陵散琴曲][1]
			instruct_0();   --  0(0)::空语句(清屏)
		end
	
		say("好了，不要再问我话了，我是木头人",picid,1,"开局助手");
		instruct_3(-2,-2,1,0,0,0,0,0,0,0,0,0,0);
	end
--end