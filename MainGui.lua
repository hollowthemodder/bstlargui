-- ╔══════════════════════════════════════════════╗
-- ║              BstlarGui  v0.1                  ║
-- ╚══════════════════════════════════════════════╝

local UIS = game:GetService("UserInputService")
local TS  = game:GetService("TweenService")
local RUN = game:GetService("RunService")

-- CoreGui first (executor compat), fallback to PlayerGui
-- Test actual write access, not just service access
local GParent
pcall(function()
    local cg = game:GetService("CoreGui")
    local t = Instance.new("Frame")
    t.Parent = cg   -- this errors in LocalScript context
    t:Destroy()
    GParent = cg
end)
if not GParent then
    GParent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

-- Destroy any existing instance so re-running doesn't conflict
pcall(function()
    local existing = GParent:FindFirstChild("BstlarGui")
    if existing then existing:Destroy() end
end)

-- ═══════════════════════════════════════
--  PALETTE
-- ═══════════════════════════════════════
local C = {
    WinBg      = Color3.fromRGB(14,  11,  22),
    TitleBg    = Color3.fromRGB(19,  15,  31),
    SideBG     = Color3.fromRGB(19,  15,  31),
    BodyBg     = Color3.fromRGB(23,  18,  37),
    Card       = Color3.fromRGB(30,  24,  46),
    CardHov    = Color3.fromRGB(40,  33,  60),
    TabActive  = Color3.fromRGB(36,  28,  55),
    Accent     = Color3.fromRGB(118,  62, 210),
    AccentBrt  = Color3.fromRGB(162, 108, 255),
    AccentMid  = Color3.fromRGB(138,  85, 235),
    AccentDim  = Color3.fromRGB( 68,  38, 120),
    AccentGlow = Color3.fromRGB(180, 130, 255),
    Text       = Color3.fromRGB(240, 235, 255),
    TextSub    = Color3.fromRGB(140, 128, 160),
    TextDim    = Color3.fromRGB( 85,  75, 105),
    TogOn      = Color3.fromRGB(118,  62, 210),
    TogOff     = Color3.fromRGB( 42,  34,  60),
    SldFill    = Color3.fromRGB(118,  62, 210),
    SldBg      = Color3.fromRGB( 28,  22,  44),
    Border     = Color3.fromRGB( 46,  36,  68),
    WinEdge    = Color3.fromRGB( 75,  44, 140),
    Sep        = Color3.fromRGB( 32,  25,  48),
    White      = Color3.fromRGB(255, 255, 255),
    Black      = Color3.fromRGB(  0,   0,   0),
}

local FK = {
    Black = Enum.Font.GothamBlack,
    Bold  = Enum.Font.GothamBold,
    Reg   = Enum.Font.Gotham,
}

-- ═══════════════════════════════════════
--  HELPERS
-- ═══════════════════════════════════════
local function tw(o, p, t, s, d)
    TS:Create(o,
        TweenInfo.new(t or .2, s or Enum.EasingStyle.Quart, d or Enum.EasingDirection.Out),
        p):Play()
end

local function rnd(o, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 8); c.Parent = o; return c
end

local function strk(o, col, px, mode)
    local s = Instance.new("UIStroke")
    s.Color = col or C.Border; s.Thickness = px or 1
    s.ApplyStrokeMode = mode or Enum.ApplyStrokeMode.Border
    s.Parent = o; return s
end

-- Frame: always fully opaque
local function mkF(par, sz, pos, col, nm, zi)
    local f = Instance.new("Frame")
    f.Size = sz; f.Position = pos or UDim2.new(0,0,0,0)
    f.BackgroundColor3 = col
    f.BackgroundTransparency = 0
    f.BorderSizePixel = 0
    f.Name = nm or "F"
    if zi then f.ZIndex = zi end
    f.Parent = par; return f
end

local function mkL(par, txt, sz, pos, col, fs, fnt, nm, xa, zi)
    local l = Instance.new("TextLabel")
    l.Size = sz; l.Position = pos or UDim2.new(0,0,0,0)
    l.BackgroundTransparency = 1
    l.Text = txt; l.TextColor3 = col
    l.TextSize = fs; l.Font = fnt or FK.Reg
    l.TextXAlignment = xa or Enum.TextXAlignment.Left
    l.RichText = false
    l.Name = nm or "L"
    if zi then l.ZIndex = zi end
    l.Parent = par; return l
end

local function mkB(par, txt, sz, pos, col, nm, zi)
    local b = Instance.new("TextButton")
    b.Size = sz; b.Position = pos or UDim2.new(0,0,0,0)
    b.BackgroundColor3 = col
    b.BackgroundTransparency = 0
    b.Text = txt; b.TextColor3 = C.Text
    b.TextSize = 14; b.Font = FK.Reg
    b.BorderSizePixel = 0; b.AutoButtonColor = false
    b.Name = nm or "B"
    if zi then b.ZIndex = zi end
    b.Parent = par; return b
end

local function mkList(par, gap)
    local l = Instance.new("UIListLayout")
    l.Padding = UDim.new(0, gap or 6)
    l.FillDirection = Enum.FillDirection.Vertical
    l.SortOrder = Enum.SortOrder.LayoutOrder
    l.Parent = par
end

local function mkPad(par, t, l2, r, b2)
    local p = Instance.new("UIPadding")
    p.PaddingTop    = UDim.new(0, t  or 0)
    p.PaddingLeft   = UDim.new(0, l2 or 0)
    p.PaddingRight  = UDim.new(0, r  or 0)
    p.PaddingBottom = UDim.new(0, b2 or 0)
    p.Parent = par
end

-- ═══════════════════════════════════════
--  SCREEN GUI
-- ═══════════════════════════════════════
local SG = Instance.new("ScreenGui")
SG.Name = "BstlarGui"
SG.ResetOnSpawn = false
SG.ZIndexBehavior = Enum.ZIndexBehavior.Global
SG.Parent = GParent

-- ═══════════════════════════════════════
--  CONSTANTS
-- ═══════════════════════════════════════
local WIN_W,  WIN_H  = 650, 440
local TITLE_H        = 52
local SIDE_W         = 150
local CanDragGUI     = true
local CanDragPill    = true

-- ═══════════════════════════════════════
--  THEME ENGINE
-- ═══════════════════════════════════════
local baseColors = {}
for k, v in pairs(C) do baseColors[k] = v end
local origHue = select(1, C.Accent:ToHSV())

local function ApplyTheme(targetHue)
    local oldC = {}
    for k, v in pairs(C) do oldC[k] = v end
    local hueShift = targetHue - origHue
    
    for k, v in pairs(baseColors) do
        if k ~= "White" and k ~= "Black" then
            local h, s, val = v:ToHSV()
            if s > 0.05 then
                C[k] = Color3.fromHSV((h + hueShift) % 1, s, val)
            end
        end
    end
    
    local function mapCol(c)
        for k, v in pairs(oldC) do
            if c == v then return C[k] end
        end
        return nil
    end

    for _, obj in ipairs(SG:GetDescendants()) do
        if obj:IsA("GuiObject") then
            local newBg = mapCol(obj.BackgroundColor3)
            if newBg then obj.BackgroundColor3 = newBg end
            
            if obj:IsA("ScrollingFrame") then
                local newSb = mapCol(obj.ScrollBarImageColor3)
                if newSb then obj.ScrollBarImageColor3 = newSb end
            end
            
            if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
                local newTxt = mapCol(obj.TextColor3)
                if newTxt then obj.TextColor3 = newTxt end
            end
        elseif obj:IsA("UIStroke") then
            local newSt = mapCol(obj.Color)
            if newSt then obj.Color = newSt end
        end
    end
end

-- ═══════════════════════════════════════
--  STATS OVERLAY
-- ═══════════════════════════════════════
local Overlay = Instance.new("Frame")
Overlay.Name = "StatsOverlay"
Overlay.BackgroundTransparency = 1
Overlay.Size = UDim2.new(0, 150, 0, 100)
Overlay.Position = UDim2.new(0, 15, 0, 15)
Overlay.Parent = SG

local olList = Instance.new("UIListLayout", Overlay)
olList.SortOrder = Enum.SortOrder.LayoutOrder
olList.Padding = UDim.new(0, 2)

