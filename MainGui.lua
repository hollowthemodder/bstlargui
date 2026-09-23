--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 108 | Scripts: 13 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0.41915, 0, 0.68285, 0);
G2L["2"]["Position"] = UDim2.new(0.29054, 350, 0.15889, 270);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
-- Attributes
G2L["2"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ScreenGui.Frame.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Thickness"] = 1.5;
G2L["4"]["Color"] = Color3.fromRGB(141, 81, 255);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0.99943, 0, 0.05355, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Bstlar's Gui]];
G2L["5"]["Position"] = UDim2.new(0.49971, 0, 0.02585, 0);
-- Attributes
G2L["5"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel.UIStroke
G2L["6"] = Instance.new("UIStroke", G2L["5"]);
G2L["6"]["Color"] = Color3.fromRGB(171, 86, 255);
G2L["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Frame.Frame
G2L["7"] = Instance.new("Frame", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7"]["ClipsDescendants"] = true;
G2L["7"]["Size"] = UDim2.new(0.14278, 0, 0.93444, 0);
G2L["7"]["Position"] = UDim2.new(0.07139, 0, 0.53186, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
-- Attributes
G2L["7"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["8"] = Instance.new("TextButton", G2L["7"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(1, 0, 0.10277, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Main]];
G2L["8"]["Position"] = UDim2.new(0, 50, 0, 26);
-- Attributes
G2L["8"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Frame.TextButton.LocalScript
G2L["9"] = Instance.new("LocalScript", G2L["8"]);



-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["a"] = Instance.new("TextButton", G2L["7"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextScaled"] = true;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(0, 100, 0, 52);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Teleportation]];
G2L["a"]["Position"] = UDim2.new(0, 0, 0.10156, 0);


-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["b"] = Instance.new("TextButton", G2L["7"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextScaled"] = true;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["Size"] = UDim2.new(0, 100, 0, 52);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Local Player]];
G2L["b"]["Position"] = UDim2.new(0, 0, 0.20313, 0);


-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["c"] = Instance.new("TextButton", G2L["7"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["Size"] = UDim2.new(0, 100, 0, 52);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Autofarm]];
G2L["c"]["Position"] = UDim2.new(0, 0, 0.30469, 0);


-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["d"] = Instance.new("TextButton", G2L["7"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextScaled"] = true;
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["Size"] = UDim2.new(0, 100, 0, 52);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Fun]];
G2L["d"]["Position"] = UDim2.new(0, 0, 0.40625, 0);


-- StarterGui.ScreenGui.Frame.Frame.UIListLayout
G2L["e"] = Instance.new("UIListLayout", G2L["7"]);
G2L["e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Frame.Frame.TextButton
G2L["f"] = Instance.new("TextButton", G2L["7"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextScaled"] = true;
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["Size"] = UDim2.new(0, 100, 0, 52);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Donate]];
G2L["f"]["Position"] = UDim2.new(0, 0, 0.40625, 0);


-- StarterGui.ScreenGui.Frame.Frame.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["7"]);
G2L["10"]["Thickness"] = 1.5;
G2L["10"]["Color"] = Color3.fromRGB(141, 81, 255);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["11"] = Instance.new("TextLabel", G2L["2"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Size"] = UDim2.new(0.98372, 0, 0.02585, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[no key system needed]];
G2L["11"]["Position"] = UDim2.new(0.49829, 0, 1.012, 0);
-- Attributes
G2L["11"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["12"] = Instance.new("TextLabel", G2L["2"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextScaled"] = true;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Size"] = UDim2.new(0.73958, 0, 0.04986, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[Welcome, [username]];
G2L["12"]["Position"] = UDim2.new(0.57539, 0, 0.08864, 0);
-- Attributes
G2L["12"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel.LocalScript
G2L["13"] = Instance.new("LocalScript", G2L["12"]);



-- StarterGui.ScreenGui.Frame.Main
G2L["14"] = Instance.new("Frame", G2L["2"]);
G2L["14"]["Visible"] = false;
G2L["14"]["ZIndex"] = 2;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["Size"] = UDim2.new(0.84482, 0, 0.93675, 0);
G2L["14"]["Position"] = UDim2.new(0.71627, 0, 0.53001, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Main]];
-- Attributes
G2L["14"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.UIStroke
G2L["15"] = Instance.new("UIStroke", G2L["14"]);
G2L["15"]["Thickness"] = 1.5;
G2L["15"]["Color"] = Color3.fromRGB(171, 86, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame
G2L["16"] = Instance.new("ScrollingFrame", G2L["14"]);
G2L["16"]["Active"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(1.00362, 0, 0.99975, 0);
G2L["16"]["Position"] = UDim2.new(0.50024, 0, 0.49877, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
-- Attributes
G2L["16"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.UIStroke
G2L["17"] = Instance.new("UIStroke", G2L["16"]);
G2L["17"]["Thickness"] = 1.5;
G2L["17"]["Color"] = Color3.fromRGB(171, 86, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.UIListLayout
G2L["18"] = Instance.new("UIListLayout", G2L["16"]);
G2L["18"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["19"] = Instance.new("Frame", G2L["16"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["19"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["19"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["1a"] = Instance.new("TextLabel", G2L["19"]);
G2L["1a"]["TextWrapped"] = true;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextScaled"] = true;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1a"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[Join the discord]];
G2L["1a"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["1a"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["1b"] = Instance.new("UITextSizeConstraint", G2L["1a"]);
G2L["1b"]["MaxTextSize"] = 40;
G2L["1b"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["1c"] = Instance.new("TextLabel", G2L["19"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["TextScaled"] = true;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Size"] = UDim2.new(0.31153, 0, -0.25778, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[Automatically copies the discord link]];
G2L["1c"]["Position"] = UDim2.new(0, 90, 0, 45);
-- Attributes
G2L["1c"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["1d"] = Instance.new("UITextSizeConstraint", G2L["1c"]);
G2L["1d"]["MaxTextSize"] = 40;
G2L["1d"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["1e"] = Instance.new("TextButton", G2L["19"]);
G2L["1e"]["TextWrapped"] = true;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextScaled"] = true;
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[Do it]];
G2L["1e"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["1e"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["1f"] = Instance.new("LocalScript", G2L["1e"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["20"] = Instance.new("UITextSizeConstraint", G2L["1e"]);
G2L["20"]["MaxTextSize"] = 40;
G2L["20"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["19"]);
G2L["21"]["Thickness"] = 1.5;
G2L["21"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["22"] = Instance.new("Frame", G2L["16"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["22"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["22"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["23"] = Instance.new("TextLabel", G2L["22"]);
G2L["23"]["TextWrapped"] = true;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["TextSize"] = 14;
G2L["23"]["TextScaled"] = true;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["RichText"] = true;
G2L["23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["23"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[Get game information]];
G2L["23"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["23"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["24"] = Instance.new("UITextSizeConstraint", G2L["23"]);
G2L["24"]["MaxTextSize"] = 40;
G2L["24"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["25"] = Instance.new("TextLabel", G2L["22"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextScaled"] = true;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["25"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[Gets the informaton from the current roblox game. [FPS, ping, player count, etc]];
G2L["25"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["25"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["26"] = Instance.new("UITextSizeConstraint", G2L["25"]);
G2L["26"]["MaxTextSize"] = 40;
G2L["26"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["27"] = Instance.new("TextButton", G2L["22"]);
G2L["27"]["TextWrapped"] = true;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 14;
G2L["27"]["TextScaled"] = true;
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Do it]];
G2L["27"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["27"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["28"] = Instance.new("LocalScript", G2L["27"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["29"] = Instance.new("UITextSizeConstraint", G2L["27"]);
G2L["29"]["MaxTextSize"] = 40;
G2L["29"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["22"]);
G2L["2a"]["Thickness"] = 1.5;
G2L["2a"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["2b"] = Instance.new("Frame", G2L["16"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2b"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["2b"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["2b"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["2c"] = Instance.new("TextLabel", G2L["2b"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextScaled"] = true;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["RichText"] = true;
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[Serverhop]];
G2L["2c"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["2c"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["2d"] = Instance.new("UITextSizeConstraint", G2L["2c"]);
G2L["2d"]["MaxTextSize"] = 40;
G2L["2d"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["2e"] = Instance.new("TextLabel", G2L["2b"]);
G2L["2e"]["TextWrapped"] = true;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextScaled"] = true;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2e"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Automatically serverhops for you]];
G2L["2e"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["2e"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["2f"] = Instance.new("UITextSizeConstraint", G2L["2e"]);
G2L["2f"]["MaxTextSize"] = 40;
G2L["2f"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["30"] = Instance.new("TextButton", G2L["2b"]);
G2L["30"]["TextWrapped"] = true;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextScaled"] = true;
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Do it]];
G2L["30"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["30"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["31"] = Instance.new("LocalScript", G2L["30"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["32"] = Instance.new("UITextSizeConstraint", G2L["30"]);
G2L["32"]["MaxTextSize"] = 40;
G2L["32"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["33"] = Instance.new("UIStroke", G2L["2b"]);
G2L["33"]["Thickness"] = 1.5;
G2L["33"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["34"] = Instance.new("Frame", G2L["16"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["34"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["34"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["35"] = Instance.new("TextLabel", G2L["34"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextScaled"] = true;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["RichText"] = true;
G2L["35"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["35"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Anti Lag]];
G2L["35"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["35"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["36"] = Instance.new("UITextSizeConstraint", G2L["35"]);
G2L["36"]["MaxTextSize"] = 40;
G2L["36"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["37"] = Instance.new("TextLabel", G2L["34"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 14;
G2L["37"]["TextScaled"] = true;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[Disables all textures, attempting to fix lag.]];
G2L["37"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["37"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["38"] = Instance.new("UITextSizeConstraint", G2L["37"]);
G2L["38"]["MaxTextSize"] = 40;
G2L["38"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["39"] = Instance.new("TextButton", G2L["34"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextScaled"] = true;
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[Anti Lag: Off]];
G2L["39"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["39"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["3a"] = Instance.new("LocalScript", G2L["39"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["3b"] = Instance.new("UITextSizeConstraint", G2L["39"]);
G2L["3b"]["MaxTextSize"] = 40;
G2L["3b"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["3c"] = Instance.new("UIStroke", G2L["34"]);
G2L["3c"]["Thickness"] = 1.5;
G2L["3c"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["3d"] = Instance.new("Frame", G2L["16"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3d"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["3d"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["3d"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["3e"] = Instance.new("TextLabel", G2L["3d"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextSize"] = 14;
G2L["3e"]["TextScaled"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["RichText"] = true;
G2L["3e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3e"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[Anti Kick]];
G2L["3e"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["3e"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["3f"] = Instance.new("UITextSizeConstraint", G2L["3e"]);
G2L["3f"]["MaxTextSize"] = 40;
G2L["3f"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["40"] = Instance.new("TextLabel", G2L["3d"]);
G2L["40"]["TextWrapped"] = true;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextSize"] = 14;
G2L["40"]["TextScaled"] = true;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["40"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[Attempts to prevent you from being kicked for standing still for too long.]];
G2L["40"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["40"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["41"] = Instance.new("UITextSizeConstraint", G2L["40"]);
G2L["41"]["MaxTextSize"] = 40;
G2L["41"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["42"] = Instance.new("TextButton", G2L["3d"]);
G2L["42"]["TextWrapped"] = true;
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextScaled"] = true;
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[Anti Kick: Off]];
G2L["42"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["42"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["43"] = Instance.new("LocalScript", G2L["42"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["44"] = Instance.new("UITextSizeConstraint", G2L["42"]);
G2L["44"]["MaxTextSize"] = 40;
G2L["44"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["45"] = Instance.new("UIStroke", G2L["3d"]);
G2L["45"]["Thickness"] = 1.5;
G2L["45"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["46"] = Instance.new("Frame", G2L["16"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["46"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["46"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["46"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["47"] = Instance.new("TextLabel", G2L["46"]);
G2L["47"]["TextWrapped"] = true;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 14;
G2L["47"]["TextScaled"] = true;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["RichText"] = true;
G2L["47"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["47"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Drag Interface]];
G2L["47"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["47"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["48"] = Instance.new("UITextSizeConstraint", G2L["47"]);
G2L["48"]["MaxTextSize"] = 40;
G2L["48"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["49"] = Instance.new("TextLabel", G2L["46"]);
G2L["49"]["TextWrapped"] = true;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextSize"] = 14;
G2L["49"]["TextScaled"] = true;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["49"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[Toggle for dragging the interface]];
G2L["49"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["49"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["4a"] = Instance.new("UITextSizeConstraint", G2L["49"]);
G2L["4a"]["MaxTextSize"] = 40;
G2L["4a"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["4b"] = Instance.new("TextButton", G2L["46"]);
G2L["4b"]["TextWrapped"] = true;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["TextSize"] = 14;
G2L["4b"]["TextScaled"] = true;
G2L["4b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[On]];
G2L["4b"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["4b"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["4c"] = Instance.new("LocalScript", G2L["4b"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["4d"] = Instance.new("UITextSizeConstraint", G2L["4b"]);
G2L["4d"]["MaxTextSize"] = 40;
G2L["4d"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["4e"] = Instance.new("UIStroke", G2L["46"]);
G2L["4e"]["Thickness"] = 1.5;
G2L["4e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["4f"] = Instance.new("Frame", G2L["16"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4f"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["4f"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["4f"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["50"] = Instance.new("TextLabel", G2L["4f"]);
G2L["50"]["TextWrapped"] = true;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextSize"] = 14;
G2L["50"]["TextScaled"] = true;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["RichText"] = true;
G2L["50"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["50"]["Size"] = UDim2.new(0.31153, 0, 0.51024, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[Drag Button]];
G2L["50"]["Position"] = UDim2.new(0, 90, 0, 18);
-- Attributes
G2L["50"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["51"] = Instance.new("UITextSizeConstraint", G2L["50"]);
G2L["51"]["MaxTextSize"] = 40;
G2L["51"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["52"] = Instance.new("TextLabel", G2L["4f"]);
G2L["52"]["TextWrapped"] = true;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextScaled"] = true;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["52"]["Size"] = UDim2.new(0.31153, 0, -0.32748, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[Toggle for dragging the interface]];
G2L["52"]["Position"] = UDim2.new(0, 90, 0, 47);
-- Attributes
G2L["52"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["53"] = Instance.new("UITextSizeConstraint", G2L["52"]);
G2L["53"]["MaxTextSize"] = 40;
G2L["53"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["54"] = Instance.new("TextButton", G2L["4f"]);
G2L["54"]["TextWrapped"] = true;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["TextSize"] = 14;
G2L["54"]["TextScaled"] = true;
G2L["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["54"]["BackgroundTransparency"] = 1;
G2L["54"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[On]];
G2L["54"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["54"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["55"] = Instance.new("LocalScript", G2L["54"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["56"] = Instance.new("UITextSizeConstraint", G2L["54"]);
G2L["56"]["MaxTextSize"] = 40;
G2L["56"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["57"] = Instance.new("UIStroke", G2L["4f"]);
G2L["57"]["Thickness"] = 1.5;
G2L["57"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame
G2L["58"] = Instance.new("Frame", G2L["16"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["58"]["Size"] = UDim2.new(0.97835, 0, 0.05657, 0);
G2L["58"]["Position"] = UDim2.new(0, 290, 0, 14);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["58"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["59"] = Instance.new("TextLabel", G2L["58"]);
G2L["59"]["TextWrapped"] = true;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextScaled"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["RichText"] = true;
G2L["59"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["59"]["Size"] = UDim2.new(0.48291, 0, 0.51024, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[Replace Button and Interface]];
G2L["59"]["Position"] = UDim2.new(0, 140, 0, 18);
-- Attributes
G2L["59"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["5a"] = Instance.new("UITextSizeConstraint", G2L["59"]);
G2L["5a"]["MaxTextSize"] = 40;
G2L["5a"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel
G2L["5b"] = Instance.new("TextLabel", G2L["58"]);
G2L["5b"]["TextWrapped"] = true;
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 14;
G2L["5b"]["TextScaled"] = true;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5b"]["Size"] = UDim2.new(0.47243, 0, -0.32748, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[Puts both elements into their original spots.]];
G2L["5b"]["Position"] = UDim2.new(0, 137, 0, 47);
-- Attributes
G2L["5b"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextLabel.UITextSizeConstraint
G2L["5c"] = Instance.new("UITextSizeConstraint", G2L["5b"]);
G2L["5c"]["MaxTextSize"] = 40;
G2L["5c"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton
G2L["5d"] = Instance.new("TextButton", G2L["58"]);
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextScaled"] = true;
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Size"] = UDim2.new(0.34079, 0, 0.87979, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[Do it]];
G2L["5d"]["Position"] = UDim2.new(0, 478, 0, 27);
-- Attributes
G2L["5d"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
G2L["5e"] = Instance.new("LocalScript", G2L["5d"]);



-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.UITextSizeConstraint
G2L["5f"] = Instance.new("UITextSizeConstraint", G2L["5d"]);
G2L["5f"]["MaxTextSize"] = 40;
G2L["5f"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.UIStroke
G2L["60"] = Instance.new("UIStroke", G2L["58"]);
G2L["60"]["Thickness"] = 1.5;
G2L["60"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.ScreenGui.Frame.Main.LocalScript
G2L["61"] = Instance.new("LocalScript", G2L["14"]);



-- StarterGui.ScreenGui.Frame.TextLabel
G2L["62"] = Instance.new("TextLabel", G2L["2"]);
G2L["62"]["TextWrapped"] = true;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextScaled"] = true;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["62"]["Size"] = UDim2.new(0.73958, 0, 0.09049, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[Start by clicking any of the buttons on the side!]];
G2L["62"]["Position"] = UDim2.new(0.57539, 0, 0.15882, 0);
-- Attributes
G2L["62"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["63"] = Instance.new("TextLabel", G2L["2"]);
G2L["63"]["TextWrapped"] = true;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextScaled"] = true;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["63"]["Size"] = UDim2.new(0.69389, 0, 0.06279, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[discord: f4t4l1ty_err404
]];
G2L["63"]["Position"] = UDim2.new(0.55254, 0, 0.96676, 0);
-- Attributes
G2L["63"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["64"] = Instance.new("TextLabel", G2L["2"]);
G2L["64"]["TextWrapped"] = true;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextScaled"] = true;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundTransparency"] = 1;
G2L["64"]["RichText"] = true;
G2L["64"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["64"]["Size"] = UDim2.new(0.69389, 0, 0.03693, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[youtube: @fatality404err0r]];
G2L["64"]["Position"] = UDim2.new(0.55254, 0, 0.9169, 0);
-- Attributes
G2L["64"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["65"] = Instance.new("TextLabel", G2L["2"]);
G2L["65"]["TextWrapped"] = true;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["TextSize"] = 14;
G2L["65"]["TextScaled"] = true;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["65"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["65"]["TextColor3"] = Color3.fromRGB(255, 255, 0);
G2L["65"]["BackgroundTransparency"] = 1;
G2L["65"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["65"]["Size"] = UDim2.new(0.73958, 0, 0.14866, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Text"] = [[Warning! You are playing in a very beta version. Things have a high chance of not working or breaking. If there are bugs report them to me. There is also not a lot yet.]];
G2L["65"]["Position"] = UDim2.new(0.57539, 0, 0.27839, 0);
-- Attributes
G2L["65"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.TextButton
G2L["66"] = Instance.new("TextButton", G2L["1"]);
G2L["66"]["TextWrapped"] = true;
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["TextSize"] = 50;
G2L["66"]["TextScaled"] = true;
G2L["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["66"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["66"]["Size"] = UDim2.new(0.04252, 0, 0.07566, 0);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Text"] = [[p]];
G2L["66"]["Position"] = UDim2.new(0.49252, 30, 0.03783, 29);
-- Attributes
G2L["66"]:SetAttribute([[AutoScaleDefaultsApplied]], true);


-- StarterGui.ScreenGui.TextButton.LocalScript
G2L["67"] = Instance.new("LocalScript", G2L["66"]);



-- StarterGui.ScreenGui.TextButton.LocalScript
G2L["68"] = Instance.new("LocalScript", G2L["66"]);



-- StarterGui.ScreenGui.TextButton.Sound
G2L["69"] = Instance.new("Sound", G2L["66"]);
G2L["69"]["Volume"] = 0.25;
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["69"]["SoundId"] = [[rbxassetid://129584950954499]];


-- StarterGui.ScreenGui.TextButton.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["66"]);



-- StarterGui.ScreenGui.TextButton.UIStroke
G2L["6b"] = Instance.new("UIStroke", G2L["66"]);
G2L["6b"]["Thickness"] = 1.5;
G2L["6b"]["Color"] = Color3.fromRGB(141, 81, 255);
G2L["6b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.TextButton.UITextSizeConstraint
G2L["6c"] = Instance.new("UITextSizeConstraint", G2L["66"]);
G2L["6c"]["MaxTextSize"] = 40;
G2L["6c"]["MinTextSize"] = 8;


-- StarterGui.ScreenGui.Frame.Frame.TextButton.LocalScript
local function C_9()
local script = G2L["9"];
	local button = script.Parent
	-- This goes up two levels to find the target frame
	local frame = button.Parent.Parent.Main
	
	button.MouseButton1Click:Connect(function()
		-- Toggles between visible (true) and hidden (false)
		frame.Visible = not frame.Visible
	end)
	
	
end;
task.spawn(C_9);
-- StarterGui.ScreenGui.Frame.TextLabel.LocalScript
local function C_13()
local script = G2L["13"];
	local textLabel = script.Parent
	local Players = game:GetService("Players")
	
	-- Get the player running the script
	local localPlayer = Players.LocalPlayer
	
	-- Wait for the player's name to load, then update the text
	if localPlayer then
		textLabel.Text = "Welcome, " .. localPlayer.Name
	end
	
	
end;
task.spawn(C_13);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_1f()
local script = G2L["1f"];
	local button = script.Parent
	
	-- Your specific Discord invite link
	local discordLink = "https://discord.gg/Sj4Z6jMfA"
	
	button.MouseButton1Click:Connect(function()
		-- 1. Check if running in a third-party executor that supports clipboard access
		if setclipboard then
			setclipboard(discordLink)
	
			-- 2. Visual feedback so the player knows it worked
			local originalText = button.Text
			button.Text = "Copied to Clipboard!"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Optional: Turn text green briefly
	
			task.wait(1.5)
	
			button.Text = originalText
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text color back to white
		else
			-- Fallback notice if running inside Roblox Studio play-test mode
			warn("setclipboard() is only supported when running via your executor.")
			button.Text = "Failed!"
			task.wait(1)
			button.Text = "Get it"
		end
	end)
	
	
end;
task.spawn(C_1f);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_28()
local script = G2L["28"];
	local button = script.Parent
	local Workspace = game:GetService("Workspace")
	local Players = game:GetService("Players")
	local Stats = game:GetService("Stats")
	local MarketplaceService = game:GetService("MarketplaceService")
	
	-- 1. Function to calculate current FPS
	local function getFPS()
		local currentFPS = 60 -- Default fallback
		local success, err = pcall(function()
			currentFPS = math.round(1 / Workspace:GetRealPhysicsFPS())
		end)
		return currentFPS
	end
	
	-- 2. Function to get current Network Ping
	local function getPing()
		local currentPing = 0
		local success, err = pcall(function()
			-- Pulls the round-trip latency network performance metric
			currentPing = math.round(Stats.Network.ServerToClientPing:GetValue())
		end)
		return currentPing
	end
	
	-- 3. Function to get the Game Title safely
	local function getGameTitle()
		local gameName = "Unknown Game"
		local success, err = pcall(function()
			local productInfo = MarketplaceService:GetProductInfoAsync(game.PlaceId)
			if productInfo and productInfo.Name then
				gameName = productInfo.Name
			end
		end)
		return gameName
	end
	
	-- When the button is clicked:
	button.MouseButton1Click:Connect(function()
		-- Gather data fields
		local fpsText = tostring(getFPS())
		local pingText = tostring(getPing()) .. "ms"
		local gameText = getGameTitle()
		local playersCount = tostring(#Players:GetPlayers())
	
		-- Format the payload text exactly to your layout requirements
		local clipboardPayload = string.format(
			"FPS : %s\nPing : %s\nGame: %s\nPlayers: %s",
			fpsText,
			pingText,
			gameText,
			playersCount
		)
	
		-- Execute the copy command
		if setclipboard then
			setclipboard(clipboardPayload)
	
			-- Visual success confirmation feedback
			local originalText = button.Text
			button.Text = "Stats Copied!"
			task.wait(1.5)
			button.Text = originalText
		else
			warn("setclipboard() is only available when executed via your software injector.")
			print("\n--- Clipboard Output Simulation ---\n" .. clipboardPayload)
		end
	end)
	
	
end;
task.spawn(C_28);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_31()
local script = G2L["31"];
	local button = script.Parent
	local TeleportService = game:GetService("TeleportService")
	local Players = game:GetService("Players")
	
	local localPlayer = Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		-- 1. Visual feedback showing the process is starting
		button.Text = "Finding Server..."
		button.Active = false -- Disables the button to prevent spam-clicking
	
		-- 2. Attempt to find and jump into a different server instance
		local success, err = pcall(function()
			-- TeleportAsync handles fetching a fresh server instance automatically
			TeleportService:TeleportAsync(game.PlaceId, {localPlayer})
		end)
	
		-- 3. If the request fails (e.g., Roblox servers are lagging), reset the button
		if not success then
			warn("Server hop failed: " .. tostring(err))
			button.Text = "Failed!"
			button.Active = true
	
			task.wait(2)
			button.Text = "Do it"
		end
	end)
	
	
	
end;
task.spawn(C_31);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_3a()
local script = G2L["3a"];
	local button = script.Parent
	local Workspace = game:GetService("Workspace")
	
	local antiLagEnabled = false
	local textureCache = {} -- Keeps a secure log of original texture IDs to restore them later
	local connections = {} -- Tracks active listeners for newly spawned objects
	
	-- A comprehensive list of texture assets we want to modify to reduce rendering overhead
	local textureClasses = {
		"Texture", "Decal", "RoofFastener", "FloorFastener", 
		"WallFastener", "Beam", "Trail", "ParticleEmitter", "Smoke", "Sparkles"
	}
	
	-- Checks if an object belongs to our texture target list
	local function isTexture(obj)
		for _, className in ipairs(textureClasses) do
			if obj:IsA(className) then
				return true
			end
		end
		return false
	end
	
	-- Disables a texture and logs its original asset ID
	local function clearTexture(obj)
		if isTexture(obj) and not textureCache[obj] then
			if obj:IsA("Texture") or obj:IsA("Decal") then
				textureCache[obj] = obj.Texture
				obj.Texture = ""
			elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
				textureCache[obj] = obj.Enabled
				obj.Enabled = false
			elseif obj:IsA("Beam") or obj:IsA("Trail") then
				textureCache[obj] = obj.Enabled
				obj.Enabled = false
			end
		end
	end
	
	-- Toggles the entire game environment state
	local function toggleAntiLag()
		antiLagEnabled = not antiLagEnabled
	
		if antiLagEnabled then
			button.Text = "Anti-Lag: ON"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green text feedback
	
			-- 1. Wipe existing textures in the world
			for _, descendant in ipairs(Workspace:GetDescendants()) do
				clearTexture(descendant)
			end
	
			-- 2. Catch future objects that stream into your rendering zone
			connections.ItemAdded = Workspace.DescendantAdded:Connect(function(descendant)
				clearTexture(descendant)
			end)
		else
			button.Text = "Anti-Lag: OFF"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text color back to white
	
			-- 1. Safely disconnect background monitoring listeners
			if connections.ItemAdded then
				connections.ItemAdded:Disconnect()
				connections.ItemAdded = nil
			end
	
			-- 2. Restore all original texture IDs from our secure log cache
			for obj, originalAsset in pairs(textureCache) do
				if obj and obj.Parent then
					pcall(function()
						if obj:IsA("Texture") or obj:IsA("Decal") then
							obj.Texture = originalAsset
						else
							obj.Enabled = originalAsset
						end
					end)
				end
			end
	
			-- 3. Clear our memory cache tracking ledger completely
			table.clear(textureCache)
		end
	end
	
	button.MouseButton1Click:Connect(toggleAntiLag)
	
	
end;
task.spawn(C_3a);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_43()
local script = G2L["43"];
	local button = script.Parent
	local Players = game:GetService("Players")
	local VirtualUser = game:GetService("VirtualUser")
	
	local localPlayer = Players.LocalPlayer
	local antiAfkEnabled = false
	local idleConnection = nil
	
	-- The function that tricks the engine when you go idle
	local function preventKick()
		if antiAfkEnabled then
			-- Captures control of the input layer and simulates a right-click
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new(0, 0))
	
			-- Optional: Output feedback to your executor console
			print("Anti-AFK: Keystroke simulated to prevent disconnection!")
		end
	end
	
	-- Toggles the state of the button
	local function toggleAntiAfk()
		antiAfkEnabled = not antiAfkEnabled
	
		if antiAfkEnabled then
			button.Text = "Anti-AFK: On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Turn text green
	
			-- Connect to Roblox's idle tracking event
			idleConnection = localPlayer.Idled:Connect(preventKick)
		else
			button.Text = "Anti-AFK: Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text white
	
			-- Disconnect the listener safely
			if idleConnection then
				idleConnection:Disconnect()
				idleConnection = nil
			end
		end
	end
	
	button.MouseButton1Click:Connect(toggleAntiAfk)
	
	
end;
task.spawn(C_43);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_4c()
local script = G2L["4c"];
	local UserInputService = game:GetService("UserInputService")
	local button = script.Parent
	
	-- Uses your exact absolute path layout directly
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame
	
	-- Configurations: Set to true by default
	local dragEnabled = true 
	local dragging, dragInput, dragStart, startPos
	
	-- 1. Manage the toggle states and button text ("On" and "Off")
	local function toggleDragging()
		dragEnabled = not dragEnabled
	
		if dragEnabled then
			button.Text = "On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green feedback text
		else
			button.Text = "Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White feedback text
			dragging = false -- Resets status if locked mid-drag
		end
	end
	
	-- Initialize the button's starting look to match the default "On" status
	button.Text = "Window Drag: On"
	button.TextColor3 = Color3.fromRGB(50, 220, 100)
	button.MouseButton1Click:Connect(toggleDragging)
	
	-- 2. Handle the core drag-and-drop mechanics
	local function updateDrag(input)
		local delta = input.Position - dragStart
		if mainFrame then
			mainFrame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X, 
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end
	
	if mainFrame then
		mainFrame.InputBegan:Connect(function(input)
			-- Instantly block dragging interactions if toggled to "Off"
			if not dragEnabled then return end
	
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = mainFrame.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		mainFrame.InputChanged:Connect(function(input)
			if not dragEnabled then return end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and dragEnabled then
				updateDrag(input)
			end
		end)
	else
		warn("Loader Alert: Could not find the main window Frame object using the specified layout paths.")
	end
	
	
end;
task.spawn(C_4c);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_55()
local script = G2L["55"];
	local UserInputService = game:GetService("UserInputService")
	local button = script.Parent
	
	-- Uses your exact absolute path layout directly
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.TextButton
	
	-- Configurations: Set to true by default
	local dragEnabled = true 
	local dragging, dragInput, dragStart, startPos
	
	-- 1. Manage the toggle states and button text ("On" and "Off")
	local function toggleDragging()
		dragEnabled = not dragEnabled
	
		if dragEnabled then
			button.Text = "On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green feedback text
		else
			button.Text = "Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White feedback text
			dragging = false -- Resets status if locked mid-drag
		end
	end
	
	-- Initialize the button's starting look to match the default "On" status
	button.Text = "Window Drag: On"
	button.TextColor3 = Color3.fromRGB(50, 220, 100)
	button.MouseButton1Click:Connect(toggleDragging)
	
	-- 2. Handle the core drag-and-drop mechanics
	local function updateDrag(input)
		local delta = input.Position - dragStart
		if mainFrame then
			mainFrame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X, 
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end
	
	if mainFrame then
		mainFrame.InputBegan:Connect(function(input)
			-- Instantly block dragging interactions if toggled to "Off"
			if not dragEnabled then return end
	
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = mainFrame.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		mainFrame.InputChanged:Connect(function(input)
			if not dragEnabled then return end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and dragEnabled then
				updateDrag(input)
			end
		end)
	else
		warn("Loader Alert: Could not find the main window Frame object using the specified layout paths.")
	end
	
	
end;
task.spawn(C_55);
-- StarterGui.ScreenGui.Frame.Main.ScrollingFrame.Frame.TextButton.LocalScript
local function C_5e()
local script = G2L["5e"];
	local button = script.Parent
	
	-- 1. Paths to your elements (Adjust these to match your exact hierarchy)
	-- Change this path to point exactly to your main background Frame object
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame
	-- Change this path to point exactly to your cool opening TextButton object
	local openButton = script.Parent.Parent.Parent.Parent.Parent.Parent.TextButton -- Change "OpenButton" to its real name
	
	-- 2. Save the original positions into memory immediately when the script executes
	local originalFramePosition = mainFrame.Position
	local originalButtonPosition = openButton.Position
	
	-- When the reset button is clicked:
	button.MouseButton1Click:Connect(function()
		if mainFrame then
			-- Instantly snap the main window back to its true centered position
			mainFrame.Position = originalFramePosition
		end
	
		if openButton then
			-- Instantly snap the draggable opening button back to its starting spot
			openButton.Position = originalButtonPosition
		end
	
		-- Quick visual confirmation on the reset button text
		local originalText = button.Text
		button.Text = "Positions Reset!"
		task.wait(1.5)
		button.Text = originalText
	end)
	
end;
task.spawn(C_5e);
-- StarterGui.ScreenGui.Frame.Main.LocalScript
local function C_61()
local script = G2L["61"];
	local mainFrame = script.Parent
	
	-- 1. Safely locate your scrolling container
	local scrollingFrame = mainFrame:FindFirstChildOfClass("ScrollingFrame")
	if not scrollingFrame then
		for _, child in ipairs(mainFrame:GetDescendants()) do
			if child:IsA("ScrollingFrame") then
				scrollingFrame = child
				break
			end
		end
	end
	
	-- 2. Force ONLY the absolute positioning anchors to lock together
	if scrollingFrame then
		-- Fixes the scrolling window container so it sticks to the center of Main
		scrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		scrollingFrame.Position = UDim2.new(0.5, 0, 0.53, 0) -- Centered vertically right below header
	
		-- Fixes every single sub-menu frame/row inside the scroll area
		for _, row in ipairs(scrollingFrame:GetChildren()) do
			if row:IsA("Frame") or row:IsA("TextButton") or row:IsA("TextLabel") then
				-- Pins the top-center of the row to the center axis of the frame
				row.AnchorPoint = Vector2.new(0.5, 0)
				row.Position = UDim2.new(0.5, 0, row.Position.Y.Scale, row.Position.Y.Offset)
			end
		end
	end
	
end;
task.spawn(C_61);
-- StarterGui.ScreenGui.TextButton.LocalScript
local function C_67()
local script = G2L["67"];
	local button = script.Parent
	
	-- Save your default color and your custom hover color
	local normalColor = Color3.fromRGB(30, 30, 30)
	local hoverColor = Color3.fromRGB(45, 45, 45) -- Slightly brighter when hovered
	
	-- Change color when mouse enters the button area
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	-- Revert color when mouse leaves the button area
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = normalColor
	end)
	
	
end;
task.spawn(C_67);
-- StarterGui.ScreenGui.TextButton.LocalScript
local function C_68()
local script = G2L["68"];
	local button = script.Parent
	local sound = button:WaitForChild("Sound")
	
	-- Find your main hidden window frame
	local screenGui = button.Parent
	local mainFrame = screenGui:WaitForChild("Frame") -- Change "Frame" if you renamed it
	
	-- When the button is clicked:
	button.MouseButton1Click:Connect(function()
		-- Only play the sound if the frame is currently invisible (closed)
		if not mainFrame.Visible then
			sound:Play()
		end
	
		-- Toggle the visibility of the frame
		mainFrame.Visible = not mainFrame.Visible
	end)
	
end;
task.spawn(C_68);

return G2L["1"], require;
