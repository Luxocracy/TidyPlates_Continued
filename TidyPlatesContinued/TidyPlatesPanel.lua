---------------------------------------------------------------------------------------------------------------------
-- Tidy Plates Interface Panel
---------------------------------------------------------------------------------------------------------------------

local addonName, TidyPlatesContInternal = ...
TidyPlatesContPanel = {}

local SetTheme = TidyPlatesContInternal.SetTheme	-- Use the protected version

local version = GetAddOnMetadata("TidyPlatesContinued", "version")
local versionString = "|cFF666666"..version

local TidyPlatesContInterfacePanel = PanelHelpers:CreatePanelFrame( "TidyPlatesContInterfacePanel", "Tidy Plates Continued", nil )
InterfaceOptions_AddCategory(TidyPlatesContInterfacePanel);

local CallIn = TidyPlatesContUtility.CallIn
local copytable = TidyPlatesContUtility.copyTable
local PanelHelpers = TidyPlatesContUtility.PanelHelpers

local NO_AUTOMATION = "No Automation"
local DURING_COMBAT = "Show during Combat, Hide when Combat ends"
local OUT_OF_COMBAT = "Hide when Combat starts, Show when Combat ends"

local font = "Interface\\Addons\\TidyPlatesContinued\\Media\\DefaultFont.ttf"
local yellow, blue, red, orange = "|cffffff00", "|cFF3782D1", "|cFFFF1100", "|cFFFF6906"

local function SetCastBars(enable)
	if enable then TidyPlatesCont:EnableCastBars()
		else TidyPlatesCont:DisableCastBars()
	end
end


-------------------------------------------------------------------------------------
--  Default Options
-------------------------------------------------------------------------------------

local FirstTryTheme = "Neon"
local DefaultProfile = "Damage"

local ActiveProfile = "None"

TidyPlatesContOptions = {

	ActiveTheme = FirstTryTheme,

	FirstSpecProfile = DefaultProfile,
	SecondSpecProfile = DefaultProfile,
	ThirdSpecProfile = DefaultProfile,
	FourthSpecProfile = DefaultProfile,

	FriendlyAutomation = NO_AUTOMATION,
	EnemyAutomation = NO_AUTOMATION,
	DisableCastBars = false,
	ForceBlizzardFont = false,
	WelcomeShown = false,
}

local TidyPlatesContOptionsDefaults = copytable(TidyPlatesContOptions)
local TidyPlatesContThemeNames = {}

local AutomationDropdownItems = {
					{ text = NO_AUTOMATION, value = NO_AUTOMATION } ,
					{ text = DURING_COMBAT, value = DURING_COMBAT } ,
					{ text = OUT_OF_COMBAT, value = OUT_OF_COMBAT } ,
					}

local HubProfileList = {}


local function GetProfile()
	return ActiveProfile
end

TidyPlatesCont.GetProfile = GetProfile