local function mkOverlayLabel(name, text)
    local l = Instance.new("TextLabel")
    l.Name = name
    l.Size = UDim2.new(1, 0, 0, 20)
    l.BackgroundTransparency = 1
    l.Text = text
    l.TextColor3 = Color3.new(1,1,1)
    l.TextSize = 14
    l.Font = Enum.Font.GothamBold
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.Visible = false
    l.Parent = Overlay
    
    local strk = Instance.new("UIStroke")
    strk.Color = Color3.new(0,0,0)
    strk.Thickness = 1.2
    strk.Parent = l
    return l
end

local olFPS  = mkOverlayLabel("olFPS",  "FPS: 0")
local olPing = mkOverlayLabel("olPing", "Ping: 0ms")
local olPlrs = mkOverlayLabel("olPlrs", "Players: 0/0")
local olGame = mkOverlayLabel("olGame", "Game: Loading...")

local showFPS, showPing, showPlrs, showGame = false, false, false, false
local olCorner = 1

local function updateOverlayLayout()
    olFPS.Visible = showFPS
    olPing.Visible = showPing
    olPlrs.Visible = showPlrs
    olGame.Visible = showGame
    
    if olCorner == 1 then
        Overlay.AnchorPoint = Vector2.new(0, 0)
        Overlay.Position = UDim2.new(0, 15, 0, 15)
        olList.HorizontalAlignment = Enum.HorizontalAlignment.Left
        olList.VerticalAlignment = Enum.VerticalAlignment.Top
        for _, l in ipairs(Overlay:GetChildren()) do if l:IsA("TextLabel") then l.TextXAlignment = Enum.TextXAlignment.Left end end
    elseif olCorner == 2 then
        Overlay.AnchorPoint = Vector2.new(1, 0)
        Overlay.Position = UDim2.new(1, -15, 0, 15)
        olList.HorizontalAlignment = Enum.HorizontalAlignment.Right
        olList.VerticalAlignment = Enum.VerticalAlignment.Top
        for _, l in ipairs(Overlay:GetChildren()) do if l:IsA("TextLabel") then l.TextXAlignment = Enum.TextXAlignment.Right end end
    elseif olCorner == 3 then
        Overlay.AnchorPoint = Vector2.new(0, 1)
        Overlay.Position = UDim2.new(0, 15, 1, -15)
        olList.HorizontalAlignment = Enum.HorizontalAlignment.Left
        olList.VerticalAlignment = Enum.VerticalAlignment.Bottom
        for _, l in ipairs(Overlay:GetChildren()) do if l:IsA("TextLabel") then l.TextXAlignment = Enum.TextXAlignment.Left end end
    elseif olCorner == 4 then
        Overlay.AnchorPoint = Vector2.new(1, 1)
        Overlay.Position = UDim2.new(1, -15, 1, -15)
        olList.HorizontalAlignment = Enum.HorizontalAlignment.Right
        olList.VerticalAlignment = Enum.VerticalAlignment.Bottom
        for _, l in ipairs(Overlay:GetChildren()) do if l:IsA("TextLabel") then l.TextXAlignment = Enum.TextXAlignment.Right end end
    end
end

-- ═══════════════════════════════════════
--  SHADOW
-- ═══════════════════════════════════════
local ShadW, ShadH = WIN_W + 40, WIN_H + 40
local Shad = mkF(SG,
    UDim2.new(0, ShadW, 0, ShadH),
    UDim2.new(0.5, 0, 0.5, -WIN_H/2 - 20),
    Color3.fromRGB(3, 2, 8), "Shadow", 10)
Shad.AnchorPoint = Vector2.new(0.5, 0)
Shad.BackgroundTransparency = 0.38
rnd(Shad, 20)

-- ═══════════════════════════════════════
--  MAIN WINDOW
-- ═══════════════════════════════════════
local Win = mkF(SG,
    UDim2.new(0, WIN_W, 0, WIN_H),
    UDim2.new(0.5, 0, 0.5, -WIN_H/2),
    C.WinBg, "Window", 11)
Win.AnchorPoint = Vector2.new(0.5, 0)
Win.ClipsDescendants = true
rnd(Win, 13)
local WinStroke = strk(Win, C.WinEdge, 1.5)

-- bright 2-px accent top strip
local TopStrip = mkF(Win, UDim2.new(1,0,0,2), UDim2.new(0,0,0,0),
    C.AccentMid, "TopStrip", 20)

-- ── TITLE BAR ──────────────────────────────────
local TBar = mkF(Win,
    UDim2.new(1,0,0,TITLE_H),
    UDim2.new(0,0,0,0),
    C.TitleBg, "TitleBar", 12)

-- bottom border of title bar
mkF(Win, UDim2.new(1,0,0,1), UDim2.new(0,0,0,TITLE_H), C.Sep, "TitleSep", 12)

-- * icon (large)
mkL(TBar, "*",
    UDim2.new(0,38,1,0), UDim2.new(0,12,0,0),
    C.AccentBrt, 26, FK.Black, "TIco", Enum.TextXAlignment.Center, 13)

-- title + subtitle stack
mkL(TBar, "BstlarGui",
    UDim2.new(0,160,0,28), UDim2.new(0,54,0,8),
    C.Text, 17, FK.Black, "TTitle", Enum.TextXAlignment.Left, 13)
mkL(TBar, "@bstlarscript",
    UDim2.new(0,160,0,16), UDim2.new(0,54,0,30),
    C.TextDim, 10, FK.Reg, "TSub", Enum.TextXAlignment.Left, 13)

-- version badge (glowing)
local Bdg = mkF(TBar, UDim2.new(0,96,0,24), UDim2.new(0,218,0.5,-12), C.AccentMid, "Badge", 13)
rnd(Bdg, 12)
strk(Bdg, C.AccentBrt, 1)
mkL(Bdg, "v0.1.1 bugfix",
    UDim2.new(1,0,1,0), UDim2.new(0,0,0,0),
    C.White, 11, FK.Black, "BdgTxt", Enum.TextXAlignment.Center, 14)

-- window controls
local function ctrlBtn(ico, rOff, hovCol)
    local b = mkB(TBar, ico,
        UDim2.new(0,26,0,26),
        UDim2.new(1,-rOff,0.5,-13),
        Color3.fromRGB(32,25,50), "Ctrl", 13)
    rnd(b, 13)
    b.TextColor3 = C.TextSub; b.TextSize = 13; b.Font = FK.Bold
    b.MouseEnter:Connect(function() tw(b,{BackgroundColor3=hovCol}) end)
    b.MouseLeave:Connect(function() tw(b,{BackgroundColor3=Color3.fromRGB(32,25,50)}) end)
    return b
end
local BClose = ctrlBtn("x",  36, Color3.fromRGB(190,50,68))
local BMin   = ctrlBtn("-",  68, Color3.fromRGB(50,40,75))

-- ── SIDEBAR ────────────────────────────────────
local Sidebar = mkF(Win,
    UDim2.new(0, SIDE_W, 1, -TITLE_H-1),
    UDim2.new(0, 0, 0, TITLE_H+1),
    C.SideBG, "Sidebar", 12)

-- sidebar right separator
mkF(Win, UDim2.new(0,1,1,-TITLE_H-1), UDim2.new(0,SIDE_W,0,TITLE_H+1), C.Sep, "SideSep", 12)

-- tab list
local TabCont = mkF(Sidebar, UDim2.new(1,0,1,-38), UDim2.new(0,0,0,0), C.SideBG, "TabCont", 13)
TabCont.BackgroundTransparency = 1
mkList(TabCont, 3)
mkPad(TabCont, 10, 8, 8, 4)

-- bottom status row
local SBar = mkF(Sidebar, UDim2.new(1,0,0,34), UDim2.new(0,0,1,-34), C.SideBG, "SBar", 13)
SBar.BackgroundTransparency = 1
-- thin top line above status
mkF(Sidebar, UDim2.new(1,-16,0,1), UDim2.new(0,8,1,-34), C.Sep, "SBarLine", 13)
mkL(SBar, "● Inactive",
    UDim2.new(1,-10,1,0), UDim2.new(0,10,0,0),
    C.AccentDim, 11, FK.Bold, "Status", Enum.TextXAlignment.Left, 14)

