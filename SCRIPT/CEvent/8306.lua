--OEVENTLUA[8306] = function()	--邪线侠客岛战侠客群众
	Talk("你们岛上的神功，可否借给我一看？",0);
	instruct_1(1650,40,0);   --  1(1):[木岛主]说: 不可！
	instruct_0();   --  0(0)::空语句(清屏)
	instruct_1(1651,39,0);   --  1(1):[龙岛主]说: 此书对侠客岛意义重大，只*要我兄弟二人还在，就绝不*允许别人拿走。
	instruct_0();   --  0(0)::空语句(清屏)
	if instruct_5(0,254) ==true then    --  5(5):是否选择战斗？否则跳转到:Label0
		instruct_37(-5);       --道德-5
		instruct_1(1652,0,1);   --  1(1):[AAA]说: 哦，这么说只要灭了你们俩*就行了。
		instruct_0();   --  0(0)::空语句(清屏)
		if instruct_6(170,3,0,0) ==false then    --  6(6):战斗[170]是则跳转到:Label0
			instruct_15(0);   --  15(F):战斗失败，死亡
			do return; end
		end    --:Label0
		instruct_3(-2,19,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:场景事件编号 [19]
		instruct_3(-2,2,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:场景事件编号 [2]
		instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:场景事件编号 [3]
		instruct_0();   --  0(0)::空语句(清屏)
		instruct_13();   --  13(D):重新显示场景
		instruct_2(80,1);   --  2(2):得到物品[太玄经][1]
		instruct_0();   --  0(0)::空语句(清屏)
		Talk("神功在手，天下无敌！",0);
	else
		Talk("哦，那当我没说过。。",0);
		do return; end
	end
--end