function TidyPlatesContPanel.AddProfile(self, profileName )
	if  profileName then
		HubProfileList[#HubProfileList+1] = { text = profileName, value = profileName, }
	end
end

local function SetNameplateVisibility(cvar, mode, combat)
	if mode == DURING_COMBAT then
		if combat then
			SetCVar(cvar, 1)
		else
			SetCVar(cvar, 0)
		end
	elseif mode == OUT_OF_COMBAT then
		if combat then
			SetCVar(cvar, 0)
		else
			SetCVar(cvar, 1)
		end
	end
end

--[[
function TidyPlatesCont:ReloadTheme()
	SetTheme(TidyPlatesContInternal.activeThemeName)
	TidyPlatesContOptions.ActiveTheme = TidyPlatesContInternal.activeThemeName
	TidyPlatesCont:ForceUpdate()
end
--]]


-------------------------------------------------------------------------------------
-- Panel
-------------------------------------------------------------------------------------
local ThemeDropdownMenuItems = {}

local function ApplyAutomationSettings()
	SetCastBars(not TidyPlatesContOptions.DisableCastBars)
	TidyPlatesCont.OverrideFonts( TidyPlatesContOptions.ForceBlizzardFont)

	if TidyPlatesContOptions._EnableMiniButton then
		TidyPlatesContUtility:CreateMinimapButton()
		TidyPlatesContUtility:ShowMinimapButton()
	end

	TidyPlatesCont:ForceUpdate()
end

local function Role2Profile(spec)
	local s = GetSpecializationInfo(spec)
	if s ~= nil then	
		local role = GetSpecializationRole(spec)
		print(role)
		if role == "DAMAGER" then return "Damage" end
		if role == "TANK" then return "Tank" end
		if role == "HEALER" then return "Healer" end
	end
	return "Damage"
end

local function ApplyPanelSettings()

	-- Theme
	SetTheme(TidyPlatesContOptions.ActiveTheme or FirstTryTheme)

	-- This is here in case the theme couldn't be loaded, and the core falls back to defaults
	--TidyPlatesContOptions.ActiveTheme = TidyPlatesContInternal.activeThemeName
	--local theme = TidyPlatesContThemeList[TidyPlatesContInternal.activeThemeName]

	-- Load Hub Profile
	ActiveProfile = DefaultProfile

	local currentSpec = GetSpecialization()
	if not TidyPlatesContOptions.WelcomeShown then
		TidyPlatesContOptions.FirstSpecProfile = Role2Profile(1)
		TidyPlatesContOptions.SecondSpecProfile = Role2Profile(2)
		TidyPlatesContOptions.ThirdSpecProfile = Role2Profile(3)
		TidyPlatesContOptions.FourthSpecProfile = Role2Profile(4)
	end

	if currentSpec == 4 then
		ActiveProfile = TidyPlatesContOptions.FourthSpecProfile
	elseif currentSpec == 3 then
		ActiveProfile = TidyPlatesContOptions.ThirdSpecProfile
	elseif currentSpec == 2 then
		ActiveProfile = TidyPlatesContOptions.SecondSpecProfile
	else
		ActiveProfile = TidyPlatesContOptions.FirstSpecProfile
	end


	local theme = TidyPlatesCont:GetTheme()

	if theme and theme.OnChangeProfile then theme:OnChangeProfile(ActiveProfile) end

	-- Store it for external usage
	--TidyPlatesContOptions.ActiveProfile = ActiveProfile
	-- ** Use TidyPlatesCont:GetProfile()

	-- Reset Widgets
	TidyPlatesCont:ResetWidgets()
	TidyPlatesCont:ForceUpdate()
end





local function GetPanelValues(panel)
	TidyPlatesContOptions.ActiveTheme = panel.ActiveThemeDropdown:GetValue()

	TidyPlatesContOptions.FriendlyAutomation = panel.AutoShowFriendly:GetValue()
	TidyPlatesContOptions.EnemyAutomation = panel.AutoShowEnemy:GetValue()
	TidyPlatesContOptions.DisableCastBars = panel.DisableCastBars:GetChecked()
	TidyPlatesContOptions.ForceBlizzardFont = panel.ForceBlizzardFont:GetChecked()
	TidyPlatesContOptions.PrimaryProfile = panel.FirstSpecDropdown:GetValue()

	TidyPlatesContOptions.FirstSpecProfile = panel.FirstSpecDropdown:GetValue()
	TidyPlatesContOptions.SecondSpecProfile = panel.SecondSpecDropdown:GetValue()
	TidyPlatesContOptions.ThirdSpecProfile = panel.ThirdSpecDropdown:GetValue()
	TidyPlatesContOptions.FourthSpecProfile = panel.FourthSpecDropdown:GetValue()
end


local function SetPanelValues(panel)
	panel.ActiveThemeDropdown:SetValue(TidyPlatesContOptions.ActiveTheme)

	panel.FirstSpecDropdown:SetValue(TidyPlatesContOptions.FirstSpecProfile)
	panel.SecondSpecDropdown:SetValue(TidyPlatesContOptions.SecondSpecProfile)
	panel.ThirdSpecDropdown:SetValue(TidyPlatesContOptions.ThirdSpecProfile)
	panel.FourthSpecDropdown:SetValue(TidyPlatesContOptions.FourthSpecProfile)

	panel.DisableCastBars:SetChecked(TidyPlatesContOptions.DisableCastBars)
	panel.ForceBlizzardFont:SetChecked(TidyPlatesContOptions.ForceBlizzardFont)
	panel.AutoShowFriendly:SetValue(TidyPlatesContOptions.FriendlyAutomation)
	panel.AutoShowEnemy:SetValue(TidyPlatesContOptions.EnemyAutomation)
end



local function OnValueChange(self)
	local panel = self:GetParent()
	GetPanelValues(panel)
	ApplyPanelSettings()
end


local function OnOkay(panel)
	GetPanelValues(panel)
	ApplyPanelSettings()
	ApplyAutomationSettings()
end


-- Loads values from the saved vars, and preps for display of the panel
local function OnRefresh(panel)

	if not panel then return end

	SetPanelValues(panel)

	------------------------
	-- Spec Notes
	------------------------
	local currentSpec = GetSpecialization()

	------------------------
	-- First Spec Details
	------------------------
	local id, name = GetSpecializationInfo(1)

	if name then
		if currentSpec == 1 then name = name.." (Active)" end
		panel.FirstSpecLabel:SetText(name)
	end
	------------------------
	-- Second Spec Details
	------------------------
	local id, name = GetSpecializationInfo(2)

	if name then
		if currentSpec == 2 then name = name.." (Active)" end
		panel.SecondSpecLabel:SetText(name)
	end
	------------------------
	-- Third Spec Details
	------------------------
	local id, name = GetSpecializationInfo(3)

	if name then
		if currentSpec == 3 then name = name.." (Active)" end
		panel.ThirdSpecLabel:SetText(name)
		panel.ThirdSpecLabel:Show()
		panel.ThirdSpecDropdown:Show()
	end
	------------------------
	-- Fourth Spec Details
	------------------------
	local id, name = GetSpecializationInfo(4)

	if name then
		if currentSpec == 4 then name = name.." (Active)" end
		panel.FourthSpecLabel:SetText(name)
		panel.FourthSpecLabel:Show()
		panel.FourthSpecDropdown:Show()
	end

end





local function CreateMenuTables()
	-- Convert the Theme List into a Menu List
	local themecount = 1

	ThemeDropdownMenuItems = {{text = "           ",},}

	if type(TidyPlatesContThemeList) == "table" then
		for themename, themepointer in pairs(TidyPlatesContThemeList) do
			TidyPlatesContThemeNames[themecount] = themename
			--TidyPlatesContThemeIndexes[themename] = themecount
			themecount = themecount + 1
		end
		-- Theme Choices
		for index, name in pairs(TidyPlatesContThemeNames) do ThemeDropdownMenuItems[index] = {text = name, value = name } end
	end
	sort(ThemeDropdownMenuItems, function (a,b)
	  return (a.text < b.text)
    end)

end

local function BuildInterfacePanel(panel)
	panel:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", insets = { left = 2, right = 2, top = 2, bottom = 2 },})
	panel:SetBackdropColor(0.06, 0.06, 0.06, .7)

	panel.Label:SetFont("Interface\\Addons\\TidyPlatesContinued\\Media\\DefaultFont.ttf", 26)
	panel.Label:SetPoint("TOPLEFT", panel, "TOPLEFT", 16+6, -16-4)
	panel.Label:SetTextColor(255/255, 105/255, 6/255)

	panel.Version = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormalLarge')
	panel.Version:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -16, -16-4)
	panel.Version:SetHeight(15)
	panel.Version:SetWidth(350)
	panel.Version:SetJustifyH("RIGHT")
	panel.Version:SetJustifyV("TOP")
	panel.Version:SetText(versionString)
	panel.Version:SetFont("Interface\\Addons\\TidyPlatesContinued\\Media\\DefaultFont.ttf", 18)

	panel.DividerLine = panel:CreateTexture(nil, 'ARTWORK')
	panel.DividerLine:SetTexture("Interface\\Addons\\TidyPlatesContinuedHub\\shared\\ThinBlackLine")
	panel.DividerLine:SetSize( 500, 12)
	panel.DividerLine:SetPoint("TOPLEFT", panel.Label, "BOTTOMLEFT", -6, -12)

	----------------------------------------------
	-- Theme
	----------------------------------------------
	panel.ThemeCategoryTitle = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.ThemeCategoryTitle:SetFont(font, 22)
	panel.ThemeCategoryTitle:SetText("Theme")
	panel.ThemeCategoryTitle:SetPoint("TOPLEFT", 20, -70)
	panel.ThemeCategoryTitle:SetTextColor(255/255, 105/255, 6/255)

	-- Dropdown
	panel.ActiveThemeDropdown = PanelHelpers:CreateDropdownFrame("TidyPlatesContChooserDropdown", panel, ThemeDropdownMenuItems, TidyPlatesContDefaultThemeName, nil, true)
	panel.ActiveThemeDropdown:SetPoint("TOPLEFT", panel.ThemeCategoryTitle, "BOTTOMLEFT", -20, -4)

	----------------------------------------------
	-- Profiles
	----------------------------------------------
	panel.ProfileLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.ProfileLabel:SetFont(font, 22)
	panel.ProfileLabel:SetText("Profile")
	panel.ProfileLabel:SetPoint("TOPLEFT", panel.ActiveThemeDropdown, "BOTTOMLEFT", 20, -20)
	panel.ProfileLabel:SetTextColor(255/255, 105/255, 6/255)

	---------------
	-- Column 1
	---------------
	-- Spec 1
	panel.FirstSpecLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.FirstSpecLabel:SetPoint("TOPLEFT", panel.ProfileLabel,"BOTTOMLEFT", 0, -4)
	panel.FirstSpecLabel:SetWidth(170)
	panel.FirstSpecLabel:SetJustifyH("LEFT")
	panel.FirstSpecLabel:SetText("First Spec")

	panel.FirstSpecDropdown = PanelHelpers:CreateDropdownFrame("TidyPlatesContFirstSpecDropdown", panel, HubProfileList, DefaultProfile, nil, true)
	panel.FirstSpecDropdown:SetPoint("TOPLEFT", panel.FirstSpecLabel, "BOTTOMLEFT", -20, -2)

	-- Spec 3
	panel.ThirdSpecLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.ThirdSpecLabel:SetPoint("TOPLEFT", panel.FirstSpecDropdown,"BOTTOMLEFT", 20, -8)
	panel.ThirdSpecLabel:SetWidth(170)
	panel.ThirdSpecLabel:SetJustifyH("LEFT")
	panel.ThirdSpecLabel:SetText("Third Spec")
	panel.ThirdSpecLabel:Hide()

	panel.ThirdSpecDropdown = PanelHelpers:CreateDropdownFrame("TidyPlatesContThirdSpecDropdown", panel, HubProfileList, DefaultProfile, nil, true)
	panel.ThirdSpecDropdown:SetPoint("TOPLEFT", panel.ThirdSpecLabel, "BOTTOMLEFT", -20, -2)
	panel.ThirdSpecLabel:Hide()

	---------------
	-- Column 2
	---------------
	-- Spec 2
	panel.SecondSpecLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.SecondSpecLabel:SetPoint("TOPLEFT", panel.FirstSpecLabel,"TOPLEFT", 180, 0)
	panel.SecondSpecLabel:SetWidth(170)
	panel.SecondSpecLabel:SetJustifyH("LEFT")
	panel.SecondSpecLabel:SetText("Second Spec")

	panel.SecondSpecDropdown = PanelHelpers:CreateDropdownFrame("TidyPlatesContSecondSpecDropdown", panel, HubProfileList, DefaultProfile, nil, true)
	panel.SecondSpecDropdown:SetPoint("TOPLEFT",panel.SecondSpecLabel, "BOTTOMLEFT", -20, -2)

	-- Spec 4
	panel.FourthSpecLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.FourthSpecLabel:SetPoint("TOPLEFT", panel.SecondSpecDropdown,"BOTTOMLEFT", 20, -8)
	panel.FourthSpecLabel:SetWidth(170)
	panel.FourthSpecLabel:SetJustifyH("LEFT")
	panel.FourthSpecLabel:SetText("Fourth Spec")
	panel.FourthSpecLabel:Hide()

	panel.FourthSpecDropdown = PanelHelpers:CreateDropdownFrame("TidyPlatesContFourthSpecDropdown", panel, HubProfileList, DefaultProfile, nil, true)
	panel.FourthSpecDropdown:SetPoint("TOPLEFT",panel.FourthSpecLabel, "BOTTOMLEFT", -20, -2)
	panel.FourthSpecDropdown:Hide()


	----------------------------------------------
	-- Automation
	----------------------------------------------
	panel.AutomationLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.AutomationLabel:SetFont(font, 22)
	panel.AutomationLabel:SetText("Automation")
	panel.AutomationLabel:SetPoint("TOPLEFT", panel.ThirdSpecDropdown, "BOTTOMLEFT", 20, -20)
	panel.AutomationLabel:SetTextColor(255/255, 105/255, 6/255)


	---------------
	-- Column 1
	---------------
	-- Enemy Visibility
	panel.AutoShowEnemyLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.AutoShowEnemyLabel:SetPoint("TOPLEFT", panel.AutomationLabel,"BOTTOMLEFT", 0, -4)
	panel.AutoShowEnemyLabel:SetWidth(170)
	panel.AutoShowEnemyLabel:SetJustifyH("LEFT")
	panel.AutoShowEnemyLabel:SetText("Enemy Nameplates:")

	panel.AutoShowEnemy = PanelHelpers:CreateDropdownFrame("TidyPlatesContAutoShowEnemy", panel, AutomationDropdownItems, NO_AUTOMATION, nil, true)
	panel.AutoShowEnemy:SetPoint("TOPLEFT",panel.AutoShowEnemyLabel, "BOTTOMLEFT", -20, -2)


	---------------
	-- Column 2
	---------------
	-- Friendly Visibility
	panel.AutoShowFriendlyLabel = panel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	panel.AutoShowFriendlyLabel:SetPoint("TOPLEFT", panel.AutoShowEnemyLabel,"TOPLEFT", 180, 0)
	panel.AutoShowFriendlyLabel:SetWidth(170)
	panel.AutoShowFriendlyLabel:SetJustifyH("LEFT")
	panel.AutoShowFriendlyLabel:SetText("Friendly Nameplates:")

	panel.AutoShowFriendly = PanelHelpers:CreateDropdownFrame("TidyPlatesContAutoShowFriendly", panel, AutomationDropdownItems, NO_AUTOMATION, nil, true)
	panel.AutoShowFriendly:SetPoint("TOPLEFT", panel.AutoShowFriendlyLabel,"BOTTOMLEFT", -20, -2)



	----------------------------------------------
	-- Other Options
	----------------------------------------------
	-- Blizz Button
	local BlizzOptionsButton = CreateFrame("Button", "TidyPlatesContOptions_BlizzOptionsButton", panel, "TidyPlatesContPanelButtonTemplate")
	--BlizzOptionsButton:SetPoint("TOPRIGHT", ResetButton, "TOPLEFT", -8, 0)
	BlizzOptionsButton:SetPoint("TOPLEFT", panel.AutoShowEnemy, "TOPLEFT", 16, -55)
	BlizzOptionsButton:SetWidth(260)
	BlizzOptionsButton:SetText("Nameplate Motion & Visibility")

	-- Cast Bars
	panel.DisableCastBars = PanelHelpers:CreateCheckButton("TidyPlatesContOptions_DisableCastBars", panel, "Disable Cast Bars")
	panel.DisableCastBars:SetPoint("TOPLEFT", BlizzOptionsButton, "TOPLEFT", 0, -35)
	panel.DisableCastBars:SetScript("OnClick", function(self) SetCastBars(not self:GetChecked()) end)

	-- ForceBlizzardFont
	panel.ForceBlizzardFont = PanelHelpers:CreateCheckButton("TidyPlatesContOptions_ForceBlizzardFont", panel, "Force Multi-Lingual Font (Requires /reload)")
	panel.ForceBlizzardFont:SetPoint("TOPLEFT", panel.DisableCastBars, "TOPLEFT", 0, -35)
	panel.ForceBlizzardFont:SetScript("OnClick", function(self) TidyPlatesCont.OverrideFonts( self:GetChecked()); end)

	-- Reset
	ResetButton = CreateFrame("Button", "TidyPlatesContOptions_ResetButton", panel, "TidyPlatesContPanelButtonTemplate")
	ResetButton:SetPoint("BOTTOMRIGHT", -16, 8)
	ResetButton:SetWidth(155)
	ResetButton:SetText("Reset Configuration")

	-- Update Functions
	panel.okay = OnOkay
	panel.refresh = OnRefresh
	panel.ActiveThemeDropdown.OnValueChanged = OnValueChange

	panel.FirstSpecDropdown.OnValueChanged = OnValueChange
	panel.SecondSpecDropdown.OnValueChanged = OnValueChange
	panel.ThirdSpecDropdown.OnValueChanged = OnValueChange
	panel.FourthSpecDropdown.OnValueChanged = OnValueChange



	-- Blizzard Nameplate Options Button
	BlizzOptionsButton:SetScript("OnClick", function()
		InterfaceOptionsFrame_OpenToCategory(_G["InterfaceOptionsNamesPanel"])
	end)

	-- Reset Button
	ResetButton:SetScript("OnClick", function()
		SetCVar("nameplateShowEnemies", 1)
		SetCVar("threatWarning", 3)		-- Required for threat/aggro detection


		if IsShiftKeyDown() then
			TidyPlatesContOptions = wipe(TidyPlatesContOptions)
			for i, v in pairs(TidyPlatesContOptionsDefaults) do TidyPlatesContOptions[i] = v end
			SetCVar("nameplateShowFriends", 0)
			ReloadUI()
		else
			TidyPlatesContOptions = wipe(TidyPlatesContOptions)
			for i, v in pairs(TidyPlatesContOptionsDefaults) do TidyPlatesContOptions[i] = v end
			OnRefresh(panel)
			ApplyPanelSettings()
			print(yellow.."Resetting "..orange.."Tidy Plates Continued"..yellow.." Theme Selection to Default")
			print(yellow.."Holding down "..blue.."Shift"..yellow.." while clicking "..red.."Reset Configuration"..yellow.." will clear your saved settings, AND reload the user interface.")
		end

	end)