-- ── CONTENT AREA ───────────────────────────────
local Content = mkF(Win,
    UDim2.new(1,-SIDE_W-1,1,-TITLE_H-1),
    UDim2.new(0,SIDE_W+1,0,TITLE_H+1),
    C.BodyBg, "Content", 12)

-- ═══════════════════════════════════════
--  TAB SYSTEM
-- ═══════════════════════════════════════
local Pages        = {}
local activeTabRef = nil

local function makeTab(iconTxt, labelTxt)
    local TBtn = mkB(TabCont, "",
        UDim2.new(1,0,0,38), nil, C.Black, "Tab_"..labelTxt, 14)
    TBtn.BackgroundTransparency = 1
    rnd(TBtn, 8)

    -- left accent bar (4px, shown when active)
    local AccBar = mkF(TBtn, UDim2.new(0,4,0.5,0), UDim2.new(0,0,0.25,0),
        C.AccentBrt, "AccBar", 15)
    rnd(AccBar, 2)
    AccBar.BackgroundTransparency = 1

    local TIco = mkL(TBtn, iconTxt,
        UDim2.new(0,28,1,0), UDim2.new(0,10,0,0),
        C.TextSub, 16, FK.Bold, "TIco", Enum.TextXAlignment.Center, 15)
    local TLbl = mkL(TBtn, labelTxt,
        UDim2.new(1,-42,1,0), UDim2.new(0,40,0,0),
        C.TextSub, 13, FK.Bold, "TLbl", Enum.TextXAlignment.Left, 15)

    -- content page
    local Page = mkF(Content, UDim2.new(1,0,1,0), nil, C.BodyBg, "Page_"..labelTxt, 13)
    Page.Visible = false; Page.ClipsDescendants = true

    local Scroll = Instance.new("ScrollingFrame")
    Scroll.Size = UDim2.new(1,0,1,0)
    Scroll.Position = UDim2.new(0,0,0,0)
    Scroll.BackgroundTransparency = 1
    Scroll.BorderSizePixel = 0
    Scroll.ScrollBarThickness = 3
    Scroll.ScrollBarImageColor3 = C.AccentMid
    Scroll.CanvasSize = UDim2.new(0,0,0,0)
    Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Scroll.ZIndex = 14
    Scroll.Parent = Page
    mkList(Scroll, 6)
    mkPad(Scroll, 14, 13, 14, 14)

    local function activate()
        if activeTabRef then
            tw(activeTabRef.btn, {BackgroundTransparency=1})
            activeTabRef.ico.TextColor3 = C.TextSub
            activeTabRef.lbl.TextColor3 = C.TextSub
            activeTabRef.bar.BackgroundTransparency = 1
            activeTabRef.page.Visible = false
        end
        tw(TBtn, {BackgroundColor3=C.TabActive, BackgroundTransparency=0})
        TIco.TextColor3 = C.AccentBrt
        TLbl.TextColor3 = C.Text
        tw(AccBar, {BackgroundTransparency=0})
        Page.Visible = true
        activeTabRef = {btn=TBtn, ico=TIco, lbl=TLbl, bar=AccBar, page=Page}
    end

    TBtn.MouseButton1Click:Connect(activate)
    TBtn.MouseEnter:Connect(function()
        if not activeTabRef or activeTabRef.btn ~= TBtn then
            tw(TBtn,{BackgroundColor3=C.CardHov, BackgroundTransparency=0})
        end
    end)
    TBtn.MouseLeave:Connect(function()
        if not activeTabRef or activeTabRef.btn ~= TBtn then
            tw(TBtn,{BackgroundTransparency=1})
        end
    end)

    Pages[labelTxt] = Scroll
    return activate
end

-- ═══════════════════════════════════════
--  OPTION BUILDERS
-- ═══════════════════════════════════════

-- ── Section header ─────────────────────
local function mkSection(scroll, text)
    local F = mkF(scroll, UDim2.new(1,0,0,26), nil, C.BodyBg, "Sec", 15)
    F.BackgroundTransparency = 1

    -- diamond bullet
    mkL(F, ">", UDim2.new(0,14,1,0), UDim2.new(0,-1,0,0),
        C.AccentDim, 10, FK.Black, "Bullet", Enum.TextXAlignment.Center, 16)
    mkL(F, text:upper(),
        UDim2.new(1,-18,1,0), UDim2.new(0,14,0,0),
        C.AccentDim, 10, FK.Black, "SLbl", Enum.TextXAlignment.Left, 16)

    -- line after label
    local lineF = mkF(F, UDim2.new(1,0,0,1), UDim2.new(0,0,1,-1), C.Sep, "SLine", 15)
    return F
end

-- ── Toggle ─────────────────────────────
local function mkToggle(scroll, title, desc, cb)
    local h = desc and 66 or 50
    local Card = mkF(scroll, UDim2.new(1,0,0,h), nil, C.Card, "Tog_"..title, 15)
    rnd(Card, 9)
    strk(Card, C.Border, 1)

    -- left accent strip
    local LStrip = mkF(Card, UDim2.new(0,3,0.6,0), UDim2.new(0,0,0.2,0),
        C.AccentDim, "Strip", 16)
    rnd(LStrip, 2)

    mkL(Card, title,
        UDim2.new(1,-70,0,20), UDim2.new(0,16,0,10),
        C.Text, 14, FK.Bold, "T", Enum.TextXAlignment.Left, 16)
    if desc then
        mkL(Card, desc,
            UDim2.new(1,-70,0,22), UDim2.new(0,16,0,30),
            C.TextSub, 11, FK.Reg, "D", Enum.TextXAlignment.Left, 16)
    end

    -- pill
    local Pill = mkF(Card, UDim2.new(0,44,0,24), UDim2.new(1,-58,0.5,-12), C.TogOff, "Pill", 16)
    rnd(Pill, 12)
    local PillStroke = strk(Pill, C.Border, 1)
    local Knob = mkF(Pill, UDim2.new(0,18,0,18), UDim2.new(0,3,0.5,-9), C.White, "Knob", 17)
    rnd(Knob, 9)

    local on = false
    local Hit = mkB(Card,"",UDim2.new(1,0,1,0),nil,C.Black,"Hit",18)
    Hit.BackgroundTransparency = 1
    Hit.MouseButton1Click:Connect(function()
        on = not on
        tw(Pill, {BackgroundColor3 = on and C.TogOn or C.TogOff})
        tw(PillStroke, {Color = on and C.AccentBrt or C.Border})
        tw(Knob, {Position = on and UDim2.new(1,-21,0.5,-9) or UDim2.new(0,3,0.5,-9)})
        tw(LStrip,{BackgroundColor3 = on and C.AccentMid or C.AccentDim})
        if cb then cb(on) end
    end)
    Hit.MouseEnter:Connect(function() tw(Card,{BackgroundColor3=C.CardHov}) end)
    Hit.MouseLeave:Connect(function() tw(Card,{BackgroundColor3=C.Card}) end)
    return Card
end

