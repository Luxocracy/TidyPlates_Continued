local L = LibStub("AceLocale-3.0"):NewLocale("NeatPlates", "zhCN")
if not L then return end


L = L or {}
L["%yellow%Holding down %blue%Shift %yellow%while clicking %red%Reset Configuration %yellow%will clear your saved settings, AND reload the user interface."] = "%yellow%按住 %blue%Shift %yellow%同时点击 %red%重置选项  %yellow%将清除您的已保存的设置，并重新加载用户界面。"
L["%yellow%Resetting %orange%Neat Plates%yellow% Theme Selection to Default"] = "%yellow%重置 %orange%Neat Plates%yellow% 主题选项为默认值"
L["A profile with this name already exists, do you wish to overwrite it?"] = "配置文件名称已经存在，是否覆盖？"
L["Active"] = "当前专精"
L["Active/Damaged Units"] = "激活/受伤的目标"
L["Add Profile"] = "创建配置文件"
L["Additional Auras:"] = "额外法术效果："
L["All NPCs"] = "所有NPC"
L["All Units"] = "所有单位"
L["Allows some CVars to work(Might require a /reload)"] = "允许使用若干关于缩放的游戏内建CVar（可能需要/reload）"
L["Always keep Target Nameplate on Screen"] = "始终保持姓名板可见"
--[[Translation missing --]]
L["Amount of Emphasized Auras:"] = "Amount of Emphasized Auras:"
L["Approximate Health"] = "近似血量"
L["Are you sure you wish to delete the profile '%1'?"] = "是否删除配置文件 '%1'？"
L["Arena ID"] = "竞技场ID"
L["Arena ID, Health, and Power"] = "竞技场ID,血量和能量"
L["Attacking another Tank"] = "正在攻击其他坦克"
L["AURA_TIP"] = "友情提示: |cffCCCCCC请填写法术的确切名称，或法术ID编号。你可以添加前缀'My'或'All'用来区分个人法术或全局法术。添加前缀'Not'可用来添加法术监控黑名单。法术监控按从上到下的顺序优先显示。"
L["Auto (Color Swap)"] = "自动(随专精切换)"
L["Automation"] = "自动化"
L["Blizzard Nameplate Motion & Visibility..."] = "打开暴雪姓名板设置..."
L["Blizzlike"] = "暴雪风格"
L["Border Color"] = "边框颜色"
L["Border/Warning Glow"] = "边框/警告提示"
L["Buffs & Debuffs"] = "法术效果"
L["By Class"] = "按职业"
L["By Health"] = "按血量"
L["By Level Color"] = "按等级颜色"
L["By Normal/Elite/Boss"] = "按普通/精英/首领"
L["By Reaction"] = "按单位反应"
L["By Threat"] = "按仇恨"
L["Cast Bar Colors:"] = "施法条颜色："
L["Cast Bars"] = "施法条"
L["Categories"] = "目录"
L["Clear Cache"] = "清理缓存"
L["Clickable Height of Nameplates"] = "点击范围高度"
L["Clickable Width of Nameplates"] = "点击范围宽度"
L["Clickthrough"] = "点击穿越"
L["Color of the border highlight"] = "高亮边框时使用的颜色"
L["Color Select"] = "颜色选择"
L["Compact (May require UI reload to take effect)"] = "紧凑(可能需要重载UI)"
L["Copy Profile"] = "复制配置文件"
L["Current Target Opacity:"] = "当前目标透明度："
L["Curse"] = "诅咒"
L["Custom Color Conditions:"] = "自定义血条颜色："
L["CUSTOM_COLOR_CONDITION_TIP"] = [=[友情提示: |cffCCCCCC以十六进制表示颜色值，再在后面添加自定义条件:
- 单位名称
- BUFF名称或ID
- DEBUFF名称或ID
- 血量阀值（如：30%）
格式：#FFFFFF 自定义条件
|cffff9320自上而下优先排序]=]
L["Default"] = "默认"
L["Default Profile"] = "默认配置文件"
L["Disable Cast Bars"] = "禁用施法条"
L["Disease"] = "疾病"
L["Display beneficial auras that can be removed by Dispel/Purge"] = "显示可以被驱散/净化的增益效果。"
L["Display Buffs that have been applied by you"] = "显示你所施放的增益效果。"
L["Display Debuffs that have been applied by you"] = "显示你所施放的负面效果。"
L["Display Enrage effects that can be removed by Soothe"] = "显示可以通过安抚驱散的激怒效果"
L["Do not import settings from TidyPlatesContinued. And do not show this message again."] = "不要从TidyPlatesContinued导入设置，并且不要再显示此消息。"
L["Do you really want to make '%1' the default profile?"] = "是否确定要将'％1'设为默认配置文件？"
L["Don't show this again"] = "不再显示"
L["DPS/Healer"] = "伤害输出/治疗者"
L["Elite Units"] = "精英目标"
L["Emphasize Hides Normal Aura"] = "高亮时隐藏普通法术效果"
L["Emphasized Auras:"] = "高亮的法术效果："
L["Enable Aura Widget"] = "启用法术效果组件"
L["Enable Healer Warning Glow"] = "启用治疗者警告提示"
L["Enable Pandemic Highlighting"] = "启用持续效果提示"
L["Enable Title Caching"] = "启用标题缓存"
L["Enable Warning Glow"] = "启用仇恨警告提示"
L["Enemy Bar Color:"] = "敌方血条颜色："
L["Enemy Headline Color:"] = "敌方姓名颜色："
L["Enemy Headline Subtext:"] = "敌方信息文字："
L["Enemy Health Bars:"] = "敌方血条："
L["Enemy Name Color:"] = "敌方姓名颜色："
L["Enemy Nameplates:"] = "敌方姓名板："
L["Enemy Spotlight Mode:"] = "敌方高亮模式："
L["Enemy Status Text:"] = "敌方信息文字:"
L["Everything"] = "所有"
L["Exact Health"] = "精确血量"
L["Exclude Instances"] = "副本除外"
L["Filter By Unit Name:"] = "按名字过滤："
L["Filter Enemy NPC"] = "过滤敌方NPC"
L["Filter Friendly NPC"] = "过滤友方NPC"
L["Filter Inactive"] = "过滤未激活的单位"
L["Filter Mini-Mobs"] = "过滤杂兵"
L["Filter Neutral Units"] = "过滤中立单位"
L["Filter Non-Elite"] = "过滤非精英单位"
L["Filter Non-Titled Friendly NPC"] = "过滤无标题的友方NPC"
L["Filter Players"] = "过滤玩家"
L["Filtered Unit Opacity:"] = "被过滤单位的透明度："
L["Filtered Unit Scale:"] = "被过滤单位的缩放："
L["First Spec"] = "第一专精"
L["Force Bars on Targets"] = "文本模式下显示当前目标血条"
L["Force Headline on Mini-Mobs"] = "杂兵以文本模式显示"
L["Force Headline on Neutral Units"] = "中立单位以文本模式显示"
L["Force Headline while Out-of-Combat"] = "脱战后以文本模式显示"
L["Force Multi-Lingual Font (Requires /reload)"] = "强制多语言字体(需要 /reload)"
L["Fourth Spec"] = "第四专精"
L["Friendly Bar Color:"] = "友方血条颜色："
L["Friendly Headline Color:"] = "友方姓名颜色："
L["Friendly Headline Subtext:"] = "友方信息文字："
L["Friendly Health Bars:"] = "友方血条："
L["Friendly Name Color:"] = "友方姓名颜色："
L["Friendly Nameplates:"] = "友方姓名板："
L["Friendly NPC"] = "友方NPC"
L["Friendly Player"] = "友方玩家"
L["Friendly Spotlight Mode:"] = "友方高亮透明度模式："
L["Friendly Status Text:"] = "友方信息文字："
L["Funky Stuff"] = "高级设置"
L["General Aura Filters"] = "通用法术效果过滤"
L["Glow"] = "闪光"
L["Group Member Aggro"] = "高亮团队成员的仇恨"
L["Guild Member"] = "公会成员"
L["Headline View (Text-Only)"] = "标题框架显示（纯文字）"
L["Headline View (Text-Only):"] = "标题框架（纯文字）："
L["Health"] = "血量"
L["Health Bar Color"] = "血条颜色"
L["Health Bar Color:"] = "血条颜色："
L["Health Bar View"] = "血条框架显示"
L["Health Bar View:"] = "血条框架："
L["Health Bar Width (%)"] = "血条宽度(%)"
L["Health Colors:"] = "血量颜色："
L["Health Deficit"] = "血量损失"
L["Health Total & Percent"] = "血量与百分比"
L["Hide when Combat starts, Show when Combat ends"] = "进入战斗隐藏，离开战斗显示"
L["Hides the regular aura from the aura widget if it is currently emphasized"] = "如果有法术效果处于高亮，则隐藏其他普通效果。"
L["High Health"] = "高血量"
L["High Health Threshold:"] = "高血量阈值："
L["Highlight auras when they have less than 30% of their original duration remaining"] = "高亮持续时间少于30%的法术效果。"
L["Highlight Group Members holding Aggro"] = "高亮团队成员的仇恨"
L["Highlight Mobs on Off-Tanks"] = "高亮对副坦克的仇恨"
L["Hostile NPC"] = "敌方NPC"
L["Hostile Player"] = "敌方玩家"
L["Icon Style:"] = "图标样式："
L["Ignore Inactive Units"] = "忽略非激活单位"
L["Ignore Neutral Units"] = "忽略中立单位"
L["Ignore Non-Elite Units"] = "忽略非精英单位"
L["Import Settings from TidyPlatesContinued."] = "从TidyPlatesContinued导入设置。"
L["Import TPC Settings"] = "导入TPC设置"
L["IMPORT_PROMPT_TEXT"] = [=[您似乎同时运行Neat Plates和Tidy Plates Continued。
是否要将TPC的配置文件导入到Neat Plates？
 
（导入完成后将禁用TPC并重新加载UI。
同时您必须为专精重新选择配置文件，抱歉…）]=]
L["Include Dispellable Debuffs on Friendly Units"] = "包括在友方单位上可驱散的负面效果"
L["Include Enrage Buffs"] = "包括激怒效果"
L["Include My Buffs"] = "包括我的增益效果"
L["Include My Debuffs"] = "包括我的负面效果"
L["Include Purgeable Buffs"] = "包括可净化的效果"
L["Interrupted"] = "被打断"
L["Level"] = "等级"
L["Level and Approx Health"] = "等级和近似血量"
L["Low Health"] = "低血量"
L["Low Health Threshold:"] = "低血量阈值："
L["Magic"] = "魔法"
L["Makes the Nameplates non-interactable"] = "使姓名板不可交互"
L["Medium Health"] = "中等血量"
L["Might resolve some issues with health not updating properly"] = "可能会解决血量无法正确更新的问题"
L["Mode:"] = "模式："
L["Name Text Color"] = "姓名文字颜色"
L["Nameplate Horizontal Overlap"] = "水平堆叠间距"
L["Nameplate Max Distance"] = "姓名板显示距离"
L["Nameplate Motion & Visibility"] = "打开暴雪姓名板设置..."
L["Nameplate Style"] = "姓名板风格"
L["Nameplate Vertical Overlap"] = "垂直堆叠间距"
L["NeatPlates"] = "NeatPlates风格"
L["NeatPlatesTraditional"] = "NeatPlates经典风格"
L["Neutral"] = "中立"
L["No Automation"] = "不使用自动化"
L["None"] = "无"
L["Non-Target Opacity:"] = "非当前目标透明度："
L["Normal"] = "普通"
L["Normal Scale:"] = "一般缩放："
L["NPC Role"] = "NPC角色"
L["NPC Role, Guild"] = "NPC角色，公会"
L["NPC Role, Guild, or Level"] = "NPC角色，公会或等级"
L["NPC Role, Guild, or Quest"] = "NPC角色，公会或任务"
L["On Active/Damaged Units"] = "对激活/受伤目标"
L["On Bosses"] = "对首领"
L["On Damaged Units"] = "对受伤目标"
L["On Elite Units"] = "对精英目标"
L["On Enemy Healers"] = "对敌方治疗者"
L["On Enemy Units"] = "对敌方目标"
L["On Low-Health Units"] = "对低血量目标"
L["On NPC"] = "对NPC"
L["On NPCs"] = "对NPC"
L["On Party Members"] = "小队成员"
L["On Players"] = "对玩家"
L["On Raid Targets"] = "对团队标记目标"
L["Opacity"] = "透明度"
L["Other Colors:"] = "其他颜色："
L["Other Options"] = "其他设置"
L["Other Widgets"] = "其他组件"
L["Overlay"] = "覆盖模式"
L["Override Target/Spotlight Scale"] = "覆盖目标和高亮缩放"
L["Percent Health"] = "血量百分比"
L["Personal Resource Style:"] = "个人资源样式："
L["Players"] = "玩家"
L["Poison"] = "中毒"
L["Profile"] = "配置文件"
L["Profile Management"] = "配置文件管理"
L["Profile Name"] = "配置文件名称"
L["Profile Selection"] = "配置文件选择"
L["Quest"] = "任务"
L["Range:"] = "距离："
L["Reaction"] = "反应类型"
L["Remove Profile"] = "删除配置文件"
L["Reset Configuration"] = "重置选项"
L["Safe"] = "安全状态"
L["Scale"] = "缩放"
L["Scale Spotlight Mode:"] = "高亮缩放模式："
L["Second Spec"] = "第二专精"
L["SHORT_MILLION"] = "百万"
L["SHORT_ONE_HUNDRED_MILLION"] = "亿"
L["SHORT_TEN_THOUSAND"] = "万"
L["SHORT_THOUSAND"] = "千"
L["Show Absorb Bars"] = "显示吸收条"
L["Show during Combat, Hide when Combat ends"] = "进入战斗显示，离开战斗隐藏"
L["Show Elite Icon"] = "显示精英图标"
L["Show Enemy Class Art"] = "显示敌方职业图标"
L["Show Friendly Cast Bars"] = "显示友方施法条"
L["Show Friendly Class Art"] = "显示友方职业图标"
L["Show Interrupted Cast Bar"] = "显示打断状态"
L["Show Level"] = "显示等级"
L["Show on:"] = "显示在："
L["Show Party Range Warning"] = "显示队伍距离警告"
L["Show Personal Resource on Target"] = "在目标上显示玩家个人资源"
L["Show Quest Icon on Units"] = "显示任务目标"
L["Show Status Text on Active/Damaged Units"] = "激活/受伤的单位显示信息文字"
L["Show Status Text on Target & Mouseover"] = "在当前和鼠标指向单位显示信息文字"
L["Show Target Highlight"] = "高亮显示当前目标"
L["Show Threat Percentage"] = "显示仇恨百分比"
L["Show Totem Art"] = "显示图腾图标"
L["Show Tug-o-Threat Indicator"] = "显示仇恨指示器"
L["Show who Interrupted Cast"] = "显示打断者"
L["Sorry, can't delete the Default profile :("] = "抱歉，无法删除默认配置文件 :("
L["Space Between buffs & debuffs:"] = "Buff和Debuff的间距:"
L["Spotlight Casting Units"] = "高亮正在施法的单位"
L["Spotlight Mouseover"] = "高亮鼠标指向的单位"
L["Spotlight Mouseover Units"] = "高亮鼠标指向的单位"
L["Spotlight Opacity:"] = "高亮透明度："
L["Spotlight Raid Marked"] = "高亮团队标记目标"
L["Spotlight Scale:"] = "高亮缩放："
L["Spotlight Target Units"] = "高亮当前目标"
L["Stacking Nameplates"] = "堆叠姓名板"
L["Tank"] = "坦克"
L["Tapped Unit"] = "被接触的单位"
L["Target Of"] = "目标"
L["Target Only"] = "仅目标"
L["Text Color:"] = "文字颜色："
--[[Translation missing --]]
L["The amount of Emphasized auras that can be displayed at once"] = "The amount of Emphasized auras that can be displayed at once"
L[ [=[The amount of empty aura slots between Buffs & Debuffs.
Max value means they never share a row]=] ] = "增益与负面效果之间的间隔。最大值表示它们不会显示在同一行"
L["The profile '%1' already exists, try a different name."] = "配置文件 '%1' 已经存在，请尝试其他名称。"
L["The profile '%1' is now the Default profile."] = "'％1'现在是默认配置文件。"
L["The profile '%1' was successfully deleted."] = "配置文件 '%1' 已成功删除。"
L["The profile '%1' was successfully overwritten."] = "配置文件 '%1' 已成功覆盖。"
L["Theme"] = "主题"
L["Third Spec"] = "第三专精"
L["Threat"] = "仇恨"
L["Threat Colors:"] = "仇恨颜色："
L["Threat Mode:"] = "仇恨模式："
L["Tip"] = "提示"
L["Transition"] = "过渡状态"
L["Treat Focus as a Target"] = "焦点目标以当前目标样式显示"
L["Type of highlighting to use"] = "高亮边框时使用的类型"
L["Un-interruptible"] = "无法打断"
L["Unit Filter"] = "单位过滤"
L["Use Blizzard Font"] = "使用暴雪默认字体"
L["Use Blizzard Scaling"] = "使用游戏内建缩放"
--[[Translation missing --]]
L["Use Chinese Number Shortening"] = "Use Chinese Number Shortening"
L["Use Frequent Health Updates"] = "提高血条刷新频率"
L["Use Target Opacity When No Target Exists"] = "没目标时，使用当前目标透明度"
L["Vertical Position of Artwork: (May cause targeting problems)"] = "血条垂直位置: (可能会导致定位问题)"
L["Warning"] = "警告状态"
L["White"] = "白色"
L["Wide"] = "宽松"
L["yards"] = "码"
L["You need to specify a 'Profile Name'."] = "你需要先定义一个“配置文件名”。"
