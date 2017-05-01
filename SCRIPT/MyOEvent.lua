
--传送地址列表
function My_ChuangSong_List()
	local menu = {};
	for i=0, JY.SceneNum-1 do
		menu[i+1] = {i..JY.Scene[i]["名称"], nil, 1};
		if JY.Scene[i]["进入条件"] ~= 0 or  i == 84 or i == 83  or i == 82 or  i == 13 then
			menu[i+1][3] = 0;
		end
	end
	
	local r = ShowMenu2(menu,JY.SceneNum,4,12,20,(CC.ScreenH-12*(CC.DefaultFont+CC.RowPixel))/2+20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE, "请选择传送地址");
	
	if r == 0 then
		return 0;
	end
	
	if r > 0 then	
		
		local sid = r-1;
		
		if JY.Scene[sid]["进入条件"] == 0 and sid ~= 84 and sid ~= 83  and sid ~= 82 and  sid ~= 13 then
				My_Enter_SubScene(sid,-1,-1,-1);
			else
				say("您目前现在不能进入此场景", 232, 1, "百事通");
				return 1;
			end

	end
	
	return 1;

end



--加强版传送地址菜单
function My_ChuangSong_Ex()     
	local title = "百事通传送功能";
	local str = "这是一个很方便的马车传送系统";
	local btn = {"列表选择", "输入代码","放弃"};
	local num = #btn;
	local r = JYMsgBox(title,str,btn,num,232,1);
	if r == 1 then
		return My_ChuangSong_List();
	elseif r == 2 then
		Cls();
		local sid = InputNum("请输入场景代码",0,JY.SceneNum,1);
		if sid ~= nil then	
			
			if JY.Scene[sid]["进入条件"] == 0 and sid ~= 84 and sid ~= 83  and sid ~= 82 and  sid ~= 13 then
				My_Enter_SubScene(sid,-1,-1,-1);
			else
				say("您目前现在不能进入此场景", 232, 1, "百事通");
				return 1;
			end

		end
	end
end