-- ── Slider ─────────────────────────────
local function mkSlider(scroll, title, desc, mn, mx, def, cb)
    mn=mn or 0; mx=mx or 100; def=def or mn
    local h = desc and 78 or 64
    local Card = mkF(scroll, UDim2.new(1,0,0,h), nil, C.Card, "Sld_"..title, 15)
    rnd(Card, 9); strk(Card, C.Border, 1)

    -- left accent strip
    local LStrip = mkF(Card, UDim2.new(0,3,0.6,0), UDim2.new(0,0,0.2,0),
        C.AccentDim, "Strip", 16)
    rnd(LStrip, 2)

    mkL(Card, title,
        UDim2.new(1,-70,0,20), UDim2.new(0,16,0,8),
        C.Text, 14, FK.Bold, "T", Enum.TextXAlignment.Left, 16)
    if desc then
        mkL(Card, desc,
            UDim2.new(1,-70,0,22), UDim2.new(0,16,0,28),
            C.TextSub, 11, FK.Reg, "D", Enum.TextXAlignment.Left, 16)
    end

    local ValLbl = mkL(Card, tostring(def),
        UDim2.new(0,42,0,20), UDim2.new(1,-56,0,8),
        C.AccentBrt, 14, FK.Black, "Val", Enum.TextXAlignment.Right, 16)

    local tY = desc and 54 or 42
    local Track = mkF(Card, UDim2.new(1,-30,0,5), UDim2.new(0,16,0,tY), C.SldBg, "Track", 16)
    rnd(Track, 3)

    local pct  = (def-mn)/(mx-mn)
    local Fill = mkF(Track, UDim2.new(pct,0,1,0), nil, C.SldFill, "Fill", 17)
    rnd(Fill, 3)
    local Hnd = mkF(Track, UDim2.new(0,13,0,13), UDim2.new(pct,-6,0.5,-6), C.White, "Hnd", 18)
    rnd(Hnd, 7)
    -- handle glow
    strk(Hnd, C.AccentMid, 1)

    local sldDrag = false
    local function upd(ax)
        local p = math.clamp((ax-Track.AbsolutePosition.X)/Track.AbsoluteSize.X,0,1)
        local v = math.floor(mn + p*(mx-mn)+0.5)
        p = (v-mn)/(mx-mn)
        Fill.Size = UDim2.new(p,0,1,0)
        Hnd.Position = UDim2.new(p,-6,0.5,-6)
        ValLbl.Text = tostring(v)
        if cb then cb(v) end
    end
    local SHit = mkB(Track,"",UDim2.new(1,0,0,24),UDim2.new(0,0,0.5,-12),C.Black,"SHit",19)
    SHit.BackgroundTransparency = 1
    SHit.MouseButton1Down:Connect(function() sldDrag=true end)
    UIS.InputChanged:Connect(function(i)
        if sldDrag and i.UserInputType==Enum.UserInputType.MouseMovement then upd(i.Position.X) end
    end)
    UIS.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then sldDrag=false end
    end)
    Track.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 then upd(i.Position.X) end
    end)
    Card.MouseEnter:Connect(function() tw(Card,{BackgroundColor3=C.CardHov}) end)
    Card.MouseLeave:Connect(function() tw(Card,{BackgroundColor3=C.Card}) end)

    -- public setter: programmatically move the slider to a value
    local function setValue(v)
        v = math.clamp(math.floor(v + 0.5), mn, mx)
        local p = (v - mn) / (mx - mn)
        Fill.Size    = UDim2.new(p, 0, 1, 0)
        Hnd.Position = UDim2.new(p, -6, 0.5, -6)
        ValLbl.Text  = tostring(v)
        if cb then cb(v) end
    end

    return Card, setValue
end

-- ── Button ─────────────────────────────
local function mkButton(scroll, title, desc, btnTxt, cb)
    local h = desc and 66 or 50
    local Card = mkF(scroll, UDim2.new(1,0,0,h), nil, C.Card, "Btn_"..title, 15)
    rnd(Card, 9); strk(Card, C.Border, 1)

    -- left accent strip
    local LStrip = mkF(Card, UDim2.new(0,3,0.6,0), UDim2.new(0,0,0.2,0),
        C.AccentDim, "Strip", 16)
    rnd(LStrip, 2)

    mkL(Card, title,
        UDim2.new(1,-120,0,20), UDim2.new(0,16,0,10),
        C.Text, 14, FK.Bold, "T", Enum.TextXAlignment.Left, 16)
    if desc then
        mkL(Card, desc,
            UDim2.new(1,-120,0,22), UDim2.new(0,16,0,30),
            C.TextSub, 11, FK.Reg, "D", Enum.TextXAlignment.Left, 16)
    end

    local Ab = mkB(Card, btnTxt or "Run",
        UDim2.new(0,86,0,30), UDim2.new(1,-98,0.5,-15),
        C.Accent, "Ab", 16)
    rnd(Ab, 8)
    Ab.TextColor3=C.White; Ab.TextSize=13; Ab.Font=FK.Bold
    strk(Ab, C.AccentBrt, 1)
    Ab.MouseEnter:Connect(function() tw(Ab,{BackgroundColor3=C.AccentBrt}) end)
    Ab.MouseLeave:Connect(function() tw(Ab,{BackgroundColor3=C.Accent}) end)
    Ab.MouseButton1Click:Connect(function()
        -- press flash
        tw(Ab,{BackgroundColor3=C.AccentGlow},0.06)
        tw(Ab,{BackgroundColor3=C.Accent},0.12)
        if cb then cb() end
    end)
    Card.MouseEnter:Connect(function() tw(Card,{BackgroundColor3=C.CardHov}) end)
    Card.MouseLeave:Connect(function() tw(Card,{BackgroundColor3=C.Card}) end)
    return Card
end

-- ── Dropdown ─────────────────────────────
local function mkDropdown(scroll, title, desc, getOptionsFn, cb)
    local h = desc and 66 or 50
    local Card = mkF(scroll, UDim2.new(1,0,0,h), nil, C.Card, "Drop_"..title, 15)
    rnd(Card, 9); strk(Card, C.Border, 1)

    local LStrip = mkF(Card, UDim2.new(0,3,0.6,0), UDim2.new(0,0,0.2,0), C.AccentDim, "Strip", 16)
    rnd(LStrip, 2)

    mkL(Card, title, UDim2.new(1,-70,0,20), UDim2.new(0,16,0,10), C.Text, 14, FK.Bold, "T", Enum.TextXAlignment.Left, 16)
    if desc then
        mkL(Card, desc, UDim2.new(1,-70,0,22), UDim2.new(0,16,0,30), C.TextSub, 11, FK.Reg, "D", Enum.TextXAlignment.Left, 16)
    end

    local Arrow = mkL(Card, "v", UDim2.new(0,24,0,24), UDim2.new(1,-34,0.5,-12), C.TextSub, 14, FK.Bold, "Arr", Enum.TextXAlignment.Center, 16)

    local DropCont = mkF(scroll, UDim2.new(1,0,0,0), nil, C.BodyBg, "DropCont", 15)
    DropCont.BackgroundTransparency = 1
    DropCont.Visible = false
    DropCont.ClipsDescendants = true
    local list = Instance.new("UIListLayout", DropCont)
    list.Padding = UDim.new(0, 4)
    list.SortOrder = Enum.SortOrder.LayoutOrder

    local isOpen = false
    local Hit = mkB(Card,"",UDim2.new(1,0,1,0),nil,C.Black,"Hit",18)
    Hit.BackgroundTransparency = 1

    Hit.MouseButton1Click:Connect(function()
        isOpen = not isOpen
        if isOpen then
            Arrow.Text = "^"
            for _, c in ipairs(DropCont:GetChildren()) do
                if c:IsA("TextButton") then c:Destroy() end
            end
            local opts = getOptionsFn()
            local totalH = 0
            for _, opt in ipairs(opts) do
                local b = mkB(DropCont, opt, UDim2.new(1,-10,0,30), nil, C.Card, "Opt", 16)
                b.Position = UDim2.new(0,10,0,0)
                rnd(b, 6)
                strk(b, C.Border, 1)
                b.MouseButton1Click:Connect(function()
                    cb(opt)
                    isOpen = false
                    Arrow.Text = "v"
                    tw(DropCont, {Size = UDim2.new(1,0,0,0)}, 0.2)
                    task.delay(0.2, function() DropCont.Visible = false end)
                end)
                b.MouseEnter:Connect(function() tw(b,{BackgroundColor3=C.CardHov}) end)
                b.MouseLeave:Connect(function() tw(b,{BackgroundColor3=C.Card}) end)
                totalH = totalH + 34
            end
            DropCont.Visible = true
            tw(DropCont, {Size = UDim2.new(1,0,0,totalH)}, 0.25)
        else
            Arrow.Text = "v"
            tw(DropCont, {Size = UDim2.new(1,0,0,0)}, 0.2)
            task.delay(0.2, function() DropCont.Visible = false end)
        end
    end)
    Card.MouseEnter:Connect(function() tw(Card,{BackgroundColor3=C.CardHov}) end)
    Card.MouseLeave:Connect(function() tw(Card,{BackgroundColor3=C.Card}) end)
    return Card
end

