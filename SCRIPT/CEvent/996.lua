--function oldevent_996()
    instruct_14();   --  14(E):场景变黑
    instruct_3(-2,-2,0,0,0,0,0,0,0,0,0,0,0);   --  3(3):修改事件定义:当前场景:当前场景事件编号
    instruct_13();   --  13(D):重新显示场景
    instruct_30(32,44,32,35);   --  30(1E):主角走动32-44--32-35
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_1(3825,266,0);   --  1(1):[???]说: 你的，狡猾狡猾的。我们的*，相互支援的，不能！
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_1(3826,245,1);   --  1(1):[???]说: 哈哈哈，大胆倭人，敢来犯*我中华。今日就让你们知道*中国人的厉害。
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_1(3827,266,0);   --  1(1):[???]说: 你的，一个人的，对手的不*是！队员的，找好！
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_30(32,35,32,42);   --  30(1E):主角走动32-35--32-42
    instruct_40(2);   --  40(28):改变主角站立方向2
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_1(3828,0,1);   --  1(1):[AAA]说: 大家都在摩拳擦掌，准备与*倭寇一决高下。我看这样吧*，每次由我来挑选队员，打*过一场的人就下去休息，下*一场战斗再从其他人中挑选*。这第一仗该选哪些人呢？
    instruct_0();   --  0(0)::空语句(清屏)
    instruct_21(50);   --  21(15):[乔峰]离队
    --全部队友离队
    for i,v in pairs(CC.AllPersonExit) do
      instruct_21(v[1]);   -- 离队      
    end
--end