end

-------------------------------------------------------------------------------------
-- Auto-Loader
-------------------------------------------------------------------------------------
local panelevents = {}

function panelevents:ACTIVE_TALENT_GROUP_CHANGED(self)
	--print("Panel:Talent Group Changed")
	ApplyPanelSettings()
	--OnRefresh(TidyPlatesContInterfacePanel)
end

function panelevents:PLAYER_ENTERING_WORLD()
	--print("Panel:Player Entering World")
	-- Tihs may happen every time a loading screen is shown
	local fallBackTheme

	-- Locate a fallback theme
	if TidyPlatesContThemeList[FirstTryTheme] then
		fallBackTheme = FirstTryTheme
	else
		for i,v in pairs(TidyPlatesContThemeList) do fallBackTheme = i break; end
	end

	-- Check to make sure the selected themes exist; if not, replace with fallback
	if not TidyPlatesContThemeList[TidyPlatesContOptions.ActiveTheme] then
		TidyPlatesContOptions.ActiveTheme = fallBackTheme end

	ApplyPanelSettings()
	ApplyAutomationSettings()
end

function panelevents:PLAYER_REGEN_ENABLED()
	SetNameplateVisibility("nameplateShowEnemies", TidyPlatesContOptions.EnemyAutomation, false)
	SetNameplateVisibility("nameplateShowFriends", TidyPlatesContOptions.FriendlyAutomation, false)
