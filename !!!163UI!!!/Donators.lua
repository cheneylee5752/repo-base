local _, U1 = ...;
U1Donators = {}
local topNames = "奶瓶小裤衩-血色十字军,御箭乘风-贫瘠之地,瓜瓜哒-白银之手,顿顿丶-伊森利恩,闪亮的眼睛丶-死亡之翼,空灵道-回音山,叶心安-远古海滩,乱劈妖裁-菲拉斯,孤雨梧桐-风暴之怒,短腿肥牛-无尽之海,墨狱-金色平原,乱灬乱-伊森利恩,古麗古麗-死亡之翼,Monarch-霜之哀伤,砂锅大的锤-暗影之月,天之冀-白银之手,丶小酒鬼-无尽之海,血缈-血牙魔王,坚果别闹-燃烧之刃,殺画丶-凤凰之神,冰淇淋上帝-血色十字军,舞弥-奎尔丹纳斯,奔跑的猎手-熊猫酒仙,发骚的院长-燃烧之刃,詩月-血色十字军,海潮之声-白银之手,败家少爷-死亡之翼,不含防腐剂-诺森德,洛天丨凌風-烈焰峰,大江江米库-雷霆之王,Haatxl-无尽之海,幽幽花舞-贫瘠之地,蒋公子-死亡之翼,Majere-冰风岗,邪恶肥嘟嘟-卡德罗斯,落霞菲-罗宁";
local recentDonators = {["白银之手"] = "NZ,溢于言表,悟颜;NY,Thelazysong;NX,挥霍完再記念;NV,失矢之箭,冰熊老肥,十觴亦不醉,泉七羽;NS,柴骑,迪蒙韩德;NR,冈步吉,圣丶星洛;NO,退税,横扫饥饿,瓷器,斩骨刀,德物,温黛黛,无衍;NN,艾琳丶米莉;NM,灬粽子,英語老师,Amberlight;NL,浪氵氵;NK,云际;NJ,周英俊,黄釒脆皮鸡;NH,生活很单纯,神的那只手;NG,喵灬小汐",["诺兹多姆"] = "NY,Yuukiasuna",["格瑞姆巴托"] = "NY,三分情七分性,丨妙蛙种子丨;NX,大场由衣;NV,愿为消之;NU,肆意乀;NS,贝吉塔大人;NQ,Selenia;NP,咕喵汪,谜雾朦朦;NO,Smalldemon,卡塔库栗丶;NN,字节跳动;NM,北新桥;NJ,似風沒有歸宿,炫乂復仇,尛嫩魔,踏雪亦悠然;NI,令无情;NH,阿克门德;NG,坨克萨",["雷霆号角"] = "NY,炁殢源飗",["末日行者"] = "NY,荭烟儿;NT,战狼两千,灬炏灬;NR,嗨童靴,丿浮生丶;NI,Haddock,光头加暴击五,全场最佳镜头;NH,至高之魂",["丽丽（四川）"] = "NY,小喵爱吃鱼;NV,忆难忘;NG,沉梦扬志",["熊猫酒仙"] = "NY,龙之一箭,苦三瓜;NX,灬沐风丶,喵爫财神爫喵,喵爫福神爫喵;NV,冰冷刺骨;NU,官人不要停;NQ,Memorykill;NL,老孟莽的很,南木;NK,堕落中重生;NJ,腐中的神",["燃烧之刃"] = "NY,铁穹;NX,中华大丁丁,偶尔有阵雨丶;NW,卡拉赞大馆长;NV,铠尔萨斯,偶尔有阵雨;NT,Miyimo,祖安励志家,稀有的易墨,新手骑士;NR,元栀;NQ,心随流云;NP,我爱艳阳天;NO,丶笑魇無她;NN,煩惱遊戲;NM,蓝亍亍;NL,墨兽灬乘规;NJ,心想事成丶,石头超人;NI,Hayward,清流丶,七月半丶魍,天然元素",["桑德兰"] = "NY,芥末味花生豆",["凤凰之神"] = "NY,Tiann;NW,律律,泡面莫;NV,虫虫么么哒,小葱天上飞;NU,熊小觉,Paramours;NT,酥芬又有提升;NS,第五象限;NR,Buff;NQ,Acmenethil,Luoliss;NP,七指战神丶,小坏蛋面包,配上豆浆,冷冰凊,亥离,熙熙爸爸;NO,你的小阿飞;NN,雪野百香里;NM,丶妮狸,丶荭炎;NL,榴莲可爱多丶,安度嘤,绯色萝莉控,黑八兔;NK,橙窦窦,Misseeker;NJ,旧砚,张不理智;NI,朔风起时;NG,乁喵小娜,泪般清澈",["国王之谷"] = "NY,纱苍丶真菜;NV,丶孤独的信仰;NO,文竹;NI,丨荆轲丨",["克尔苏加德"] = "NY,毒奶丨猜猜;NU,丶火法;NT,维妮维妮;NM,硬派洋葱丶;NJ,铁骑丨后生儿;NI,叫我柳岩奶",["罗宁"] = "NY,老口味;NX,挽梦忆星辰;NW,菠萝菠萝幂丶;NT,艾酱的花朵;NQ,仙丶水;NP,唐梧桐;NN,妖的忏悔;NM,三鹿丹丶,赫娅;NL,丶沐雨澄风;NK,美眉啦啦队长;NH,廿拾贰",["伊森利恩"] = "NY,伊本丝萝;NV,长腿宇叔,时透无一郎;NU,梅花落了南山;NQ,Muos;NN,壹夏丨十年;NL,冰曦涗玥;NI,玉子酱,滑蛋鲜鸡粥;NH,浪漫太子",["回音山"] = "NY,冷月天星;NU,卖废柴的女孩;NM,快少;NH,雀实很嗨",["血色十字军"] = "NX,清辞,Miráge;NW,云巻云舒,暴戾萝莉满意;NV,村里的爷们;NU,雨辰青烟;NR,香蕉牛肉干;NQ,Momoniuniu;NM,有时看云罓;NL,花胧夕;NI,巨龙咆哮,王炸炸",["艾露恩"] = "NX,低调猎手三号",["风行者"] = "NX,搞不伶清",["主宰之剑"] = "NX,京溢囚茎;NW,木蘭;NV,虫虫归来,呆呆带师兄;NS,Bayonettaa,Nintendoo,独丨狼;NR,好咸丶;NQ,临阵乂磨枪,木兰骑;NN,花落果香;NM,墨寶寶;NK,葛德米斯达;NI,慎思;NH,丶达令丶,凤兮丶;NG,墨宝宝",["影之哀伤"] = "NX,无了敌炉了石,萨满东方;NU,許一卋歡顔;NS,伟霆宝宝丶;NR,表哥丶天枢;NM,火焰中的舞者;NL,奇横三,终于可以了;NK,丨御坂美琴,与兽丶為伍;NJ,錦衣乄南笙,蔷薇花冠;NH,三寶丶,全团的饲养员,全团的荣耀",["死亡之翼"] = "NX,尛芋头;NW,红尘灬紫陌,檸七丶;NV,安純;NU,夜阑听雨眠;NT,隔壁老舅,桃花大俠;NS,清水洗尘,欧丨湟,欧丨凰;NR,戮羽大圣;NQ,卡拉赞馆长;NO,剑刃风暴灬;NN,小苏妲水,浅唱低萤;NL,茶叶蛋叶子,好硬的象拔蚌,浪味仙乂,兔乄随;NK,梦断不成归,灰烬旋律,凉愁浅梦,甜蜜至臻时,丨莫笑丨;NJ,奶你一口甜;NI,撒欢哦,呆呆不盟;NH,伯牙鼓瑟,香蕉酱,泪流满面丶,醉炫;NG,陈信羽丶",["无尽之海"] = "NX,十二渠道急速;NW,晨曦大主教;NV,狂莽之灾;NR,小随意;NO,盾牌在手;NL,文风丧胆;NK,尛魄罗;NJ,丶懒妥妥;NI,聖骑士的斩杀,狗子丶",["万色星辰"] = "NX,無法潕天;NW,易利丹;NL,游侠灬",["风暴之鳞"] = "NX,童宝宝走了,童宝宝来了",["红龙军团"] = "NX,水果灬糖;NT,单点绿茶;NR,年月",["埃德萨拉"] = "NX,锕木,木糖灬醇;NP,憨憨牛;NM,红尘惹潇湘;NL,这齐齐真逗",["破碎岭"] = "NX,往事隨颩;NI,菲菲超人",["影牙要塞"] = "NW,轩辕小阳",["踏梦者"] = "NW,拉克斯乄戦;NV,星空下的我丶",["贫瘠之地"] = "NW,小浣熊香辣蟹;NU,Gundan;NS,花老师;NP,恩左斯丶成哥;NN,术之影;NM,Elfachilles,狩猪待兔;NL,冬吟秋;NJ,嚎嗨哟;NH,黑風野牛丶",["阿古斯"] = "NW,蝉师;NT,风之主宰者;NS,逆袭的欧皇;NQ,君见莲若惜丶;NN,Drphoenix;NM,骷髅教主",["冰风岗"] = "NW,张一山;NQ,巧莓奶渣;NM,周防尊,都听她的;NJ,德鲁丨,念一",["阿克蒙德"] = "NV,Angelimo;NJ,小滴滴",["索瑞森"] = "NV,拿不动盾牌",["安苏"] = "NU,皮埃及丶;NT,蓝色的汤姆丶,啊霖;NP,孟婆汤里的狗,桃子铯铯;NO,丶尛鱼,各种提升;NN,对面的猪别跑;NM,Tomom;NL,是星星啊丶,是月亮咩丶,盜賊丶丶;NK,丶威士忌;NJ,愚鱼浴雨;NG,黄超神",["日落沼泽"] = "NU,与谁共鸣",["拉文霍德"] = "NU,凛丶",["玛诺洛斯"] = "NU,迷失的小波",["天空之墙"] = "NU,艿茶爱原味;NN,爱原味奶茶",["霜之哀伤"] = "NT,丝瓜朴朴;NL,堇丶忆",["耐奥祖"] = "NT,阿鲁迪巴",["迦拉克隆"] = "NT,万宝绿;NM,影幽月舞;NK,艾莉的冷笑话",["安纳塞隆"] = "NS,爆炒辣蛤蜊",["巨龙之吼"] = "NR,Azreo",["金色平原"] = "NR,沃塔斯基;NN,糖一斤;NM,拉尔夫亚;NG,坏坏",["外域"] = "NR,桥本油菜",["狂热之刃"] = "NR,恐怖熊;NG,夜之盗圣",["燃烧平原"] = "NQ,搞不伶清",["???"] = "NQ,丨喷火龙丨;NP,薇薇安丶",["耳语海岸"] = "NQ,天怒雷帝",["布兰卡德"] = "NQ,面目全非德;NJ,浪漫撒加",["玛里苟斯"] = "NP,江南风云",["羽月"] = "NP,脚少小号",["迅捷微风"] = "NP,多情的打扰",["海克泰尔"] = "NP,惊无影;NI,抓个熊德;NH,四舅",["塞纳留斯"] = "NO,阿忒弥斯",["阿纳克洛斯"] = "NO,妹子没有沟;NL,蛮横的女圣骑;NI,莉莉斯",["奎尔萨拉斯"] = "NO,舊城半夏",["麦迪文"] = "NO,肉鸡冲蛋",["阿曼尼"] = "NO,聂哥虎背熊腰",["拉文凯斯"] = "NO,渝民丶",["龙骨平原"] = "NN,铁头黄毛",["麦姆"] = "NN,暴戾",["加尔"] = "NN,Juventus",["神圣之歌"] = "NN,一啸灬动千山",["暗影之月[TW]"] = "NN,愛吃饅頭",["雷斧堡垒"] = "NN,Jerryk",["冰霜之刃"] = "NM,李铁柱",["守护之剑"] = "NM,漠小舞,未曰",["寒冰皇冠"] = "NM,一秒的灿烂",["暗影之月"] = "NM,第一晚刀死你;NK,黯然飘渺",["埃克索图斯"] = "NM,丶烈风",["伊利丹"] = "NL,集合啦森友会",["黑铁"] = "NL,浑身是泪呃",["基尔加丹"] = "NL,装了逼就跑",["鬼雾峰"] = "NL,耙耳朵诺维奇;NG,邪恶蓝星",["熔火之心"] = "NL,似水鱼心",["雷霆之怒"] = "NK,芜菁沙袋;NJ,梦中的哀嚎",["奥尔加隆"] = "NK,白花瓷",["菲拉斯"] = "NK,Snavs",["风暴之怒"] = "NK,宝贝狼;NJ,青楼前徘徊",["洛丹伦"] = "NK,雷佳音",["永恒之井"] = "NJ,愿忧愁不再有",["希尔瓦娜斯"] = "NJ,壹叶知秋",["扎拉赞恩"] = "NJ,我喝大奶奶",["阿拉希"] = "NJ,飞翔的荷兰饼",["森金"] = "NI,榴芒小骑",["恶魔之魂"] = "NI,复仇丶阿宝",["阿尔萨斯"] = "NI,叶落尘封",["圣火神殿"] = "NI,橙子皮",["沙怒"] = "NH,黄杜鹃血族",["幽暗沼泽"] = "NH,桥本爱",["艾森娜"] = "NH,钢然小猎,钢然战神,钢然图腾",["诺莫瑞根"] = "NH,拝頭茻哀木梯",["诺森德"] = "NH,为何放弃治疗",["远古海滩"] = "NH,破釜沉舟",["海加尔"] = "NG,Mara",["伊瑟拉"] = "NG,永真"};
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

