local L = LibStub("AceLocale-3.0"):NewLocale("NeatPlates", "zhCN")
if not L then return end


L = L or {}
L["%yellow%Holding down %blue%Shift %yellow%while clicking %red%Reset Configuration %yellow%will clear your saved settings, AND reload the user interface."] = "%yellow%按住 %blue%Shift %yellow%同时点击 %red%重置选项  %yellow%将清除您的已保存的设置，并重新加载用户界面。"
L["%yellow%Resetting %orange%NeatPlates%yellow% Theme Selection to Default"] = "%yellow%重置 %orange%NeatPlates%yellow% 主题选项为默认值"
L["A profile with this name already exists, do you wish to overwrite it?"] = "配置文件名称已经存在，是否覆盖？"
L["Active"] = "激活"
L["Active Profile"] = "当前配置文件"
L["Active/Damaged Units"] = "激活/受伤的目标"
L["Add Profile"] = "创建配置文件"
L["Additional Auras"] = "额外法术效果"
L["Advanced"] = "高级模式"
L["All NPCs"] = "所有NPC"
L["All Units"] = "所有单位"
L["Allows some CVars to work(Might require a /reload)"] = "允许使用若干关于缩放的游戏内建CVar（可能需要/reload）"
L["Always keep Target Nameplate on Screen"] = "始终保持姓名板可见"
L["Amount of Emphasized Auras"] = "高亮法术效果数量"
L["Approximate Health"] = "近似血量"
L["Arcane"] = "奥术"
L["Are you sure you wish to delete the profile '%1'?"] = "是否删除配置文件 '%1'？"
L["Arena"] = "竞技场"
L["Arena ID"] = "竞技场ID"
L["Arena ID, Health, and Power"] = "竞技场ID,血量和能量"
L["Arrow(Left)"] = "箭头(左)"
L["Arrow(Right)"] = "箭头(右)"
L["Arrow(Sides)"] = "箭头(两侧)"
L["Arrow(Top)"] = "箭头(顶部)"
L["Attacking another Tank"] = "正在攻击其他坦克"
L["Aura Alignment"] = "法术效果对齐"
L["Aura Offsets"] = "法术效果位置"
L["Aura Scale"] = "法术效果缩放"
L["Aura Widget"] = "法术效果组件"
L["AURA_TIP"] = "友情提示: |cffCCCCCC请填写法术的确切名称，或法术ID编号。你可以添加前缀'My'或'All'用来区分个人法术或全局法术。添加前缀'Not'可用来添加法术监控黑名单。法术监控按从上到下的顺序优先显示。"
L["Auto (Color Swap)"] = "自动(随专精切换)"
L["Automation"] = "自动化"
L["Battleground"] = "战场"
L["Blizzard Nameplate Motion & Visibility..."] = "打开暴雪姓名板设置..."
L["Blizzlike"] = "暴雪风格"
L["Border Color"] = "边框颜色"
L["Border/Warning Glow"] = "边框/警告提示"
L["Boss"] = "首领"
L["Buff Filter"] = "Buff过滤器"
L["Buffs & Debuffs"] = "法术效果"
L["By Class"] = "按职业"
L["By Duration"] = "按持续时间"
L["By Health"] = "按血量"
L["By Level Color"] = "按等级颜色"
L["By Normal/Elite/Boss"] = "按普通/精英/首领"
L["By Reaction"] = "按单位反应"
L["By Threat"] = "按仇恨"
L["Cast Bar Colors"] = "施法条颜色"
L["Cast Bar Width (%)"] = "施法条宽度 (%)"
L["Cast Bars"] = "施法条"
L["Castbar Duration Style"] = "施法条持续时间风格"
L["Categories"] = "目录"
L["Center"] = "居中"
L["Class Icon"] = "职业图标"
L["Class Icon Scale Options"] = "职业图标缩放选项"
L["Clear Cache"] = "清理缓存"
L["Clear Spell Database"] = "清理法术数据库"
L["Cleared Spell Database of entries."] = "法术数据库条目已清空。"
L["Clickable Height of Nameplates"] = "点击范围高度"
L["Clickable Width of Nameplates"] = "点击范围宽度"
L["Clickthrough"] = "点击穿越"
L["Close Range"] = "近距离"
L["Color Cast Bars by School"] = "施法条显示法术类型颜色"
L["Color is defined under the 'Reaction' category."] = "颜色定义在目录“反应类型”下设置。"
L["Color of the border highlight"] = "高亮边框时使用的颜色"
L["Color Select"] = "颜色选择"
L["Combat"] = "战斗"
L["Compact (May require UI reload to take effect)"] = "紧凑(可能需要重载UI)"
L["Copy Profile"] = "复制配置文件"
L["Couldn't update the targets role."] = "无法更新目标角色"
L["Current Target Opacity"] = "当前目标透明度"
L["Curse"] = "诅咒"
L["Custom Color Conditions"] = "自定义血条颜色"
L["CUSTOM_COLOR_CONDITION_TIP"] = [=[友情提示: |cffCCCCCC以十六进制表示颜色值，再在后面添加自定义条件:
- 单位名称
- BUFF名称或ID
- DEBUFF名称或ID
- 血量阀值（如30%）
格式#FFFFFF 自定义条件
|cffff9320自上而下优先排序]=]
L["CVars could not applied due to combat"] = "战斗中无法更改CVar游戏参数"
L["Debuff Filter"] = "Debuff过滤器"
L["Default"] = "默认"
L["Default Profile"] = "默认配置文件"
L["Disable Cast Bars"] = "禁用施法条"
L["Disease"] = "疾病"
L["Display all auras that have been applied regardless of source or duration."] = "显示所有法术效果，无论施放者是谁或持续时间有多久。"
L["Display beneficial auras that can be removed by Dispel/Purge"] = "显示可以被驱散/净化的增益效果。"
L["Display Buffs that have been applied by you"] = "显示你所施放的增益效果。"
L["Display Debuffs that have been applied by you"] = "显示你所施放的负面效果。"
L["Display Enrage effects that can be removed by Soothe"] = "显示可以通过安抚驱散的激怒效果"
L["Display Scale Options"] = "显示缩放选项"
L["Do not import settings from TidyPlatesContinued. And do not show this message again."] = "不要从TidyPlatesContinued导入设置，并且不要再显示此消息。"
L["Do you really want to make '%1' the default profile?"] = "是否确定要将'%1'设为默认配置文件？"
L["Don't show this again"] = "不再显示"
L["DPS/Healer"] = "伤害输出/治疗者"
L["Dungeon"] = "地下城"
L["Elite"] = "精英"
L["Elite Units"] = "精英目标"
L["Emphasize Hides Normal Aura"] = "高亮时隐藏普通法术效果"
L["Emphasized Auras"] = "高亮的法术效果"
L["Emulate Target Nameplate"] = "模拟目标姓名板"
L["Enable Aura Widget"] = "启用法术效果组件"
L["Enable Healer Warning Glow"] = "启用治疗者警告提示"
L["Enable Pandemic Highlighting"] = "启用持续效果提示"
L["Enable Range Indicator"] = "启用距离指示器"
L["Enable Threat while Solo"] = "单刷时启用仇恨警告提示"
L["Enable Title Caching"] = "启用头衔缓存"
L["Enable Warning Glow"] = "启用仇恨警告提示"
L["Enemy Bar Color"] = "敌方血条颜色"
L["Enemy Headline Color"] = "敌方姓名颜色"
L["Enemy Headline Subtext"] = "敌方信息文字"
L["Enemy Health Bars"] = "敌方血条"
L["Enemy Name Color"] = "敌方姓名颜色"
L["Enemy Nameplates"] = "敌方姓名板"
L["Enemy Spotlight Mode"] = "敌方高亮模式"
L["Enemy Status Text"] = "敌方信息文字"
L["Enemy Subtext"] = "敌方副标题文字"
L["Enforce required CVars"] = "强制设定必要的CVar游戏参数"
L["Everything"] = "所有"
L["Exact Health"] = "精确血量"
L["Exclude Instances"] = "副本除外"
L["Exclude Minions"] = "杂兵除外"
L["Exclude Totems"] = "图腾除外"
L["Far Range"] = "远距离"
L["Filter By Unit Name"] = "按名字过滤"
L["Filter Enemy NPC"] = "过滤敌方NPC"
L["Filter Enemy Pets"] = "过滤敌方宠物"
L["Filter Enemy Players"] = "过滤敌方玩家"
L["Filter Friendly NPC"] = "过滤友方NPC"
L["Filter Friendly Pets"] = "过滤友方宠物"
L["Filter Friendly Players"] = "过滤友方玩家"
L["Filter Inactive"] = "过滤未激活的单位"
L["Filter Low Level Units"] = "过滤低等级单位"
L["Filter Mini-Mobs"] = "过滤杂兵"
L["Filter Neutral Units"] = "过滤中立单位"
L["Filter Non-Elite"] = "过滤非精英单位"
L["Filter Non-Party/Raid Members"] = "过滤非队伍/团队成员"
L["Filter Non-Titled Friendly NPC"] = "过滤无头衔的友方NPC"
L["Filter Party/Raid Members"] = "过滤队伍/团队成员"
L["Filtered Unit Opacity"] = "被过滤单位的透明度"
L["Filtered Unit Scale"] = "被过滤单位的缩放"
L["Fire"] = "火焰"
L["First Spec"] = "第一专精"
L["Focus Highlighting"] = "焦点高亮"
L["Focus Unit"] = "焦点单位"
L["Force Bars on Targets"] = "文本模式下显示当前目标血条"
L["Force Headline on Mini-Mobs"] = "杂兵以文本模式显示"
L["Force Headline on Neutral Units"] = "中立单位以文本模式显示"
L["Force Headline while Out-of-Combat"] = "脱战后以文本模式显示"
L["Force Multi-Lingual Font (Requires /reload)"] = "强制多语言字体(需要 /reload)"
L["Force Shadow on Status Text"] = "信息文字强制开启阴影"
L["Fourth Spec"] = "第四专精"
L["Friendly Bar Color"] = "友方血条颜色"
L["Friendly Headline Color"] = "友方姓名颜色"
L["Friendly Headline Subtext"] = "友方信息文字"
L["Friendly Health Bars"] = "友方血条"
L["Friendly Name Color"] = "友方姓名颜色"
L["Friendly Nameplates"] = "友方姓名板"
L["Friendly NPC"] = "友方NPC"
L["Friendly Player"] = "友方玩家"
L["Friendly Spotlight Mode"] = "友方高亮透明度模式"
L["Friendly Status Text"] = "友方信息文字"
L["Friendly Subtext"] = "友方副标题文字"
L["Frost"] = "冰霜"
L["Funky Stuff"] = "高级设置"
L["General Aura Filters"] = "通用法术效果过滤"
L["Glow"] = "闪光"
L["Group Member Aggro"] = "高亮团队成员的仇恨"
L["Guild Member"] = "公会成员"
L["Headline View (Text-Only)"] = "标题框架（纯文字）"
L["Health"] = "血量"
L["Health Bar Color"] = "血条颜色"
L["Health Bar View"] = "血条框架"
L["Health Bar Width (%)"] = "血条宽度(%)"
L["Health Colors"] = "血量颜色"
L["Health Deficit"] = "血量损失"
L["Health Total & Percent"] = "血量与百分比"
L["Healthbar"] = "显示血条"
L["Helps ensure that everything is working as intended by enforcing certain CVars"] = "强制设定某些CVar游戏参数以保证所有东西都能如预期的那样运作。"
L["Hide"] = "隐藏"
L["Hide Aura Duration"] = "隐藏持续时间"
L["Hide Aura Widget in Headline Mode"] = "不在标题模式中显示法术效果"
L["Hide Cooldown Spiral"] = "隐藏冷却动画"
L["Hides the aura widget when in 'Headline/Text-Only' mode"] = "不在“标题/仅文本”模式中显示法术效果"
L["Hides the Cooldown Spiral on Auras"] = "隐藏法术效果上的冷却动画"
L["Hides the duration text on Auras. (Use this if you want something like OmniCC to handle the aura durations."] = "隐藏法术效果上的持续时间文本。（如果你想要用Omnicc这样的插件来处理法术效果的持续时间，可以使用这个。）"
L["Hides the regular aura from the aura widget if it is currently emphasized"] = "如果有法术效果处于高亮，则隐藏其他普通效果。"
L["High Health"] = "高血量"
L["High Health Threshold"] = "高血量阈值"
L["Highlight auras when they have less than 30% of their original duration remaining"] = "高亮持续时间少于30%的法术效果。"
L["Highlight Group Members holding Aggro"] = "高亮团队成员的仇恨"
L["Highlight Mobs on Off-Tanks"] = "高亮对副坦克的仇恨"
L["HITBOX_TIP"] = "提示: |cffCCCCCC编辑这些值时会在血条上显示绿色的半透明图层，以方便识别区域大小。"
L["Holy"] = "神圣"
L["Hostile NPC"] = "敌方NPC"
L["Hostile Player"] = "敌方玩家"
L["Icon"] = "圆点"
L["Icon Style"] = "图标样式"
L["Ignore Inactive Units"] = "忽略非激活单位"
L["Ignore Neutral Units"] = "忽略中立单位"
L["Ignore Non-Elite Units"] = "忽略非精英单位"
L["Import Settings from TidyPlatesContinued."] = "从TidyPlatesContinued导入设置。"
L["Import TPC Settings"] = "导入TPC设置"
L["IMPORT_PROMPT_TEXT"] = [=[您似乎同时运行NeatPlates和Tidy Plates Continued。
是否要将TPC的配置文件导入到NeatPlates？
 
（导入完成后将禁用TPC并重新加载UI。
同时您必须为专精重新选择配置文件，抱歉…）]=]
L["Include Dispellable Debuffs on Friendly Units"] = "包括在友方单位上可驱散的负面效果"
L["Include Enrage Buffs"] = "包括激怒效果"
L["Include Purgeable Buffs"] = "包括可净化的效果"
L["Interrupted"] = "被打断"
L["Left"] = "居左"
L["Level"] = "等级"
L["Level and Approx Health"] = "等级和近似血量"
L["Line"] = "直线"
L["Low Health"] = "低血量"
L["Low Health Threshold"] = "低血量阈值"
L["Magic"] = "魔法"
L["Makes the Nameplates non-interactable"] = "使姓名板不可交互"
L["Medium Health"] = "中等血量"
L["Melee Range"] = "近战距离"
L["Mid Range"] = "中距离"
L["Might require a '/reload' to display correctly"] = "可能需要用 /reload 命令重载界面才能正常显示"
L["Might resolve some issues with health not updating properly"] = "可能会解决血量无法正确更新的问题"
L["Mode"] = "模式"
L["Mouseover Highlighting"] = "鼠标指向高亮"
L["Mouseover Unit"] = "鼠标悬停单位"
L["Name Text Color"] = "姓名文字颜色"
L["Nameplate Horizontal Overlap"] = "水平堆叠间距"
L["Nameplate Max Distance"] = "姓名板显示距离"
L["Nameplate Motion & Visibility"] = "打开暴雪姓名板设置..."
L["Nameplate Style"] = "姓名板风格"
L["Nameplate Vertical Overlap"] = "垂直堆叠间距"
L["Nature"] = "自然"
L["NeatPlates"] = "NeatPlates风格"
L["NeatPlatesTraditional"] = "NeatPlates经典风格"
L["Neutral"] = "中立"
L["No Automation"] = "不使用自动化"
L["None"] = "无"
L["Non-Target Opacity"] = "非当前目标透明度"
L["Normal"] = "普通"
L["Normal Scale"] = "一般缩放"
L["NPC Role"] = "NPC角色"
L["NPC Role, Guild"] = "NPC角色，公会"
L["NPC Role, Guild, or Level"] = "NPC角色，公会或等级"
L["NPC Role, Guild, or Quest"] = "NPC角色，公会或任务"
L["Offset X"] = "水平位置"
L["Offset Y"] = "垂直位置"
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
L["Only uses the 'Mid Range' & 'Out of Range' colors to indicate unit range"] = "仅使用“中距离”和“超出范围”两种颜色指示单位距离"
L["Opacity"] = "透明度"
L["Other Colors"] = "其他颜色"
L["Other Options"] = "其他设置"
L["Other Widgets"] = "其他组件"
L["Out of Range"] = "超出范围"
L["Outline Override"] = "调整边框风格"
L["Overlay"] = "覆盖模式"
L["Override Target/Spotlight Scale"] = "覆盖目标和高亮缩放"
L["Party Member"] = "队友"
L["Percent Health"] = "血量百分比"
L["Percent Health (Colored)"] = "血量百分比 (彩色)"
L["Personal Resource Style"] = "个人资源样式"
L["Physical"] = "物理"
L["Players"] = "玩家"
L["Poison"] = "中毒"
L["Profile"] = "配置文件"
L["Profile Management"] = "配置文件管理"
L["Profile Name"] = "配置文件名称"
L["Profile Selection"] = "配置文件选择"
L["Quest"] = "任务"
L["Raid"] = "团队副本"
L["Range Indicator"] = "距离指示器"
L["Range Indicator Colors"] = "距离指示器颜色"
L["Range Threshold"] = "距离阈值"
L["Reaction"] = "反应类型"
L["Remove Profile"] = "删除配置文件"
L["Requires 'All NPCs' to be unchecked"] = "需要取消勾选“所有NPC”"
L["Reset Configuration"] = "重置选项"
L["Right"] = "居右"
L["Safe"] = "安全状态"
L["Scale"] = "缩放"
L["Scale based on distance"] = "根据距离缩放指示器大小"
L["Scale Spotlight Mode"] = "高亮缩放模式"
L["Scale X"] = "水平缩放"
L["Scale Y"] = "垂直缩放"
L["Scenario"] = "事件"
L["Second Spec"] = "第二专精"
L["Shadow"] = "暗影"
L["SHORT_MILLION"] = "M"
L["SHORT_ONE_HUNDRED_MILLION"] = "亿"
L["SHORT_TEN_THOUSAND"] = "万"
L["SHORT_THOUSAND"] = "K"
L["Show"] = "显示"
L["Show Absorb Bars"] = "显示吸收条"
L["Show All"] = "全部显示"
L["Show Different Server Indicator (*)"] = "显示不同服务器指示器（*）"
L["Show Elite Icon"] = "显示精英图标"
L["Show Enemy Class Art"] = "显示敌方职业图标"
L["Show Friendly Cast Bars"] = "显示友方施法条"
L["Show Friendly Class Art"] = "显示友方职业图标"
L["Show Interrupted Cast Bar"] = "显示打断状态"
L["Show Mine"] = "我施放的"
L["Show None"] = "全部隐藏"
L["Show on"] = "显示在"
L["Show Personal Resource on Target"] = "在目标上显示玩家个人资源"
L["Show Quest Icon on Units"] = "显示任务目标"
L["Show Spell Icon"] = "显示法术图示"
L["Show Status Text on Active/Damaged Units"] = "激活/受伤的单位显示信息文字"
L["Show Status Text on Target & Mouseover"] = "在当前和鼠标指向单位显示信息文字"
L["Show Subtext in Bar View"] = "在血条框架上显示副标题"
L["Show Target Highlight"] = "高亮显示当前目标"
L["Show Threat Percentage"] = "显示仇恨百分比"
L["Show Totem Art"] = "显示图腾图标"
L["Show Tug-o-Threat Indicator"] = "显示仇恨指示器"
L["Show Unit Title"] = "显示单位头衔"
L["Show who Interrupted Cast"] = "显示打断者"
L["Simple"] = "简单模式"
L["Sorry, can't delete the Default profile :("] = "抱歉，无法删除默认配置文件 :("
L["Sorting Mode"] = "排序方式"
L["Space Between buffs & debuffs"] = "Buff和Debuff的间距"
L["Spell School Colors"] = "法术类型颜色"
L["Spotlight Casting Units"] = "高亮正在施法的单位"
L["Spotlight Mouseover"] = "高亮鼠标指向的单位"
L["Spotlight Mouseover Units"] = "高亮鼠标指向的单位"
L["Spotlight Opacity"] = "高亮透明度"
L["Spotlight Raid Marked"] = "高亮团队标记目标"
L["Spotlight Scale"] = "高亮缩放"
L["Spotlight Target Units"] = "高亮当前目标"
L["Stacking Nameplates"] = "堆叠姓名板"
L["Style"] = "风格"
L["Tank"] = "坦克"
L["Tapped Unit"] = "被接触的单位"
L["Target Highlighting"] = "目标高亮"
L["Target Of"] = "目标"
L["Target Of (Class Colored)"] = "目标 (职业染色)"
L["Target Only"] = "仅目标"
L["Target Unit"] = "当前目标单位"
L["Text Color"] = "文字颜色"
L["The amount of Emphasized auras that can be displayed at once"] = "同时显示高亮法术效果的数量"
L[ [=[The amount of empty aura slots between Buffs & Debuffs.
Max value means they never share a row]=] ] = "增益与负面效果之间的间隔。最大值表示它们不会显示在同一行"
L["The profile '%1' already exists, try a different name."] = "配置文件 '%1' 已经存在，请尝试其他名称。"
L["The profile '%1' is now the Default profile."] = "'%1'现在是默认配置文件。"
L["The profile '%1' was successfully deleted."] = "配置文件 '%1' 已成功删除。"
L["The profile '%1' was successfully overwritten."] = "配置文件 '%1' 已成功覆盖。"
L["Theme"] = "主题"
L["Theme Default"] = "主题默认"
L["Thick Outline"] = "粗边框"
L["Thin Outline"] = "细边框"
L["Third Spec"] = "第三专精"
L["This feature is highly experimental, use on your own risk"] = "实验性功能，出问题风险自负（已知问题：模拟的姓名板总是停留在刚出现的位置不会移动）"
L["Threat & Highlighting"] = "仇恨和高亮"
L["Threat Colors"] = "仇恨颜色"
L["Threat Mode"] = "仇恨模式"
L["Time Elapsed"] = "经过时间"
L["Time Elapsed/Cast Time"] = "经过时间/所需时间"
L["Time Remaining"] = "剩余时间"
L["Tip"] = "提示"
L["Transition"] = "过渡状态"
L["Treat Focus as a Target"] = "焦点目标以当前目标样式显示"
L["Type of highlighting to use"] = "高亮边框时使用的类型"
L["Typing '/nptank', will toggle the role assignment of your target manually"] = "输入 /nptank 手动切换当前选中目标的角色"
L["Un-interruptible"] = "无法打断"
L["Unit Filter"] = "单位过滤"
L["Unit Title"] = "单位头衔"
L["Use Blizzard Font"] = "使用暴雪默认字体"
L["Use Blizzard Scaling"] = "使用游戏内建缩放"
L["Use Chinese Number Shortening"] = "使用中文简写单位"
L["Use Custom Focus Color"] = "焦点单位使用自定义颜色"
L["Use Custom Mouseover Color"] = "鼠标悬停单位使用自定义颜色"
L["Use Custom Target Color"] = "当前目标单位使用自定义颜色"
L["Use Frequent Health Updates"] = "提高血条刷新频率"
L["Use Safe Color while Solo"] = "单刷时启用仇恨安全颜色"
L["Use Target Opacity When No Target Exists"] = "没目标时，使用当前目标透明度"
L["Uses multiple colors to indicate unit range"] = "使用多种颜色指示单位距离"
L["VERSION_WARNING_PROMPT_TEXT"] = "你安装的插件版本错误，和当前游戏版本不兼容，插件可能无法正常工作。请先确定安装了符合游戏版本（怀旧服或正式服）的插件再继续使用。"
L["Vertical Position of Artwork: (May cause targeting problems)"] = "血条垂直位置: (可能会导致定位问题)"
L["Warning"] = "警告状态"
L["White"] = "白色"
L["Wide"] = "宽松"
L["World"] = "世界"
L["You need to specify a 'Profile Name'."] = "你需要先定义一个“配置文件名”。"
L["Your 'Out of Range' distance"] = "你的“超出施法范围”距离"
