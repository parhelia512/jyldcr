--brolycjw修改冰糖恋 白马剧情
--OEVENTLUA[8601] = function()    --破庙剧情
	 if GetS(86,40,40,5) == 1 then		--判断事件是否已经触发过
	 	 return;
	 end
	instruct_3(-2,4,0,0,0,0,0,9238,9238,9238,0,0,0);  
   instruct_26(3,3,1,0,0);   
   instruct_26(3,2,1,0,0);   
   instruct_3(-2,1,0,0,0,0,0,0,0,0,0,0,0);  
   instruct_3(-2,2,0,0,0,0,0,0,0,0,0,0,0);  
   instruct_3(-2,0,0,0,0,0,0,0,0,0,0,0,0);  
   TalkEx( "<咦？前面发生什么事了？>",0,1);  
   instruct_0();
   instruct_25(44,25,36,25);   
   instruct_0();   
   TalkEx("你觉得你还能逃出去么？识相的话就快将高昌迷宫的地图交出来。",137,0);  
   instruct_0();
   TalkEx("你们这群杀我爹娘的恶人，我死也不会交给你们的。",242,4);  
   instruct_0();
   instruct_25(36,25,44,25);   
   instruct_0();   
   TalkEx("<地图？难道和天书有关>",0,1);  
   instruct_0();

   local zx=DrawStrBoxYesNo(-1,-1,"我是否应该挺身而出呢？",C_ORANGE,CC.DefaultFont);
   
   if zx==true then            --正邪分支
          TalkEx("住手！",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          instruct_30(44,25,40,25);  
          instruct_0();
          TalkEx("你们一大堆男人欺负一个小姑娘，不觉得羞愧吗？",0,1);  
          instruct_0();
          instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
          TalkEx("哪里蹦出来的野猴子，连我青蟒剑的事也敢插手，活的不耐烦了是不？",137,0);  
          instruct_0();
          TalkEx("有种再说一遍！！",0,1);  
          instruct_0();
          TalkEx("我说哪里蹦出来的野猴子，连我青蟒剑的事也敢插手...",137,0);  
          instruct_0();
          TalkEx( "再！说！一！遍！",0,1);  
          instruct_0();
          TalkEx("你耳朵有问题是不？我说哪里来的野猴子..",137,0);  
          instruct_0();
          TalkEx("你！可以去死了！",0,1);  
          instruct_0();
          if WarMain(92,1)==true then    --群战陈达海
	     instruct_3(-2,6,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,7,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,8,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,9,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
             instruct_0();
             instruct_13();
             TalkEx("大侠饶命啊，小人有眼不识高人..",137,0); 
             instruct_0();            
             TalkEx("辱我者，死！",0,1); 
             instruct_0();
             TalkEx("啊........",137,0); 
             instruct_0();
             instruct_14();
             instruct_3(-2,5,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             TalkEx("小女子谢过大侠救命之恩",242,1); 
             instruct_0();
             instruct_30(40,25,37,25);  
             instruct_0();
             TalkEx("姑娘不必多礼，敢问姑娘如何称呼",0,1); 
             instruct_0();
             TalkEx("小女子李文秀，恳请少侠救救我师父，他中了毒针",242,0); 
             instruct_0();
             instruct_1(256,0,1);   
             instruct_0();
             instruct_1(257,0,2);  
             instruct_0();
             instruct_14();   
             instruct_3(-2,3,0,0,0,0,0,6796,6796,6796,-2,-2,-2); 
             instruct_0(); 
             instruct_13();   
             instruct_1(258,138,0);   
             instruct_0();   
             instruct_1(259,0,1);  
             instruct_0();  
             instruct_1(260,138,0);  
             instruct_0(); 
             instruct_2(35,1);   
             instruct_0();  
             instruct_1(261,246,1);   
             instruct_0(); 
             instruct_1(262,138,0);  
             instruct_0();   
             instruct_14();   
             instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);   
             instruct_0();  
             instruct_13();
             TalkEx("恩公莫要见怪，我师父脾气有些古怪。敢问恩公如何称呼？",242,0); 
             instruct_0();            
             TalkEx(string.format("在下%s。", JY.Person[0]["姓名"]),0,1); 
             instruct_0();
             TalkEx(string.format("见过%s少侠。", JY.Person[0]["姓名"]),242,0); 
             instruct_0();            
             TalkEx("莫要多礼，李姑娘，你今后有何打算？",0,1); 
             instruct_0();
             instruct_1(264,242,0);  
             instruct_0();   
             instruct_1(265,0,1);  
             instruct_0(); 
             TalkEx("也好，顺便找寻高昌迷宫的下落，这条手绢和这匹白马是爹娘仅留的两个物事，或许就藏在这里面了。",242,0); 
             instruct_0();
             if instruct_20() then
             	TalkEx("你的队伍已满，我先回小村吧。",242,0);
             	instruct_3(70,86,1,0,8651,0,0,6804,6804,6804,0,0,0);
             else
             	instruct_10(590);      --加入队友，590号文秀
             	
             end
             
             instruct_14();
	     instruct_3(70,3,0,0,0,0,0,0,0,0,0,0,0);
	     instruct_3(70,4,0,0,0,0,0,0,0,0,0,0,0);
	     instruct_3(70,61,1,0,8602,0,0,5098,5098,5098,0,-2,-2);  --南贤剧情
	     instruct_3(70,62,1,0,8603,0,0,8250,8250,8250,0,-2,-2);  --北丑剧情
             instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);
             instruct_3(-2,4,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             instruct_2(230,1);       --得到白马
             instruct_0();
             instruct_37(2);       --道德+2
             instruct_0();
             TalkEx("以后有美女相伴了。但是，这个手绢到底有什么奥秘呢？还是回家问问贤叔和丑叔吧。",0,1); 
             instruct_0(); 
          else
             instruct_15(0);   
             instruct_0();
          end
   else
          TalkEx("<还是再观望一下，说不定能得到迷宫的下落>",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          TalkEx("兄弟们，大家一起上！",137,0);  
          instruct_0();
          instruct_14();
	  instruct_3(-2,6,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,7,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,8,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,9,0,0,0,0,0,0,0,0,0,0,0);
          instruct_0();
          instruct_13();
          TalkEx("你这臭婊子竟然放毒针！我杀了你！",137,0);  
          instruct_0();
          TalkEx("李文秀手一滑，将随身手绢掉了出来，上面已沾满了血渍，隐约可见是一幅山川图",0,2);  
          instruct_0();
          TalkEx("这是..这是高昌迷宫的地图，终于让我找到了！哈哈哈....",137,0);  
          instruct_0();
          TalkEx( "师父，趁现在，我们快走！",242,4); 
          instruct_0();
          instruct_14();
	  instruct_3(-2,3,0,0,0,0,0,0,0,0,0,0,0);
          instruct_3(-2,4,0,0,0,0,0,0,0,0,0,0,0);
          instruct_0();
          instruct_13();
          instruct_25(36,25,44,25);   
          instruct_0();  
          TalkEx("螳螂捕蝉，黄雀在后。快将地图交过来吧。",0,1);  
          instruct_0();
          instruct_25(44,25,36,25);   
          instruct_0();   
          instruct_30(44,25,40,25);  
          instruct_0();
          instruct_3(-2,5,0,0,0,0,0,5926,5926,5926,-2,-2,-2);
          TalkEx( "哪来的野猴子，敢抢老子的东西。",137,0);  
          instruct_0();
          TalkEx("不知死活！",0,1);  
          instruct_0();
          SetS(87,31,33,5,1);   --单挑陈达海战斗数据
          if WarMain(92,1)==true then  --单挑陈达海
             instruct_39(15);          --打开废墟地图
             instruct_3(15,0,0,0,0,0,8610,0,0,0,0,0,0); 
             instruct_13();
             TalkEx("大侠，小的有眼不识泰山，冒犯了大侠，该死。",137,0);  
             instruct_0();
             TalkEx("你倒挺识相的，以后就跟着我混了。",0,1);  
             instruct_0();
             TalkEx( "谢谢大侠。",137,0);  
             instruct_0();
             instruct_2(222,1);
             instruct_0(); 
             --[[ 
             instruct_10(92);    --加入队友，92号暂替陈达海
             instruct_0();
             ]]
             instruct_37(-2);       --道德-2
             instruct_0();
             instruct_14();
	     instruct_3(-2,5,0,0,0,0,0,0,0,0,0,0,0);
             instruct_0();
             instruct_13();
             TalkEx("这白马不错，归我了。",0,1);  
             instruct_0();
             instruct_2(230,1);       --得到白马
             instruct_0();
             instruct_37(-1);       --道德-1
             instruct_0();
          else
             instruct_15(0);   
             instruct_0();
          end
          SetS(87,31,33,5,0);   --单挑陈达海战斗数据还原
   end 
   
   SetS(86,40,40,5,1);  --避免重复触发
--end