end

function panelevents:PLAYER_REGEN_DISABLED()
	SetNameplateVisibility("nameplateShowEnemies", TidyPlatesContOptions.EnemyAutomation, true)
	SetNameplateVisibility("nameplateShowFriends", TidyPlatesContOptions.FriendlyAutomation, true)
end

function panelevents:PLAYER_LOGIN()
	-- This happens only once a session

	-- Setup the interface panels
	CreateMenuTables()				-- Look at the theme table and get names
	BuildInterfacePanel(TidyPlatesContInterfacePanel)

	-- First time setup
	if not TidyPlatesContOptions.WelcomeShown then
		SetCVar("nameplateShowAll", 1)		--


		SetCVar("nameplateShowEnemies", 1)
		SetCVar("threatWarning", 3)		-- Required for threat/aggro detection
		TidyPlatesContOptions.WelcomeShown = true
	end

end

TidyPlatesContInterfacePanel:SetScript("OnEvent", function(self, event, ...) panelevents[event](self, ...) end)
for eventname in pairs(panelevents) do TidyPlatesContInterfacePanel:RegisterEvent(eventname) end

-------------------------------------------------------------------------------------
-- Slash Commands
-------------------------------------------------------------------------------------

TidyPlatesContSlashCommands = {}

function slash_TidyPlatesCont(arg)
	if type(TidyPlatesContSlashCommands[arg]) == 'function' then
		TidyPlatesContSlashCommands[arg]()
		TidyPlatesCont:ForceUpdate()
	else
		TidyPlatesContUtility.OpenInterfacePanel(TidyPlatesContInterfacePanel)
	end
end

SLASH_TidyPlatesCont1 = '/TidyPlatesCont'
SLASH_TidyPlatesCont2 = '/tp'
SlashCmdList['TidyPlatesCont'] = slash_TidyPlatesCont;