--挑战四神
function Fight()
	say("四神可不是这么好惹的，你可得小心了", 232, 1, "百事通");
	SetS(86, 1, 9, 5, 1);
	
	for i=1, 10 do
		if GetS(86, 2, i, 5) == 0 then
			SetS(86, 2, i, 5, 2);
		end
	end
	
	local menu = {
		{"张三丰和乔峰",nil,GetS(86, 2, 1, 5)-1},
		{"张三丰和东方不败",nil,GetS(86, 2, 2, 5)-1},
		{"张三丰和扫地神僧",nil,GetS(86, 2, 3, 5)-1},
		{"乔峰和东方不败",nil,GetS(86, 2, 4, 5)-1},
		{"乔峰和扫地神僧",nil,GetS(86, 2, 5, 5)-1},
		{"东方不败和扫地神僧",nil,GetS(86, 2, 6, 5)-1},
		{"张三丰、东方不败和扫地神僧",nil,GetS(86, 2, 7, 5)-1},
		{"张三丰、乔峰和扫地神僧",nil,GetS(86, 2, 8, 5)-1},
		{"张三丰、乔峰和东方不败",nil,GetS(86, 2, 9, 5)-1},
		{"乔峰、东方不败和扫地神僧",nil,GetS(86, 2, 10, 5)-1},
	};
	
	local size = CC.DefaultFont;
	
	local x1 = (CC.ScreenW-13*size)/2 ;
	local y1 = (CC.ScreenH - #menu*(size + CC.RowPixel))/2 - size;
	DrawStrBox(x1, y1, "请选择挑战对象",C_WHITE, size);
	
	local numItem =  #menu;
	
	local r = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		Cls();
		SetS(86, 2, r, 5, 3);
		if WarMain(226) then
			SetS(86, 2, r, 5, 1);
			say("少侠好身手啊。", 232, 1, "百事通");
			QZXS("全体队友实战增加三十点");
			for i=1, 6 do
				for j=1, #TeamP do
					if JY.Base["队伍"..i] == TeamP[j] then
						SetS(5, j, 6, 5, GetS(5, j, 6, 5)+30);
						break;
					end
				end
			end
			QZXS("主角武学常识提高10点");
			AddPersonAttrib(0, "武学常识", 10);
		else
			SetS(86, 2, r, 5, 2);
			say("很可惜，先提高你的能力再来吧", 232, 1, "百事通");	
		end
	end
	
	SetS(86, 1, 9, 5, 0);
end

--进练功房
function LianGong()
	JY.Person[445]["等级"] = 30 * 60
  JY.Person[446]["等级"] = JY.Person[445]["等级"]
  JY.Person[445]["头像代号"] = math.random(190)
  JY.Person[446]["头像代号"] = math.random(190)
  JY.Person[445]["生命最大值"] = 100
  JY.Person[446]["生命最大值"] = 100
  JY.Person[445]["生命"] = JY.Person[445]["生命最大值"]
  JY.Person[446]["生命"] = JY.Person[446]["生命最大值"]
  instruct_6(226, 8, 0, 1)
  JY.Person[445]["等级"] = 10
  JY.Person[446]["等级"] = 10
  JY.Person[445]["头像代号"] = 208
  JY.Person[446]["头像代号"] = 208
	return 1;
end

--装备说明
function ZBInstruce()
	local flag = false
	Cls();
	repeat
		local x1 = CC.ScreenW/4 ;
		local y1 = CC.ScreenH/4;
		DrawStrBox(x1, y1, "请选择需要查看的装备",C_WHITE, CC.DefaultFont);
		local menu = {
			{"真武剑",nil,1},
			{"白马",nil,1},
			{"玄铁剑",nil,1},
			{"倚天剑",nil,1},
			{"屠龙刀",nil,1},
			{"软蝟甲",nil,1}
		};
		
		local numItem = #menu;
		local size = CC.DefaultFont;
		local r = ShowMenu(menu,numItem,0,x1+size*3,y1+size*2,0,0,1,1,size,C_ORANGE,C_WHITE);
		if r == 0 then
			flag = true;
		elseif r == 1 then
			say("真武剑，使用太极剑法必连击", 232, 1, "百事通");
		elseif r == 2 then
			say("白马，额外提高五点集气速度", 232, 1, "百事通");	
		elseif r == 3 then
			say("玄铁剑，配合玄铁剑法必暴击，配合其它剑法提高暴击率", 232, 1, "百事通");	
		elseif r == 4 then
			say("倚天剑，攻击必流血，并且一定机率封穴", 232, 1, "百事通");	
		elseif r == 5 then
			say("屠龙刀，使用等级为极的刀法提高百分之四十暴击率，暴击的情况下有百分之五十机率大幅度杀集气，并且造成流血。杀集气量与武功威力有关", 232, 1, "百事通");	
		elseif r == 6 then
			say("软蝟甲，受到拳系武功攻击时反射一定的伤害，受到非拳系武功攻击时减少伤害", 232, 1, "百事通");	
		end
	until flag
end

--brolycjw: 队友挑战
function DYRW()
	Cls();
	local x1 = CC.ScreenW/4 ;
	local y1 = CC.ScreenH/4;
	DrawStrBox(x1, y1, "请选择挑战队友",C_WHITE, CC.DefaultFont);
	local menu = {}
	local id,tid = 0;
		for i = 1, CC.TeamNum do
			menu[i] = {"", nil, 0}
			id = JY.Base["队伍" .. i]		
				if id > 0 then
				menu[i][3] = 1
				menu[i][1] = JY.Person[id]["姓名"]
			end
		end
	local numItem = #menu;
	local size = CC.DefaultFont;
	local r = ShowMenu(menu,numItem,0,x1,y1+CC.DefaultFont,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		id = JY.Base["队伍" .. r]
		SetS(86,15,1,5,id)
		for t=1, CC.MyTeamNum do
			if id == TeamP[t] then
				tid = t
				break;
			end
		end
		Cls();
		DrawStrBox(x1, y1, "请选择挑战难度",C_WHITE, CC.DefaultFont);
		menu = {
			{"初级",nil,GetS(86,16,tid,5)-1},
			{"中级",nil,GetS(86,17,tid,5)-1},
			{"高级",nil,GetS(86,18,tid,5)-1},
			{"神级",nil,GetS(86,19,tid,5)-1},
		};
		numItem = #menu;
		local rr = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
		if rr > 0 then
			SetS(86,15,2,5,rr)
			if WarMain(79) then
				SetS(86, 15+rr, tid, 5, 1);
				SetS(86, 16+rr, tid, 5, 2);
				say("真是好身手啊。", 232, 1, "百事通");
				QZXS(string.format("%s 实战增加%s点",JY.Person[id]["姓名"],rr*50));
				QZXS(string.format("%s 攻防轻增加%s点",JY.Person[id]["姓名"],rr*5));
				SetS(5, tid, 6, 5, GetS(5, tid, 6, 5)+rr*50);
				AddPersonAttrib(id, "攻击力", rr*5);
				AddPersonAttrib(id, "防御力", rr*5);
				AddPersonAttrib(id, "轻功", rr*5);
			else
				SetS(86, 15+rr, tid, 5, 2);
				say("很可惜，先提高你的能力再来吧", 232, 1, "百事通");	
			end
		end	
	end
	SetS(86,15,1,5,0)
	SetS(86,15,2,5,0)
end

--武功特效说明
function WuGongIntruce()
	local menu = {};
	
	for i = 1, JY.WugongNum-1 do
		menu[i] = {i..JY.Wugong[i]["名称"], nil, 0}
	end
	
	--拥有的秘籍
	for i = 1, CC.MyThingNum do
    if JY.Base["物品" .. i] > -1 and JY.Base["物品数量" .. i] > 0 then
    	local wg = JY.Thing[JY.Base["物品" .. i]]["练出武功"];
    	if wg > 0 then
    		menu[wg][3] = 1;
    	end
    else
    	break;
    end
  end
  
  --学会的武功
  for i=1, CC.TeamNum do
  	if JY.Base["队伍"..i] >= 0 then
  		for j=1, 10 do
  			if JY.Person[JY.Base["队伍"..i]]["武功"..j] > 0 then
  				menu[JY.Person[JY.Base["队伍"..i]]["武功"..j]][3] = 1;
  			else
  				break;
  			end
  		end
  	else
  		break;
  	end
  end
	
	while true do
		Cls();
		local r = ShowMenu2(menu,JY.WugongNum-1,4,12,20,(CC.ScreenH-12*(CC.DefaultFont+CC.RowPixel))/2+20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE, "请选择查看的武功");
		--local r = ShowMenu(menu,n,15,CC.ScreenW/4,20,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
		
		if r > 0 and r < JY.WugongNum then	
			InstruceWuGong(r);
		else
			break;
		end
	end
	
end

--显示武功或内功特效
function InstruceWuGong(id)
	
	if id < 0 or id >= JY.WugongNum then
		QZXS("武功未知错误，无法查看");
		return;
	end
	
	local filename = string.format("%s%d.txt", CONFIG.WuGongPath,id)
	if existFile(filename) == false then
		QZXS("此武功未包含任何说明，请自行琢磨");
		return;
	end
	
	DrawTxt(filename);
	
end

function TSInstruce()
	local filemenu = {};
	local n = 0;
	for i=1, math.huge do
		if existFile(string.format("%s%d.txt",CONFIG.HelpPath, i)) then
			filemenu[i] = string.format("%s%d.txt",CONFIG.HelpPath, i);
			n = n + 1;
		else
			break;
		end
	end
	
	local menu = {}
	local maxlen = 0;
	for i=1, n do
		local file = io.open(filemenu[i],"r")
		local str = file:read("*l")
		
		if str == nil then
			str = " ";
		end
		
		if #str > maxlen then
			maxlen = #str;
		end
		
		menu[i] = {i..str, nil, 1};
		
		file:close()
	end
	
	local size = CC.DefaultFont;
	local x1 = (CC.ScreenW-maxlen*size/2)/2;
	local y1 = (CC.ScreenH-10*(size+CC.RowPixel))/2;
	
	while true do
		Cls();
		local r = ShowMenu(menu,n,10,x1,y1,0,0,1,1,size,C_ORANGE,C_WHITE);
		if r > 0 then
			InstruceTS(r);
		else
			break;
		end
	end
end

--显示武功或内功特效
function InstruceTS(id)
		
	local filename = string.format("%s%d.txt", CONFIG.HelpPath,id)
	if existFile(filename) == false then
		QZXS("未找到相关的攻略文件");
		return;
	end
	
	DrawTxt(filename);
	
end

function DrawTxt(filename)
	Cls();
	
	--读取文件说明
	local file = io.open(filename,"r")
	local str = file:read("*a")
	file:close()
	
	local size = CC.DefaultFont;
	local color = C_WHITE;
	
	local linenum = 50;		--显示长度
	local maxlen = 14;
	local w = linenum*size/2 + size;
	local h = maxlen*(size+CC.RowPixel) + 2*CC.RowPixel;
	
	local bx = (CC.ScreenW-w)/2;
	local by = (CC.ScreenH-h)/2;
	DrawBox(bx,by,bx+w,by+h,C_WHITE);		--底边框
	local x = bx + CC.RowPixel;
	local y = by + CC.RowPixel;
	
	local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
	
	local strcolor = AnalyString(str)
	local l = 0
	local row = 0;


	for i,v in pairs(strcolor) do
		while 1 do
			if v[1] == nil or v[1] == "" then
				break;
			end
			local index = string.find(v[1], "\n")
			
			if l+#v[1] < linenum/2 and index == nil then		--如果未到换行，没有找到换行
				DrawString(x + l*size/2, y + row*(size+CC.RowPixel), v[1], v[2] or color, size);
				l = l + #v[1]

				if i == #strcolor then
					--显示文字
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					lib.SetClip(0,0,0,0);
				end
				
				lib.Debug(v[1]);

				break;
			else	--如果达到换行
				local tmp, pos1, pos2;
				if index == nil then
					pos1 = linenum-l;
					pos2 = pos1+1;
				else
					pos1 = index-1;
					pos2 = pos1+2;
					
					if pos1 > linenum then
						index = nil;
						pos1 = linenum;
						pos2 = pos1+1;
					end
				end
				
				--如果起始位置已经超过了字符串的长度，那么直接显示。并且结束循环
				if pos1 >= #v[1] then
					DrawString(x + l*size/2, y + row*(size+CC.RowPixel), v[1], v[2] or color, size);
					l = #v[1];
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					v[1] = nil;		--设置为nil结束循环
				else
					tmp = string.sub(v[1], 1, pos1)
					local flag = 0
					for i=1, pos1 do
						if string.byte(tmp, i) <= 127 then
							flag = flag + 1;
						end
					end
	
	
					if math.fmod(flag,2) == 1 and index == nil  then		--如果包含有单字符
							if string.byte(tmp, -1) > 127 then
								tmp = string.sub(v[1], 1, pos1-1);
								pos2 = pos2 - 1
							end
					end
	
					v[1] = string.sub(v[1], pos2);
	
					DrawString(x + l*size/2, y + row*(size+CC.RowPixel), tmp, v[2] or color, size);
	
	
					l = l + #tmp
					--显示文字
					for j=0, l do
						lib.SetClip(x,y,x+j*size/2,y+size+row*(size+CC.RowPixel));
						ShowScreen(1);
					end
					
					--行数+1
					row = row + 1
					l = 0
				end
				
			end

			lib.SetClip(0,0,0,0);
			
			if row == maxlen then
				WaitKey();
				row = 0;
				Cls();
				lib.LoadSur(surid, 0, 0)
				
			end
		end
	end
	WaitKey();
	lib.FreeSur(surid)
end

--十四本天书之后得到5000两
--修复自动洗四神技的BUG
function NEvent2(keypress)
  if JY.SubScene == 70 and GetD(70, 3, 0) == 0 and instruct_18(151) then
    instruct_3(70, 3, 1, 0, 0, 0, 0, 2610, 2610, 2610, 0, -2, -2)
  end
  if GetD(70, 3, 5) == 2610 and JY.SubScene == 70 and JY.Base["人X1"] == 8 and JY.Base["人Y1"] == 41 and JY.Base["人方向"] == 2 and keypress == VK_SPACE then
    say("１咦，有张纸条......Ｈ（小子，这是留给你的五千两银子，好好准备一下吧）Ｈ哈，那老家伙还很够意思嘛！")
    instruct_2(174, 5000)
    SetS(10, 0, 17, 0, 1)
    SetD(83, 48, 4, 882)
    say("１嗯，这里还有一本秘籍！待我看看９......")
    say("３好像是门很厉害的武功，而且很合我修炼的路数嘛，哈哈！")
    
    local swg = {109, 110, 111, 112}
    
    local title = "四神技选择";
		local str = string.format("一：%s*二：%s*三：%s*四、%s*放弃：不选择洗四神技*建议主角天罡选择放弃，否则无法出大招",JY.Wugong[109]["名称"],JY.Wugong[110]["名称"],JY.Wugong[111]["名称"],JY.Wugong[112]["名称"]);
		local btn = {"一","二","三","四","放弃"};
		local num = #btn;
		local r = JYMsgBox(title,str,btn,num);
    
    if r >=1 and r <=4 then
	    JY.Person[0]["武功1"] = swg[r]
	    JY.Person[0]["武功等级1"] = 900
	    QZXS("习得『" .. JY.Wugong[swg[r]]["名称"] .. "』")
	  end
    instruct_3(70, 3, 1, 0, 0, 0, 0, 2612, 2612, 2612, 0, -2, -2)
  end
end

--胡斐 苗人凤教苗家剑法
function NEvent3(keypress)
  if JY.SubScene == 24 and JY.Base["人X1"] == 18 and JY.Base["人Y1"] == 23 and JY.Base["人方向"] == 2 and keypress == VK_SPACE and GetS(10, 0, 3, 0) ~= 1 and instruct_16(1) and instruct_18(145) and JY.Person[1]["武功等级1"] == 999 then
    say("１苗大侠，我已经找到雪山飞狐这本书了", 1)
    say("１嗯，很好！看来你的胡家刀法也已练得炉火纯青了，以后的江湖就看你们这些年轻人的了！这本苗家剑法你拿去吧！", 3)
    say("１多谢苗大侠！", 1)
    for i = 1, 10 do
      if JY.Person[1]["武功" .. i] == 0 then
        JY.Person[1]["武功" .. i] = 44
        JY.Person[1]["武功等级" .. i] = 50
        DrawStrBox(-1, -1, "胡斐学会苗家剑法", C_ORANGE, CC.DefaultFont)
        ShowScreen()
        lib.Delay(1000)
        Cls()
        break;
      end
    end
    instruct_2(117, 1)
    SetS(10, 0, 3, 0, 1)
  end
end

--令狐冲12本书变身
function NEvent4(keypress)
  if JY.SubScene == 7 and JY.Base["人X1"] == 34 and JY.Base["人Y1"] == 11 and JY.Base["人方向"] == 2 then
    local ts = 0
    for i = 1, 200 do
      if JY.Base["物品" .. i] > 143 and JY.Base["物品" .. i] < 158 then
        ts = ts + 1
      end
    end
 
	  if ts > 11 and instruct_16(35) and instruct_18(114) and GetS(10, 1, 1, 0) ~= 1 and JY.Person[35]["武功等级1"] == 999 and keypress == VK_SPACE then
	    SetS(7, 34, 12, 3, 102)
	    instruct_3(7, 102, 1, 0, 0, 0, 0, 7148, 7148, 7148, 0, 34, 12)
	    say("１雕兄－－，真想见识一下独孤前辈的风采啊！最近总感觉到对九剑有了新的领悟，但又很模糊，不能具体总结出来！", 35, 1)
	    say("１哈哈－－－－，是时候了！", 140, 0)
	    say("１风太师叔！！！", 35)
	    instruct_14()
	    SetS(7, 33, 12, 3, 101)
	    instruct_3(7, 101, 1, 0, 0, 0, 0, 5896, 5896, 5896, 0, 33, 12)
	    instruct_13()
	    PlayMIDI(24)
	    lib.Delay(2000)
	    say("４冲儿，跟我一起唱：沧海一声笑　滔滔两岸潮　浮沉随浪只记今朝　苍天笑　纷纷世上潮　谁负谁胜出天知晓　江山笑　烟雨遥　涛浪淘尽红尘俗事知多少　清风笑竟惹寂寥　豪情还剩一襟晚照　苍生笑　不再寂寥　豪情仍在痴痴笑笑", 140, 0)
	    say("１冲儿，九剑的极意就隐藏在这首歌中，自已好好去体会吧！老夫心愿已了，从此再无牵挂，就此去也，哈哈－－－－", 140, 0)
	    say("１多谢太师叔传剑，你老人家多保重！嗯，就在这里参悟九剑的奥义吧－－－－", 35, 1)
	    instruct_14()
	    instruct_3(7, 101, 0, 0, 0, 0, 0, -1, -1, -1, 0, 33, 12)
	    instruct_13()
	    DrawStrBox(-1, -1, "三日后", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(1000)
	    say("１成了！这才是真正的独孤九剑啊！此生有幸能学到独孤前辈之神技，夫复何憾！", 35, 1)
	    DrawStrBox(-1, -1, "令狐冲领悟九剑之秘传", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(2000)
	    Cls()
	    DrawStrBox(-1, -1, "令狐冲称号变改", C_ORANGE, CC.DefaultFont)
	    ShowScreen()
	    lib.Delay(1000)
	    Cls()
	    SetS(10, 1, 1, 0, 1)
	    instruct_3(7, 102, 0, 0, 0, 0, 0, -1, -1, -1, 0, 34, 12)
	  end
  end
end
--倚天邪线，最后给玄慈人头
function NEvent5(keypress)
  if JY.SubScene == 28 and JY.Base["人X1"] == 15 and JY.Base["人Y1"] == 28 and JY.Base["人方向"] == 2 and GetD(11, 109, 0) ~= 1 and (instruct_16(73) or instruct_18(114)) and instruct_18(219) and not instruct_18(155) and keypress == VK_SPACE then
    say("１给你人头！")
    say("１给你书！", 70)
    instruct_2(155, 1)
  end
end--山洞事件
function NEvent6(keypress)
  if JY.SubScene == 10 then
    SetD(10, 28, 4, -1)
    SetS(10, 23, 22, 1, 2)
    SetS(10, 22, 22, 1, 2)
  end
  if JY.SubScene == 59 then
    JY.SubSceneX = 0
    JY.SubSceneY = 0
  end
end
--华山觉醒
function NEvent7(keypress)
  if JY.SubScene == 80 and GetS(10, 0, 7, 0) ~= 1 then
    SetS(80, 15, 19, 3, 31)
    instruct_3(80, 31, 1, 0, 0, 0, 0, 6824, 6824, 6824, 0, -2, -2)
	  if JY.Base["人X1"] == 16 and JY.Base["人Y1"] == 19 and JY.Base["人方向"] == 2 and keypress == VK_SPACE and GetS(10, 0, 7, 0) ~= 1 then
	    say("１你好，偶是来自未来的软体娃娃！偶的任务是让在你身体里沉睡的力量觉醒！", 300, 0, "软体娃娃")
	    local ts = 0
	    for i = 1, 200 do
	      if JY.Base["物品" .. i] > 143 and JY.Base["物品" .. i] < 158 then
	        ts = ts + 1
	      end
	    end
	    if ts > 9 then
	      say("１很好，你已经具备觉醒的条件了！Ｈ偶给你看点好东西吧－－－－", 300, 0, "软体娃娃")
	      if DrawStrBoxYesNo(-1, -1, "是否要观看战斗影像？", C_ORANGE, CC.DefaultFont) then
	        local X1, X2, X3, X4, Z1, Z2, Z3, Z4, D1, D2, D3, D4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
	        X1 = JY.Person[50]["携带物品1"]
	        X2 = JY.Person[50]["携带物品2"]
	        X3 = JY.Person[50]["携带物品3"]
	        X4 = JY.Person[50]["携带物品4"]
	        JY.Person[50]["携带物品1"] = -1
	        JY.Person[50]["携带物品2"] = -1
	        JY.Person[50]["携带物品3"] = -1
	        JY.Person[50]["携带物品4"] = -1
	        Z1 = JY.Person[5]["携带物品1"]
	        Z2 = JY.Person[5]["携带物品2"]
	        Z3 = JY.Person[5]["携带物品3"]
	        Z4 = JY.Person[5]["携带物品4"]
	        JY.Person[5]["携带物品1"] = -1
	        JY.Person[5]["携带物品2"] = -1
	        JY.Person[5]["携带物品3"] = -1
	        JY.Person[5]["携带物品4"] = -1
	        D1 = JY.Person[27]["携带物品1"]
	        D2 = JY.Person[27]["携带物品2"]
	        D3 = JY.Person[27]["携带物品3"]
	        D4 = JY.Person[27]["携带物品4"]
	        JY.Person[27]["携带物品1"] = -1
	        JY.Person[27]["携带物品2"] = -1
	        JY.Person[27]["携带物品3"] = -1
	        JY.Person[27]["携带物品4"] = -1
	        say("１最强人物模拟战斗影像－－－－Ｈ第一场：张三丰对决东方不败", 300, 0, "软体娃娃")
	        WarMain(229)
	        say("１最强人物模拟战斗影像－－－－Ｈ第二场：张三丰对决扫地神僧", 300, 0, "软体娃娃")
	        WarMain(230)
	        say("１最强人物模拟战斗影像－－－－Ｈ第三场：张三丰对决萧峰", 300, 0, "软体娃娃")
	        WarMain(231)
	        say("１最强人物模拟战斗影像－－－－Ｈ第四场：东方不败对决萧峰", 300, 0, "软体娃娃")
	        WarMain(232)
	        say("１最强人物模拟战斗影像－－－－Ｈ第五场：东方不败对决扫地神僧", 300, 0, "软体娃娃")
	        WarMain(233)
	        say("１最强人物模拟战斗影像－－－－Ｈ第六场：萧峰对决扫地神僧", 300, 0, "软体娃娃")
	        WarMain(234)
	        JY.Person[50]["携带物品1"] = X1
	        JY.Person[50]["携带物品2"] = X2
	        JY.Person[50]["携带物品3"] = X3
	        JY.Person[50]["携带物品4"] = X4
	        JY.Person[5]["携带物品1"] = Z1
	        JY.Person[5]["携带物品2"] = Z2
	        JY.Person[5]["携带物品3"] = Z3
	        JY.Person[5]["携带物品4"] = Z4
	        JY.Person[27]["携带物品1"] = D1
	        JY.Person[27]["携带物品2"] = D2
	        JY.Person[27]["携带物品3"] = D3
	        JY.Person[27]["携带物品4"] = D4
	      else
	        instruct_14()
	        instruct_13()
	      end
	      say("１太强了！我好像领悟到什么了..........")
	      if GetS(10, 0, 6, 0) == 1 and GetS(4, 5, 5, 5) ~= 8 then
	        JY.Person[0]["武功2"] = 91
	        JY.Person[0]["武功等级2"] = 900
	        JY.Wugong[91]["名称"] = "风林火山功"
	        JY.Wugong[91]["攻击力10"] = 1300
	        JY.Wugong[91]["武功动画&音效"] = 6
	        DrawStrBox(-1, -1, "主角学会绝技--风林火山功", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(2000)
	        Cls()
	        DrawStrBox(-1, -1, "主角获得称号--觉醒之苍龙", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(2000)
	        SetS(10, 0, 12, 0, 1)
	        SetD(43, 4, 2, 0)
	        say("１其实你的力量还可以进一步觉醒！要想得到最后的能力，就去见那个人吧！偶已经把封印之卷轴交给他了！他会指引你完成最后的试炼！", 300, 0, "软体娃娃")
	      else
	        JY.Person[0][PSX[33]] = JY.Person[0][PSX[33]] + 30
	        JY.Person[0][PSX[35]] = JY.Person[0][PSX[35]] + 30
	        JY.Person[0][PSX[34]] = JY.Person[0][PSX[34]] + 30
	        DrawStrBox(-1, -1, "主角攻防轻能力各提升30点", C_ORANGE, CC.DefaultFont)
	        ShowScreen()
	        lib.Delay(1000)
	        SetD(43, 4, 2, 314)
	        if T1LEQ(0) then
	          JY.Person[0]["武学常识"] = 100
	          QZXS("零二七的武学常识提升至100")
	          QZXS("获得称号：真苍半无双")
	        end
	        if T2SQ(0) then
	        	QZXS("水镜四奇的左右互搏机率提升")
	      	end
	      end
	      
	      say("１很好，偶的任务完成了，再见！", 300, 0, "软体娃娃")
	      SetS(10, 0, 7, 0, 1)
	      instruct_3(80, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	    else
	    	say("１嗯，好像还不是时候，再去江湖上闯荡一番再来吧！", 300, 0, "软体娃娃")
	  	end
	  end
  end
end
--挑战张三丰，得到六如
function NEvent8(keypress)
  if JY.SubScene == 43 and GetS(10, 0, 12, 0) == 1 and JY.Base["人X1"] == 17 and JY.Base["人Y1"] == 27 and JY.Base["人方向"] == 2 and keypress == VK_SPACE then
    say("１你终于来了！很简单，战胜老夫，即可得到最后的力量！准备好了吗？", 5)
    say("１Ｒ（......也不知道那个阮娲为什么要老夫跟这小子过两招！只听她说在她和这小子的那个空间中有很多人觉得老夫很弱！也罢，那就来玩玩吧！）", 5)
    if DrawStrBoxYesNo(-1, -1,"要挑战吗？", C_WHITE, CC.DefaultFont) then
      if WarMain(22) then
        PlayMIDI(3)
        say( "１好功夫！这是阮娲留给你的卷轴，拿去吧！", 5)
        say("１呼，终于到手了！真不容易啊！这老道功夫的确了得！看看这卷轴的内容----")
        say("９............８..........７..........６..........５..........４..........３..........２..........１我懂了！！！")
        DrawStrBoxWaitKey(string.format("%s领悟六如苍龙诀", JY.Person[0]["姓名"]), C_ORANGE, CC.DefaultFont)
        JY.Wugong[91]["名称"] = "六如苍龙诀"
        JY.Wugong[91]["攻击力10"] = 1600
        SetS(10, 0, 12, 0, 0)
        SetD(43, 4, 2, 314)
        SetS(10, 0, 11, 0, 1)
        SetS(80, 48, 36, 3, 100)
        instruct_3(80, 100, 0, 0, 0, 0, 2002, 0, 0, 0, 0, -2, -2)
        say("１行了，你已经领悟了！继续去完成你的使命吧！", 5)
        
      else
      	say("１还缺点火候，下次再来吧！", 5)
      end
    else
    	say("１随时可以再来！老夫恭候！", 5)
    end
  end
end
--武道大会，直接挑战十五大
function NEvent9(keypress)
  if JY.SubScene == 25 and GetS(10, 0, 8, 0) ~= 1 and GetD(25, 74, 5) == 2610 then
    SetS(25, 40, 33, 3, 101)
    instruct_3(25, 101, 1, 0, 0, 0, 0, 6824, 6824, 6824, 0, -2, -2)
  end
  if JY.Base["人X1"] == 41 and JY.Base["人Y1"] == 33 and JY.Base["人方向"] == 2 and keypress == VK_SPACE then
    say("１是否想直接挑战十五大高手？", 300, 0, "软体娃娃")
    if DrawStrBoxYesNo(-1, -1, "要直接挑战吗？", C_ORANGE, CC.DefaultFont) then
      if JY.Person[0]["品德"] > 50 then
        if WarMain(133) then
          say("１恭喜你战胜了十五大，那么－－－－", 300, 0, "软体娃娃")
          instruct_14()
          JY.Base["人X1"] = 11
          JY.Base["人Y1"] = 44
          instruct_13()
          SetS(10, 0, 8, 0, 1)
          instruct_3(25, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
          instruct_3(25, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
        end
	    else
	      if WarMain(134) then
	        say("１恭喜你战胜了十五大，那么－－－－", 300, 0, "软体娃娃")
	        instruct_14()
	        JY.Base["人X1"] = 11
	        JY.Base["人Y1"] = 44
	        instruct_13()
	        SetS(10, 0, 8, 0, 1)
	        instruct_3(25, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	        instruct_3(25, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
	      end
    	end
  	else
    	say("１那就请上擂台吧！", 300, 0, "软体娃娃")
    end
  end
end
--武道大会后，SYP自动放书
function NEvent10(keypress)
  if JY.SubScene == 25 and GetS(10, 0, 9, 0) ~= 1 then
    SetS(25, 9, 44, 3, 103)
    instruct_3(25, 103, 1, 0, 0, 0, 0, 7100, 7100, 7100, 0, -2, -2)
    if JY.Base["人X1"] == 10 and JY.Base["人Y1"] == 44 and JY.Base["人方向"] == 2 and keypress == VK_SPACE and GetD(25, 82, 5) == 4662 then
      say("１一路来到这里，真是辛苦了！Ｈ偶是 syp！大虾请休息一下，让偶来帮你放书吧！", 300, 0, "SYP")
      instruct_14()
      for i = 79, 92 do
        if i ~= 82 then
          instruct_3(25, i, 1, 0, 0, 0, 0, 4664, 4664, 4664, 0, -2, -2)
        end
      end
      for ii = 144, 157 do
        if ii ~= 147 then
          instruct_32(ii, -1)
        end
      end
      instruct_13()
      say("１好了，其它的书都放好了！这本天龙八部你自已去放吧，这是偶最喜欢的天书！再见了！", 300, 0, "SYP")
      SetS(10, 0, 9, 0, 1)
      instruct_3(25, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
    end
    for i = 79, 92 do
      if GetD(25, i, 5) ~= 4662 then
        SetS(10, 0, 9, 0, 1)
        instruct_3(25, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
      end
    end
  end
end
--钓鱼岛 阿朱
function NEvent11(keypress)
  if JY.SubScene == 104 and JY.Person[104]["姓名"] ~= "阿朱 " then
    instruct_3(104, 91, 1, 0, 0, 0, 0, 6086, 6086, 6086, 0, -2, -2)
  end
  if JY.SubScene == 104 and JY.Base["人X1"] == 42 and JY.Base["人Y1"] == 38 and JY.Base["人方向"] == 0 and keypress == VK_SPACE and GetD(104, 91, 0) == 1 then
    say("１辽国皇帝耶律洪基即将进军中原，萧大哥在尽力想法劝阻，所以无法赶来相助，这是他让我交给你的东西", 104)
    instruct_2(8, 10)
    say("１我要回去帮助萧大哥了，再见！", 104)
    instruct_3(104, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2, -2)
    JY.Person[104]["姓名"] = "阿朱 "
  end
end
--大功坊 和袁承志对话后，金蛇剑归还
function NEvent12(keypress)
  if JY.SubScene == 95 and GetD(95, 4, 5) ~= 0 and JY.Thing[40]["使用人"] ~= -1 then
    JY.Person[JY.Thing[40]["使用人"]]["武器"] = -1
    JY.Thing[40]["使用人"] = -1
    JY.Thing[40]["加轻功"] = 10
    JY.Thing[40]["加攻击力"] = 20
  end
end

function mm4R()
  local r = nil
  if JY.Thing[202][WZ7] == 1 then
    r = math.random(2)
  else
    r = math.random(4)
  end
  local bdnl = {"姓名", "头像代号", "生命最大值", "内力最大值", "内力性质", "攻击力", "轻功", "防御力", "拳掌功夫", "御剑能力", "耍刀技巧", "特殊兵器", "资质", "武功1"}
  local mm4 = {}
  mm4[1] = {"周芷若", 301, 350, 600, 0, 60, 50, 50, 30, 30, 0, 0, 71, 41}
  mm4[2] = {"赵敏", 302, 270, 500, 1, 70, 40, 50, 0, 40, 0, 0, 78, 37}
  mm4[3] = {"郭襄", 303, 200, 500, 2, 40, 40, 40, 20, 20, 20, 20, 73, 12}
  mm4[4] = {"陆无双", 304, 400, 700, 0, 70, 40, 60, 0, 0, 40, 0, 64, 54}
  for i = 1, 14 do
    JY.Person[92][bdnl[i]] = mm4[r][i]
  end
  JY.Person[92]["等级"] = 10
  for i = 1, 5 do
    JY.Person[92]["出招动画帧数" .. i] = 0
    JY.Person[92]["出招动画延迟" .. i] = 0
    JY.Person[92]["武功音效延迟" .. i] = 0
  end
  local avi = {
{14, 6, 7}, 
{8, 3, 4}, 
{0, 0, 0}, 
{7, 4, 5}}
  JY.Person[92]["出招动画帧数1"] = avi[r][1]
  JY.Person[92]["出招动画延迟1"] = avi[r][3]
  JY.Person[92]["武功音效延迟1"] = avi[r][2]
  if r == 3 then
    local s = {
{0, 0, 0}, 
{9, 2, 3}, 
{8, 3, 4}, 
{8, 3, 4}, 
{9, 5, 6}}
    for i = 1, 5 do
      JY.Person[92]["出招动画帧数" .. i] = s[i][1]
      JY.Person[92]["出招动画延迟" .. i] = s[i][3]
      JY.Person[92]["武功音效延迟" .. i] = s[i][2]
    end
  end
end