local topNamesOrder = {} for i, name in ipairs({ strsplit(',', topNames) }) do topNamesOrder[name] = i end

local pairs, ipairs, strsplit, format = pairs, ipairs, strsplit, format

local players, player_days = {}, {}
local base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
local function ConvertDonators(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            local date;
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i == 1 then
                    local dec = (base64:find(player:sub(1,1)) - 1) * 64 + (base64:find(player:sub(2,2)) - 1)
                    local y, m, d = floor(dec/12/31)+2018, floor(dec/31)%12+1, dec%31+1
                    date = format("%04d-%02d-%02d", y, m, d)
                else
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    if player_days[fullname] == nil then
                        table.insert(players, fullname)
                        player_days[fullname] = date
                    end
                end
            end
        end
    end
end
local function GetPlayerNames(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        for _, oneday in ipairs({strsplit(';', allday)}) do
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i > 1 then
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    player_shown[fullname] = topNamesOrder[fullname] or 0
                end
            end
        end
    end
end
GetPlayerNames(recentDonators)
GetPlayerNames(U1.historyDonators)

function U1Donators:CreateFrame()
    ConvertDonators(recentDonators)
    recentDonators = nil
    ConvertDonators(U1.historyDonators)
    U1.historyDonators = nil

    table.sort(players, function(a, b)
        local order1 = topNamesOrder[a] or 9999
        local order2 = topNamesOrder[b] or 9999
        if order1 ~= order2 then return order1 < order2 end
        local _, r1 = strsplit("-", a)
        local _, r2 = strsplit("-", b)
        if r1 ~= r2 then
            if r1 == '???' then return false
            elseif r2 == '???' then return true
            else return r1 < r2; end
        end
        local day1 = player_days[a]
        local day2 = player_days[b]
        if day1 ~= day2 then return day1 > day2 end
        return a < b
    end)
    -- 排完序就不需要了
    topNames = nil
    topNamesOrder = nil

    local f = WW:Frame("U1DonatorsFrame", UIParent, "BasicFrameTemplateWithInset"):Size(320, 500):TR(U1Frame, "TL", -10, 0):SetToplevel(1):SetFrameStrata("DIALOG")

    f.TitleText:SetText("爱不易的捐助者，谢谢你们")
    f.InsetBg:SetPoint("TOPLEFT", 4, -50)
    CoreUIMakeMovable(f)

    local scroll = CoreUICreateHybridStep1(nil, f(), nil, true, true, nil)
    WW(scroll):TL(f.InsetBg, 3, -3):BR(f.InsetBg, -2-21, 2):un() --:TL(3, -20)
    f.scroll = scroll

    local headn = TplColumnButton(f, nil, 22):SetWidth(108):SetText("玩家主角色"):SetScript("OnClick", noop):un()
    WW(headn:GetFontString()):SetFontHeight(14):un()
    local heads = TplColumnButton(f, nil, 22):SetWidth(80):SetText("服务器"):SetScript("OnClick", noop):un()
    WW(heads:GetFontString()):SetFontHeight(14):un()
    local headd = TplColumnButton(f, nil, 22):SetWidth(100):SetText("捐助时间"):SetScript("OnClick", noop):un()
    WW(headd:GetFontString()):SetFontHeight(14):un()
    CoreUIAnchor(f, "TOPLEFT", "TOPLEFT", 8, -30, "LEFT", "RIGHT", 0, 0, headn, heads, headd)

    local function fix_text_width(obj)
      obj:GetFontString():SetAllPoints()
    end

    scroll.creator = function(self, index, name)
      local row = WW(self.scrollChild):Button(name):LEFT():RIGHT():Size(0, 20)
      row:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]], 'ADD')

      row.name = row:Button():Size(100, 20):EnableMouse(false):SetButtonFont(U1FCenterTextMid):SetText(111):GetButtonText():SetJustifyH("Center"):up()
      row.server = row:Button():Size(75, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(111):GetButtonText():SetJustifyH("Right"):up()
      row.firstdate = row:Button():Size(90, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(333):GetButtonText():SetJustifyH("Right"):up()

      fix_text_width(row.name)
      fix_text_width(row.server)
      fix_text_width(row.firstdate)

      CoreUIAnchor(row, "LEFT", "LEFT", 5, 0, "LEFT", "RIGHT", 5, 0, row.name, row.server, row.firstdate)
      return row:un()
    end

    scroll.getNumFunc = function()
      return #players
    end

    scroll.updateFunc = function(self, row, index)
      row.index = index
      local name, realm = strsplit('-', players[index])
      row.name:SetText(name)
      row.server:SetText(realm)
      row.firstdate:SetText(player_days[players[index]]);
      --row.name:GetFontString():SetTextColor(1,1,1)
      --local date_fmt = '%Y/%m/%d'
      --local txt = date(date_fmt, time())
      --row.firstdate:SetText(txt)
    end

    CoreUICreateHybridStep2(scroll, 0, 0, "TOPLEFT", "TOPLEFT", 0)

    f:Hide()

    collectgarbage()
    return f()
end

CoreOnEvent("PLAYER_ENTERING_WORLD", function()
    local origs = {}
    local addMessageReplace = function(self, msg, ...)
        msg = msg and tostring(msg) or ""
        local h, t, part1, fullname, part2 = msg:find("(\124Hplayer:(.-):.-:.-:.-\124h%[)(\124c.........-\124r%]\124h)")
        if fullname and ((U1Donators and U1Donators.players[fullname]) or (U1STAFF and U1STAFF[fullname])) then
            --local _, height = self:GetFont()
            msg = msg:sub(1,h-1) .. part1 .. '\124TInterface\\AddOns\\!!!163UI!!!\\Textures\\UI2-logo:' .. (13) .. '\124t' .. part2 .. msg:sub(t+1);
        end
        origs[self](self, msg, ...)
    end
    WithAllChatFrame(function(cf)
        if cf:GetID() == 2 then return end
        origs[cf] = cf.AddMessage
        cf.AddMessage = addMessageReplace
    end)
    return "remove"
end)