-- ── Stats Card ─────────────────────────────
local function mkStatsCard(scroll)
    local Card = mkF(scroll, UDim2.new(1,0,0,106), nil, C.Card, "StatsCard", 15)
    rnd(Card, 9); strk(Card, C.Border, 1)

    -- left accent strip
    local LStrip = mkF(Card, UDim2.new(0,3,0.7,0), UDim2.new(0,0,0.15,0),
        C.AccentDim, "Strip", 16)
    rnd(LStrip, 2)

    local lblGame    = mkL(Card, "Game: Loading...", UDim2.new(1,-20,0,20), UDim2.new(0,16,0,10), C.Text,    13, FK.Bold, "LblGame",    Enum.TextXAlignment.Left, 16)
    local lblPlayers = mkL(Card, "Players: 0/0",     UDim2.new(1,-20,0,20), UDim2.new(0,16,0,34), C.TextSub, 12, FK.Reg,  "LblPlayers", Enum.TextXAlignment.Left, 16)
    local lblFPS     = mkL(Card, "FPS: 0",           UDim2.new(1,-20,0,20), UDim2.new(0,16,0,56), C.TextSub, 12, FK.Reg,  "LblFPS",     Enum.TextXAlignment.Left, 16)
    local lblPing    = mkL(Card, "Ping: 0ms",        UDim2.new(1,-20,0,20), UDim2.new(0,16,0,78), C.TextSub, 12, FK.Reg,  "LblPing",    Enum.TextXAlignment.Left, 16)

    task.spawn(function()
        pcall(function()
            local MPS = game:GetService("MarketplaceService")
            local info = MPS:GetProductInfo(game.PlaceId)
            local gStr = "Game: " .. (info.Name or tostring(game.PlaceId))
            lblGame.Text = gStr
            olGame.Text = gStr
        end)
    end)

    local fps = 0
    local lastTick = tick()
    local conn
    conn = RUN.RenderStepped:Connect(function()
        if not Card.Parent then
            conn:Disconnect()
            return
        end
        fps = fps + 1
        if tick() - lastTick >= 1 then
            local fStr = "FPS: " .. tostring(fps)
            lblFPS.Text = fStr
            olFPS.Text = fStr
            fps = 0
            lastTick = tick()
            pcall(function()
                local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
                local pStr = "Ping: " .. tostring(math.floor(ping)) .. "ms"
                lblPing.Text = pStr
                olPing.Text = pStr
            end)
            local plrs = game:GetService("Players")
            local plStr = "Players: " .. tostring(#plrs:GetPlayers()) .. "/" .. tostring(plrs.MaxPlayers)
            lblPlayers.Text = plStr
            olPlrs.Text = plStr
        end
    end)
    return Card
end

-- ═══════════════════════════════════════
--  COLLAPSIBLE GROUP BUILDER
-- ═══════════════════════════════════════
--[[
    makeGroup(label)  → { addTab(ico, lbl) → activateFn, finalize() }
    Header row has a chevron (▾/▴) that slides all child tabs
    in/out with a smooth height tween + colour fade.
]]
local function makeGroup(label)
    -- ── header button ──────────────────────────────────────────────
    local GHead = mkB(TabCont, "",
        UDim2.new(1,0,0,32), nil,
        Color3.fromRGB(0,0,0), "Grp_"..label, 14)
    GHead.BackgroundTransparency = 1
    GHead.LayoutOrder = 0
    rnd(GHead, 6)

    -- left tint line
    local GLine = mkF(GHead, UDim2.new(0,3,0.55,0), UDim2.new(0,0,0.225,0),
        C.AccentDim, "GL", 15)
    rnd(GLine, 2)

    -- label
    local GLbl = mkL(GHead, label:upper(),
        UDim2.new(1,-36,1,0), UDim2.new(0,10,0,0),
        C.AccentDim, 10, FK.Black, "GLbl",
        Enum.TextXAlignment.Left, 15)

    -- chevron (v = open, ^ = closed)
    local GChev = mkL(GHead, "v",
        UDim2.new(0,18,1,0), UDim2.new(1,-22,0,0),
        C.AccentDim, 13, FK.Bold, "GChev",
        Enum.TextXAlignment.Center, 15)

    -- ── child container ────────────────────────────────────────────
    local GBody = mkF(TabCont, UDim2.new(1,0,0,0),
        nil, C.SideBG, "GBody_"..label, 14)
    GBody.BackgroundTransparency = 1
    GBody.ClipsDescendants = true
    mkList(GBody, 3)
    mkPad(GBody, 2, 0, 0, 2)

    local isOpen   = true
    local fullH    = 0
    local tweening = false

    -- call once after all child tabs are added to lock in full height
    local function finalize()
        local h = 4  -- top+bottom pad
        for _, ch in ipairs(GBody:GetChildren()) do
            if ch:IsA("GuiObject") and
               ch.Name ~= "UIListLayout" and
               ch.Name ~= "UIPadding" then
                h = h + ch.AbsoluteSize.Y + 3  -- 3 = list gap
            end
        end
        fullH = h
        GBody.Size = UDim2.new(1,0,0,fullH)
    end

    -- ── toggle logic ───────────────────────────────────────────────
    GHead.MouseButton1Click:Connect(function()
        if tweening then return end
        tweening = true
        isOpen = not isOpen

        if isOpen then
            GChev.Text = "v"
            GBody.Visible = true
            tw(GBody, {Size = UDim2.new(1,0,0,fullH)}, 0.26,
                Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
            tw(GLine,  {BackgroundColor3 = C.AccentMid}, 0.18)
            tw(GLbl,   {TextColor3 = C.AccentMid},       0.18)
            tw(GChev,  {TextColor3 = C.AccentMid},       0.18)
            task.delay(0.27, function() tweening = false end)
        else
            GChev.Text = "^"
            tw(GBody, {Size = UDim2.new(1,0,0,0)}, 0.22,
                Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
            tw(GLine,  {BackgroundColor3 = C.AccentDim}, 0.18)
            tw(GLbl,   {TextColor3 = C.AccentDim},       0.18)
            tw(GChev,  {TextColor3 = C.AccentDim},       0.18)
            task.delay(0.24, function()
                GBody.Visible = false
                tweening = false
            end)
        end
    end)

    GHead.MouseEnter:Connect(function()
        tw(GHead, {BackgroundColor3=C.CardHov, BackgroundTransparency=0})
    end)
    GHead.MouseLeave:Connect(function()
        tw(GHead, {BackgroundTransparency=1})
    end)

    -- helper: add a tab inside this group
    local function addTab(ico, lbl)
        local activateFn = makeTab(ico, lbl)
        -- move tab button from TabCont into GBody
        local btn = TabCont:FindFirstChild("Tab_"..lbl)
        if btn then btn.Parent = GBody end
        return activateFn
    end

    return addTab, finalize
end

-- ═══════════════════════════════════════
--  BUILD TABS
-- ═══════════════════════════════════════

-- ── GLOBAL group (collapsible) ────────────────────────────────────
local addGlobal, finalizeGlobal = makeGroup("Global")
local actMain   = addGlobal("*", "Main")
local actExtras = addGlobal("+", "Extras")

-- finalize must run after layout has settled so AbsoluteSize is correct
task.defer(finalizeGlobal)

actMain()

do local s = Pages["Main"]
    -- ── Loop Speed state ──────────────────────────────────────────
    local loopSpeedConn = nil
    local loopSpeed     = 50

    local function getHum()
        local plr  = game:GetService("Players").LocalPlayer
        local char = plr and plr.Character
        return char and char:FindFirstChildOfClass("Humanoid")
    end

    -- ── Speed section ─────────────────────────────────────────────
    mkSection(s, "Speed")

    -- Toggle: starts/stops the Heartbeat loop
    mkToggle(s, "Loop Speed", "Bypasses server WalkSpeed resets by re-applying every frame.", function(on)
        if on then
            loopSpeedConn = RUN.Heartbeat:Connect(function()
                local hum = getHum()
                if hum then hum.WalkSpeed = loopSpeed end
            end)
        else
            if loopSpeedConn then
                loopSpeedConn:Disconnect()
                loopSpeedConn = nil
            end
            -- Restore default WalkSpeed when toggled off
            pcall(function()
                local hum = getHum()
                if hum then hum.WalkSpeed = 16 end
            end)
        end
    end)

    -- Slider: 0–100, default 50 (16 is Roblox default, 50 is a nice jog)
    local _, setWalkSpeed = mkSlider(s, "Walk Speed", "Target WalkSpeed applied by the loop. Roblox default is 16.", 0, 100, 50, function(v)
        loopSpeed = v
        -- Apply immediately if loop is already running
        if loopSpeedConn then
            pcall(function()
                local hum = getHum()
                if hum then hum.WalkSpeed = loopSpeed end
            end)
        end
    end)

    -- Button: instant one-shot reset back to 16
    mkButton(s, "Reset Speed", "Instantly restores your WalkSpeed to the Roblox default (16).", "Reset", function()
        setWalkSpeed(16)
        pcall(function()
            local hum = getHum()
            if hum then hum.WalkSpeed = 16 end
        end)
    end)

    -- ── Lighting section ──────────────────────────────────────────
    mkSection(s, "Lighting")

    local light = game:GetService("Lighting")
    local fbConn = nil
    mkToggle(s, "Fullbright", "Removes shadows and forces ambient lighting to max.", function(on)
        if on then
            fbConn = RUN.RenderStepped:Connect(function()
                light.Ambient = Color3.new(1, 1, 1)
                light.OutdoorAmbient = Color3.new(1, 1, 1)
                light.Brightness = 2
                light.GlobalShadows = false
            end)
        else
            if fbConn then fbConn:Disconnect(); fbConn = nil end
            light.GlobalShadows = true
        end
    end)

    local charLightConn = nil
    local currentLight = nil
    mkToggle(s, "Character Light", "Adds a PointLight to your character to light up dark areas.", function(on)
        local plr = game:GetService("Players").LocalPlayer
        if on then
            local function addL(char)
                if currentLight then currentLight:Destroy() end
                local hrp = char:WaitForChild("HumanoidRootPart", 5)
                if hrp then
                    currentLight = Instance.new("PointLight")
                    currentLight.Range = 40
                    currentLight.Brightness = 1
                    currentLight.Shadows = false
                    currentLight.Parent = hrp
                end
            end
            if plr.Character then addL(plr.Character) end
            charLightConn = plr.CharacterAdded:Connect(addL)
        else
            if charLightConn then charLightConn:Disconnect(); charLightConn = nil end
            if currentLight then currentLight:Destroy(); currentLight = nil end
        end
    end)

    -- ── ESP section ───────────────────────────────────────────────
    mkSection(s, "ESP")

    local ESP_COLOR_PLAYER  = Color3.fromRGB(0, 130, 255)
    local ESP_COLOR_MONSTER = Color3.fromRGB(255, 50, 50)

    local function createESP(model, color)
        -- Remove any stale/broken highlight first
        local existing = model:FindFirstChild("BstlarESP")
        if existing then
            -- If already correct color, keep it; otherwise recreate
            if existing.FillColor == color then return end
            existing:Destroy()
        end
        local h = Instance.new("Highlight")
        h.Name            = "BstlarESP"
        h.FillColor       = color
        h.OutlineColor    = color
        h.FillTransparency    = 0.5
        h.OutlineTransparency = 0
        -- AlwaysOnTop so distance never hides it
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.Enabled   = true
        h.Parent    = model
    end

    local function removeESP(model)
        local h = model:FindFirstChild("BstlarESP")
        if h then h:Destroy() end
    end

    -- ── PLAYER ESP ─────────────────────────────────────────────────
    -- Fully event-driven: no polling loop, so it works at any distance
    -- and survives respawns and late-joins.
    local playerESPOn   = false
    local pespConns     = {}   -- [player] = {charConn, ...}
    local Players       = game:GetService("Players")

    local function pespAddChar(char)
        if not playerESPOn then return end
        createESP(char, ESP_COLOR_PLAYER)
    end

    local function pespTrackPlayer(p)
        if p == Players.LocalPlayer then return end
        if pespConns[p] then return end  -- already tracked
        local t = {}
        -- Apply to any existing character immediately
        if p.Character then
            task.defer(function()
                if playerESPOn and p.Character then
                    createESP(p.Character, ESP_COLOR_PLAYER)
                end
            end)
        end
        -- Re-apply on every respawn
        t.charConn = p.CharacterAdded:Connect(function(char)
            task.wait()  -- let char load 1 frame so HRP exists
            pespAddChar(char)
        end)
        pespConns[p] = t
    end

    local function pespUntrackPlayer(p)
        local t = pespConns[p]
        if t then
            if t.charConn then t.charConn:Disconnect() end
            pespConns[p] = nil
        end
        -- Remove highlight from their character if it exists
        if p.Character then removeESP(p.Character) end
    end

    local pespAddedConn   = nil
    local pespRemovedConn = nil

    mkToggle(s, "Player ESP", "Highlights other players in Blue through walls.", function(on)
        playerESPOn = on
        if on then
            -- Track all current players
            for _, p in ipairs(Players:GetPlayers()) do
                pespTrackPlayer(p)
            end
            -- Track future players
            pespAddedConn = Players.PlayerAdded:Connect(pespTrackPlayer)
            -- Clean up when a player leaves
            pespRemovedConn = Players.PlayerRemoving:Connect(pespUntrackPlayer)
        else
            -- Disconnect global watchers
            if pespAddedConn   then pespAddedConn:Disconnect();   pespAddedConn   = nil end
            if pespRemovedConn then pespRemovedConn:Disconnect(); pespRemovedConn = nil end
            -- Untrack & remove highlights from everyone
            for p, _ in pairs(pespConns) do
                pespUntrackPlayer(p)
            end
            pespConns = {}
        end
    end)

    -- ── MONSTER ESP ────────────────────────────────────────────────
    -- Uses DescendantAdded to catch new/respawned monsters instantly,
    -- plus a periodic sweep to clean dead ones.
    local monsterESPOn      = false
    local mespDescConn      = nil
    local mespSweepConn     = nil

    local function isMonster(v)
        if not v:IsA("Model") then return false end
        local hum = v:FindFirstChildOfClass("Humanoid")
        if not hum then return false end
        if hum.Health <= 0 then return false end
        if Players:GetPlayerFromCharacter(v) then return false end
        return true
    end

    local function mespApply(v)
        if not monsterESPOn then return end
        if isMonster(v) then
            createESP(v, ESP_COLOR_MONSTER)
        end
    end

    mkToggle(s, "Monster ESP", "Highlights non-player Humanoids (monsters) in Red.", function(on)
        monsterESPOn = on
        if on then
            -- Apply to all existing monsters right now
            for _, v in ipairs(workspace:GetDescendants()) do
                if isMonster(v) then
                    createESP(v, ESP_COLOR_MONSTER)
                end
            end
            -- Watch for newly added descendants (spawns / respawns)
            mespDescConn = workspace.DescendantAdded:Connect(function(desc)
                -- When a Humanoid is added, check its parent Model
                if desc:IsA("Humanoid") then
                    local model = desc.Parent
                    if model and isMonster(model) then
                        task.wait()  -- 1 frame for health/state to settle
                        if monsterESPOn and isMonster(model) then
                            createESP(model, ESP_COLOR_MONSTER)
                        end
                    end
                end
            end)
            -- Periodic sweep: re-apply to any that lost their highlight
            -- (e.g. model was cloned by the game), and remove from dead ones
            mespSweepConn = RUN.Heartbeat:Connect(function()
                -- throttle: run sweep every ~3 seconds using a counter
                -- we store tick on the connection table itself
                if not mespSweepConn then return end
                if not mespSweepConn._next then mespSweepConn._next = tick() + 3 end
                if tick() < mespSweepConn._next then return end
                mespSweepConn._next = tick() + 3
                for _, v in ipairs(workspace:GetDescendants()) do
                    if v:IsA("Model") and not Players:GetPlayerFromCharacter(v) then
                        local hum = v:FindFirstChildOfClass("Humanoid")
                        if hum then
                            if hum.Health > 0 then
                                -- alive monster - ensure ESP exists
                                createESP(v, ESP_COLOR_MONSTER)
                            else
                                -- dead - remove ESP
                                removeESP(v)
                            end
                        end
                    end
                end
            end)
        else
            if mespDescConn  then mespDescConn:Disconnect();  mespDescConn  = nil end
            if mespSweepConn then mespSweepConn:Disconnect(); mespSweepConn = nil end
            -- Remove all monster highlights
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("Model") and not Players:GetPlayerFromCharacter(v) then
                    removeESP(v)
                end
            end
        end
    end)

    -- ── Movement section ──────────────────────────────────────────
    mkSection(s, "Movement")
    
    local flySpeed = 50
    local flying = false
    local flyBg, flyBv

    mkToggle(s, "Fly", "Allows you to fly freely through the air.", function(on)
        local plr = game:GetService("Players").LocalPlayer
        flying = on
        if flying then
            local char = plr.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                local hrp = char.HumanoidRootPart
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then hum.PlatformStand = true end

                -- Create movers
                flyBg = Instance.new("BodyGyro", hrp)
                flyBg.P = 9e4
                flyBg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                flyBg.cframe = hrp.CFrame
                flyBv = Instance.new("BodyVelocity", hrp)
                flyBv.velocity = Vector3.new(0, 0.1, 0)
                flyBv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                
                -- Control loop
                task.spawn(function()
                    local camera = workspace.CurrentCamera
                    while flying and hrp and hrp.Parent do
                        local moveDir = Vector3.new()
                        if UIS:IsKeyDown(Enum.KeyCode.W) then moveDir = moveDir + camera.CFrame.LookVector end
                        if UIS:IsKeyDown(Enum.KeyCode.S) then moveDir = moveDir - camera.CFrame.LookVector end
                        if UIS:IsKeyDown(Enum.KeyCode.A) then moveDir = moveDir - camera.CFrame.RightVector end
                        if UIS:IsKeyDown(Enum.KeyCode.D) then moveDir = moveDir + camera.CFrame.RightVector end
                        
                        if moveDir.Magnitude > 0 then
                            flyBv.velocity = moveDir.Unit * flySpeed
                        else
                            flyBv.velocity = Vector3.new(0, 0, 0)
                        end
                        flyBg.cframe = camera.CFrame
                        task.wait()
                    end
                end)
            end
        else
            if flyBg then flyBg:Destroy(); flyBg = nil end
            if flyBv then flyBv:Destroy(); flyBv = nil end
            
            local char = plr.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then hum.PlatformStand = false end
            end
        end
    end)

    mkSlider(s, "Fly Speed", "Speed of flying. Range: 16 to 100.", 16, 100, 50, function(v)
        flySpeed = v
    end)

    local noclipConn = nil
    mkToggle(s, "Noclip", "Allows you to walk straight through solid walls.", function(on)
        local plr = game:GetService("Players").LocalPlayer
        if on then
            noclipConn = RUN.Stepped:Connect(function()
                if plr.Character then
                    for _, v in ipairs(plr.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConn then noclipConn:Disconnect(); noclipConn = nil end
        end
    end)

    -- ── Teleport section ──────────────────────────────────────────
    mkSection(s, "Teleport")
    
    mkDropdown(s, "Teleport to Player", "Click to select a player to teleport to.", function()
        local list = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= Players.LocalPlayer then
                table.insert(list, p.Name)
            end
        end
        return list
    end, function(selectedName)
        task.spawn(function()
            local target = Players:FindFirstChild(selectedName)
            if not (target and target.Character) then return end

            local tChar = target.Character
            -- Wait up to 5s for the target's HumanoidRootPart to be ready
            local tHRP = tChar:FindFirstChild("HumanoidRootPart")
            if not tHRP then
                tHRP = tChar:WaitForChild("HumanoidRootPart", 5)
            end
            if not tHRP then return end

            local lp    = Players.LocalPlayer
            local lChar = lp.Character
            if not lChar then return end
            local lHRP  = lChar:FindFirstChild("HumanoidRootPart")
            if not lHRP then return end

            -- Destination: 3 studs behind target
            local dest = tHRP.CFrame * CFrame.new(0, 0, 3)

            -- Try PivotTo first (works across any distance in executors)
            local ok = pcall(function()
                lChar:PivotTo(dest)
            end)
            if not ok then
                -- Fallback: SetPrimaryPartCFrame
                ok = pcall(function()
                    lChar:SetPrimaryPartCFrame(dest)
                end)
            end
            if not ok then
                -- Last resort: direct HRP CFrame assignment
                pcall(function()
                    lHRP.CFrame = dest
                end)
            end
        end)
    end)
end

do local s = Pages["Extras"]
    mkSection(s, "Overlay Counters")
    mkToggle (s, "Show FPS", "Display FPS in the corner.", function(v) showFPS = v; updateOverlayLayout() end)
    mkToggle (s, "Show Ping", "Display Ping in the corner.", function(v) showPing = v; updateOverlayLayout() end)
    mkToggle (s, "Show Players", "Display Player count in the corner.", function(v) showPlrs = v; updateOverlayLayout() end)
    mkToggle (s, "Show Game Name", "Display Game Name in the corner.", function(v) showGame = v; updateOverlayLayout() end)
    mkButton (s, "Overlay Corner", "Move overlay to the next corner.", "Cycle", function()
        olCorner = (olCorner % 4) + 1
        updateOverlayLayout()
    end)

    mkSection(s, "Extra Options")
    mkButton (s, "Copy discord link", "Join our Discord server for the latest updates, scripts, and support.", "Copy", function()
        if setclipboard then
            setclipboard("https://discord.gg/XafCedTnp")
        end
    end)

    local antiKickConn = nil
    mkToggle(s, "Anti Kick", "Prevents the 20-minute idle disconnect.", function(on)
        local plr = game:GetService("Players").LocalPlayer
        if on then
            local vu = game:GetService("VirtualUser")
            antiKickConn = plr.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
        else
            if antiKickConn then antiKickConn:Disconnect(); antiKickConn = nil end
        end
    end)

    local origLagSettings = {}
    mkToggle(s, "Anti Lag", "Disables every texture/material to save performance.", function(on)
        if on then
            origLagSettings = {}
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("Decal") or v:IsA("Texture") then
                    origLagSettings[v] = v.Transparency
                    v.Transparency = 1
                elseif v:IsA("BasePart") and not v.Parent:FindFirstChildOfClass("Humanoid") then
                    origLagSettings[v] = v.Material
                    v.Material = Enum.Material.SmoothPlastic
                end
            end
        else
            -- Restore original values
            for v, val in pairs(origLagSettings) do
                if v and v.Parent then
                    if v:IsA("BasePart") then
                        v.Material = val
                    else
                        v.Transparency = val
                    end
                end
            end
            origLagSettings = {}
        end
    end)

    mkSection(s, "Interface")
    local _, setThemeHue = mkSlider(s, "Theme Hue", "Change the GUI's main accent color.", 0, 360, 262, function(v) ApplyTheme(v/360) end)
    mkButton (s, "Randomize Theme", "Pick a random theme color.", "Random", function()
        local rndHue = math.random()
        ApplyTheme(rndHue)
        setThemeHue(math.floor(rndHue * 360 + 0.5))
    end)
    mkButton (s, "Reset Theme", "Reverts the GUI to its original purple color.", "Reset", function()
        ApplyTheme(262/360)
        setThemeHue(262)
    end)
    
    mkToggle (s, "Disable Window Drag", "Locks the main menu in place.", function(v) CanDragGUI = not v end)
    mkToggle (s, "Disable Button Drag", "Locks the open button in place.", function(v) CanDragPill = not v end)
    
    mkButton (s, "Reset Positions", "Returns the menu and open button to their original spots.", "Reset", function()
        tw(Win,  {Position = UDim2.new(0.5, 0, 0.5, -WIN_H/2)}, 0.38, Enum.EasingStyle.Quint)
        tw(Shad, {Position = UDim2.new(0.5, 0, 0.5, -WIN_H/2 - 20)}, 0.38, Enum.EasingStyle.Quint)
        tw(Pill, {Position = UDim2.new(0.5, -PW/2, 0, 24)}, 0.38, Enum.EasingStyle.Quint)
    end)
    
    mkSection(s, "Statistics")
    mkStatsCard(s)
end

-- ═══════════════════════════════════════
--  FLOATING PILL BUTTON
-- ═══════════════════════════════════════
local PW, PH = 208, 44
local Pill = mkB(SG, "",
    UDim2.new(0, PW, 0, PH),
    UDim2.new(0.5, -PW/2, 0, 24),
    Color3.fromRGB(12, 9, 20), "PillBtn", 20)
Pill.Visible = false
rnd(Pill, PH/2)
local PStroke = strk(Pill, C.Accent, 2)

mkL(Pill, "* +",
    UDim2.new(0,32,1,0), UDim2.new(0,10,0,0),
    C.AccentBrt, 14, FK.Black, "PIco", Enum.TextXAlignment.Center, 21)
mkL(Pill, "BstlarGui",
    UDim2.new(1,-46,1,0), UDim2.new(0,44,0,0),
    C.Text, 14, FK.Black, "PTxt", Enum.TextXAlignment.Left, 21)

Pill.MouseEnter:Connect(function()
    tw(Pill,   {BackgroundColor3=Color3.fromRGB(22,15,38)})
    tw(PStroke,{Color=C.AccentGlow})
end)
Pill.MouseLeave:Connect(function()
    tw(Pill,   {BackgroundColor3=Color3.fromRGB(12,9,20)})
    tw(PStroke,{Color=C.Accent})
end)

-- pill drag
local pD, pDS, pWS = false, nil, nil
local pMoved = false
Pill.InputBegan:Connect(function(i)
    if not CanDragPill then return end
    if i.UserInputType==Enum.UserInputType.MouseButton1 then
        pD=true; pDS=i.Position; pWS=Pill.Position; pMoved = false
    end
end)
UIS.InputChanged:Connect(function(i)
    if pD and i.UserInputType==Enum.UserInputType.MouseMovement then
        local d=i.Position-pDS
        if d.Magnitude > 3 then pMoved = true end
        Pill.Position=UDim2.new(pWS.X.Scale,pWS.X.Offset+d.X,pWS.Y.Scale,pWS.Y.Offset+d.Y)
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 then pD=false end
end)

-- ═══════════════════════════════════════
--  CLOSE / OPEN
-- ═══════════════════════════════════════
BClose.MouseButton1Click:Connect(function()
    Win.Visible  = false
    Shad.Visible = false
    Pill.Visible = true
end)

Pill.MouseButton1Click:Connect(function()
    if pMoved then return end
    Win.Visible  = true
    Shad.Visible = true
    Pill.Visible = false
end)

-- ═══════════════════════════════════════
--  MINIMIZE  →  collapse to title bar
--  Sidebar/Content explicitly hidden so
--  no tab buttons bleed through.
-- ═══════════════════════════════════════
local minimized = false
local TWEEN_DUR = 0.28

BMin.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        -- hide body immediately, then shrink
        Sidebar.Visible = false
        Content.Visible = false
        tw(Win,  {Size=UDim2.new(0,WIN_W,0,TITLE_H)},     TWEEN_DUR, Enum.EasingStyle.Quint)
        tw(Shad, {Size=UDim2.new(0,WIN_W+40,0,TITLE_H+40)}, TWEEN_DUR, Enum.EasingStyle.Quint)
    else
        -- expand first, body appears after tween
        tw(Win,  {Size=UDim2.new(0,WIN_W,0,WIN_H)},       TWEEN_DUR, Enum.EasingStyle.Quint)
        tw(Shad, {Size=UDim2.new(0,WIN_W+40,0,WIN_H+40)}, TWEEN_DUR, Enum.EasingStyle.Quint)
        -- show body once window has opened
        local conn; conn = RUN.Heartbeat:Connect(function()
            if Win.Size.Y.Offset >= WIN_H - 5 then
                Sidebar.Visible = true
                Content.Visible = true
                conn:Disconnect()
            end
        end)
    end
end)

-- ═══════════════════════════════════════
--  WINDOW DRAG
-- ═══════════════════════════════════════
local wD, wDS, wWS = false, nil, nil
TBar.InputBegan:Connect(function(i)
    if not CanDragGUI then return end
    if i.UserInputType==Enum.UserInputType.MouseButton1 then
        wD=true; wDS=i.Position; wWS=Win.Position
    end
end)
UIS.InputChanged:Connect(function(i)
    if wD and i.UserInputType==Enum.UserInputType.MouseMovement then
        local d=i.Position-wDS
        local np=UDim2.new(wWS.X.Scale,wWS.X.Offset+d.X,wWS.Y.Scale,wWS.Y.Offset+d.Y)
        Win.Position  = np
        Shad.Position = UDim2.new(np.X.Scale, np.X.Offset, np.Y.Scale, np.Y.Offset - 20)
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 then wD=false end
end)

-- ═══════════════════════════════════════
--  ENTRANCE ANIMATION
-- ═══════════════════════════════════════
-- Start invisible & slightly high, tween to centre while fading in
Win.BackgroundTransparency  = 1
Shad.BackgroundTransparency = 1
Win.Position  = UDim2.new(0.5, 0, 0.5, -WIN_H/2 + 22)
Shad.Position = UDim2.new(0.5, 0, 0.5, -WIN_H/2 - 20 + 22)
tw(Win,  {Position=UDim2.new(0.5, 0, 0.5, -WIN_H/2),  BackgroundTransparency=0},    0.38, Enum.EasingStyle.Quint)
tw(Shad, {Position=UDim2.new(0.5, 0, 0.5, -WIN_H/2 - 20), BackgroundTransparency=0.38}, 0.38, Enum.EasingStyle.Quint)

-- ═══════════════════════════════════════
--  PUBLIC API
-- ═══════════════════════════════════════
local BstlarGui = {}
function BstlarGui.AddSection(tab,...) return mkSection(Pages[tab],...) end
function BstlarGui.AddSlider (tab,...) return mkSlider (Pages[tab],...) end
function BstlarGui.AddButton (tab,...) return mkButton (Pages[tab],...) end
function BstlarGui.AddStatsCard(tab)   return mkStatsCard(Pages[tab])   end
function BstlarGui.AddTab    (ico,lb)  return makeTab  (ico,lb)         end

-- ═══════════════════════════════════════
--  STARTUP WARNING
-- ═══════════════════════════════════════
local warnFrame = Instance.new("Frame")
warnFrame.Name = "ReloadWarning"
warnFrame.Size = UDim2.new(0, 420, 0, 36)
warnFrame.AnchorPoint = Vector2.new(1, 1)
warnFrame.Position = UDim2.new(1, -20, 1, -20)
warnFrame.BackgroundColor3 = C.Card
warnFrame.BackgroundTransparency = 0.05
warnFrame.Parent = SG

local corner = Instance.new("UICorner", warnFrame)
corner.CornerRadius = UDim.new(0, 8)

local stroke = Instance.new("UIStroke", warnFrame)
stroke.Color = C.Border
stroke.Thickness = 1

local warnStrip = Instance.new("Frame")
warnStrip.Size = UDim2.new(0, 3, 0.6, 0)
warnStrip.Position = UDim2.new(0, 0, 0.2, 0)
warnStrip.BackgroundColor3 = C.Accent
warnStrip.BorderSizePixel = 0
warnStrip.Parent = warnFrame
local stripCorner = Instance.new("UICorner", warnStrip)
stripCorner.CornerRadius = UDim.new(0, 2)

local warnLbl = Instance.new("TextLabel")
warnLbl.Size = UDim2.new(1, -26, 1, 0)
warnLbl.Position = UDim2.new(0, 16, 0, 0)
warnLbl.BackgroundTransparency = 1
warnLbl.Text = "[!] Warning: Do not reload the script if you have toggles on to prevent things from breaking."
warnLbl.TextColor3 = C.Text
warnLbl.TextSize = 11
warnLbl.Font = FK.Bold
warnLbl.TextXAlignment = Enum.TextXAlignment.Left
warnLbl.TextYAlignment = Enum.TextYAlignment.Center
warnLbl.TextTruncate = Enum.TextTruncate.AtEnd
warnLbl.Parent = warnFrame

task.delay(10, function()
    tw(warnFrame, {BackgroundTransparency = 1}, 1)
    tw(stroke, {Transparency = 1}, 1)
    tw(warnStrip, {BackgroundTransparency = 1}, 1)
    tw(warnLbl, {TextTransparency = 1}, 1)
    task.delay(1.1, function() warnFrame:Destroy() end)
end)

return BstlarGui

