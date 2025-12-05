-- GreenMenu obfusqué (version light)

local _ch = string.char
local function _ds(t)
    local r = {}
    for i = 1, #t do
        r[i] = _ch(t[i])
    end
    return table.concat(r)
end

do
    -- Services & variables
    local a0 = workspace:WaitForChild(_ds({69,110,101,109,105,101,115})) -- "Enemies"
    local a1 = game:GetService(_ds({82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101})) -- "ReplicatedStorage"
    local a2 = a1:WaitForChild(_ds({82,101,109,111,116,101,115})):WaitForChild(_ds({83,104,111,111,116,69,110,101,109,121})) -- "Remotes" / "ShootEnemy"
    local a3 = game:GetService(_ds({80,108,97,121,101,114,115})) -- "Players"
    local a4 = a3.LocalPlayer
    local a5 = game:GetService(_ds({85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101})) -- "UserInputService"

    local b0 = 3
    local b1 = 40
    local b2 = 200
    local b3 = b1

    local b4 = false
    local b5 = 500

    -- Clé & URL obfusquées
    local c0 = _ds({75,101,121,49,55}) -- "Key17"
    local c1 = false
    local c2 = workspace.CurrentCamera

    -- https://discord.gg/ftgpvXvj
    local c3 = _ds({
        104,116,116,112,115,58,47,47,
        100,105,115,99,111,114,100,46,103,103,
        47,102,116,103,112,118,88,118,106
    })

    -- GUI principale
    local d0 = Instance.new(_ds({83,99,114,101,101,110,71,117,105}))
    d0.ResetOnSpawn = false
    d0.Name = _ds({71,114,101,101,110,77,101,110,117}) -- "GreenMenu"
    d0.Parent = a4:WaitForChild(_ds({80,108,97,121,101,114,71,117,105})) -- "PlayerGui"

    -- Fonction création GreenMenu
    local function e0()
        local e1 = Instance.new(_ds({70,114,97,109,101}))
        e1.Parent = d0
        e1.Size = UDim2.new(0, 420, 0, 340)
        e1.Position = UDim2.new(0, 20, 0, 200)
        e1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        e1.BackgroundTransparency = 0.4
        e1.BorderSizePixel = 0

        local e2 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        e2.CornerRadius = UDim.new(0, 10)
        e2.Parent = e1

        local e3 = Instance.new(_ds({85,73,83,116,114,111,107,101}))
        e3.Thickness = 2
        e3.Color = Color3.fromRGB(0, 255, 0)
        e3.Transparency = 0.3
        e3.Parent = e1

        local e4 = Instance.new(_ds({70,114,97,109,101}))
        e4.Parent = d0
        e4.Size = e1.Size
        e4.Position = e1.Position + UDim2.fromOffset(4, 4)
        e4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        e4.BackgroundTransparency = 0.7
        e4.BorderSizePixel = 0

        local e5 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        e5.CornerRadius = UDim.new(0, 10)
        e5.Parent = e4

        local e6 = Instance.new(_ds({70,114,97,109,101}))
        e6.Parent = e1
        e6.Size = UDim2.new(1, -10, 0, 32)
        e6.Position = UDim2.new(0, 5, 0, 3)
        e6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        e6.BackgroundTransparency = 0.2
        e6.BorderSizePixel = 0

        local e7 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        e7.CornerRadius = UDim.new(0, 10)
        e7.Parent = e6

        local e8 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
        e8.Parent = e6
        e8.Size = UDim2.new(1, -120, 1, 0)
        e8.Position = UDim2.new(0, 10, 0, 0)
        e8.BackgroundTransparency = 1
        e8.TextColor3 = Color3.fromRGB(150, 255, 150)
        e8.TextXAlignment = Enum.TextXAlignment.Left
        e8.TextScaled = true
        e8.Text = _ds({71,114,101,101,110,77,101,110,117,32,45,32,66,57}) -- "GreenMenu - B9"

        local e9 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
        e9.Parent = e6
        e9.Size = UDim2.new(0, 80, 0, 24)
        e9.Position = UDim2.new(1, -85, 0.5, -12)
        e9.BackgroundColor3 = Color3.fromRGB(20, 80, 20)
        e9.BackgroundTransparency = 0.1
        e9.TextColor3 = Color3.fromRGB(230, 255, 230)
        e9.TextScaled = true
        e9.Text = _ds({70,52,32,116,111,32,104,105,100,101}) -- "F4 to hide"
        e9.AutoButtonColor = true

        local f0 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        f0.CornerRadius = UDim.new(0, 8)
        f0.Parent = e9

        local f1 = Instance.new(_ds({73,109,97,103,101,76,97,98,101,108}))
        f1.Parent = e6
        f1.Size = UDim2.new(0, 24, 0, 24)
        f1.Position = UDim2.new(1, -115, 0.5, -12)
        f1.BackgroundTransparency = 1
        f1.Image = "rbxassetid://TON_IMAGE_ID_ICI" -- change ici si besoin
        f1.ImageColor3 = Color3.fromRGB(0, 255, 0)

        local f2 = false
        local f3

        e6.InputBegan:Connect(function(f4)
            if f4.UserInputType == Enum.UserInputType.MouseButton1 then
                f2 = true
                f3 = f4.Position - e1.AbsolutePosition
            end
        end)

        e6.InputEnded:Connect(function(f4)
            if f4.UserInputType == Enum.UserInputType.MouseButton1 then
                f2 = false
            end
        end)

        a5.InputChanged:Connect(function(f4)
            if f2 and f4.UserInputType == Enum.UserInputType.MouseMovement then
                e1.Position = UDim2.fromOffset(
                    f4.Position.X - f3.X,
                    f4.Position.Y - f3.Y
                )
                e4.Position = e1.Position + UDim2.fromOffset(4, 4)
            end
        end)

        local f5 = Instance.new(_ds({70,114,97,109,101}))
        f5.Parent = e1
        f5.Size = UDim2.new(1, -20, 1, -50)
        f5.Position = UDim2.new(0, 10, 0, 40)
        f5.BackgroundTransparency = 1

        local function f6(f7, f8, f9, g0)
            local g1 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
            g1.Parent = f7
            g1.Size = UDim2.new(1, 0, 0, 22)
            g1.Position = UDim2.new(0, 0, 0, f9)
            g1.BackgroundTransparency = 1
            g1.TextColor3 = g0
            g1.TextScaled = true
            g1.TextXAlignment = Enum.TextXAlignment.Left
            g1.TextWrapped = true
            g1.Text = f8
            return g1
        end

        f6(f5, _ds({77,97,107,101,32,115,117,114,101,32,121,111,117,32,104,97,118,101,32,97,32,66,57,32,111,110,32,121,111,117,46}), 0, Color3.fromRGB(220,255,220))
        f6(f5, _ds({79,110,108,121,32,117,115,101,32,66,111,115,115,32,77,111,100,101,32,119,104,101,110,32,116,104,101,32,98,111,115,115,32,105,115,32,97,99,116,105,118,101,46}), 24, Color3.fromRGB(255,200,200))
        f6(f5, _ds({68,105,115,97,98,108,101,32,97,117,116,111,45,108,111,111,116,32,119,104,105,108,101,32,121,111,117,39,114,101,32,102,105,103,104,116,105,110,103,32,116,104,101,32,98,111,115,115,32,111,114,32,121,111,117,39,108,108,32,98,101,32,111,110,101,45,115,104,111,116,116,101,100}), 48, Color3.fromRGB(255,120,120))

        local g2 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
        g2.Parent = f5
        g2.Size = UDim2.new(0, 160, 0, 36)
        g2.Position = UDim2.new(0, 0, 0, 80)
        g2.BackgroundColor3 = Color3.fromRGB(40, 80, 40)
        g2.BackgroundTransparency = 0.1
        g2.TextColor3 = Color3.fromRGB(230, 255, 230)
        g2.TextScaled = true
        g2.Text = _ds({65,117,116,111,75,105,108,108,58,32,79,70,70})

        local g3 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        g3.CornerRadius = UDim.new(0, 8)
        g3.Parent = g2

        local g4 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
        g4.Parent = f5
        g4.Size = UDim2.new(0, 200, 0, 36)
        g4.Position = UDim2.new(0, 0, 0, 124)
        g4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        g4.BackgroundTransparency = 0.1
        g4.TextColor3 = Color3.fromRGB(255, 240, 210)
        g4.TextScaled = true
        g4.Text = _ds({66,111,115,115,32,77,111,100,101,58,32,79,70,70})

        local g5 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
        g5.CornerRadius = UDim.new(0, 8)
        g5.Parent = g4

        local g6 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
        g6.Parent = f5
        g6.Size = UDim2.new(0, 200, 0, 36)
        g6.Position = UDim2.new(0, 180, 0, 80)
        g6.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        g6.BackgroundTransparency = 0.1
        g6.TextColor3 = Color3.fromRGB(220, 240, 255)
        g6.TextScaled = true
        g6.Text = _ds({76,111,111,116,71,114,97,98,58,32,79,70,70})

        f6(f5, _ds({82,105,103,104,116,32,67,116,114,108,58,32,116,111,103,103,108,101,32,65,117,116,111,75,105,108,108}), 168, Color3.fromRGB(200,255,200))
        f6(f5, _ds({76,101,102,116,32,67,116,114,108,58,32,116,111,103,103,108,101,32,66,111,115,115,32,77,111,100,101}), 192, Color3.fromRGB(200,200,255))
        f6(f5, _ds({73,110,115,101,114,116,58,32,116,111,103,103,108,101,32,76,111,111,116,71,114,97,98,32,40,53,48,48,32,115,116,117,100,115,41}), 216, Color3.fromRGB(200,230,255))

        local g7 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
        g7.Parent = f5
        g7.Size = UDim2.new(1, 0, 0, 20)
        g7.Position = UDim2.new(0, 0, 0, 240)
        g7.BackgroundTransparency = 1
        g7.TextColor3 = Color3.fromRGB(150, 200, 150)
        g7.TextScaled = true
        g7.TextXAlignment = Enum.TextXAlignment.Left
        g7.Text = _ds({77,97,100,101,32,98,121,32,74,97,99,107,83,104,111,119,115})

        local g8 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
        g8.Parent = f5
        g8.Size = UDim2.new(1, 0, 0, 20)
        g8.Position = UDim2.new(0, 0, 0, 280)
        g8.BackgroundTransparency = 1
        g8.TextColor3 = Color3.fromRGB(200, 255, 200)
        g8.TextScaled = true
        g8.TextXAlignment = Enum.TextXAlignment.Left
        g8.Text = _ds({83,116,97,116,117,115,58,32,73,100,108,101})

        local g9 = false
        local h0 = false
        local h1 = false

        local function h2()
            if g9 then
                g2.Text = _ds({65,117,116,111,75,105,108,108,58,32,79,78})
                g2.BackgroundColor3 = Color3.fromRGB(0,170,0)
            else
                g2.Text = _ds({65,117,116,111,75,105,108,108,58,32,79,70,70})
                g2.BackgroundColor3 = Color3.fromRGB(40,80,40)
            end

            if h0 then
                g4.Text = _ds({66,111,115,115,32,77,111,100,101,58,32,79,78})
                g4.BackgroundColor3 = Color3.fromRGB(120,80,20)
                b3 = b2
            else
                g4.Text = _ds({66,111,115,115,32,77,111,100,101,58,32,79,70,70})
                g4.BackgroundColor3 = Color3.fromRGB(40,40,40)
                b3 = b1
            end

            if b4 then
                g6.Text = _ds({76,111,111,116,71,114,97,98,58,32,79,78})
                g6.BackgroundColor3 = Color3.fromRGB(0,120,200)
            else
                g6.Text = _ds({76,111,111,116,71,114,97,98,58,32,79,70,70})
                g6.BackgroundColor3 = Color3.fromRGB(40,40,40)
            end

            local h3 = {}

            if g9 then
                local h4 = h0 and ( _ds({66,111,115,115,32,114,97,110,103,101,58,32}) .. tostring(b2) )
                    or ( _ds({78,111,114,109,97,108,32,114,97,110,103,101,58,32}) .. tostring(b1) )
                table.insert(h3, _ds({65,117,116,111,75,105,108,108,32,79,78,32,40}) .. h4 .. _ds({41}))
            else
                table.insert(h3, _ds({65,117,116,111,75,105,108,108,32,79,70,70}))
            end

            if b4 then
                table.insert(h3, _ds({76,111,111,116,71,114,97,98,32,79,78,32,40}) .. tostring(b5) .. _ds({32,115,116,117,100,115,41}))
            end

            g8.Text = _ds({83,116,97,116,117,115,58,32}) .. table.concat(h3, _ds({32,124,32}))

            f5.Visible = not h1
        end

        h2()

        g2.MouseButton1Click:Connect(function()
            g9 = not g9
            h2()
        end)

        g4.MouseButton1Click:Connect(function()
            h0 = not h0
            h2()
        end)

        g6.MouseButton1Click:Connect(function()
            b4 = not b4
            h2()
        end)

        e9.MouseButton1Click:Connect(function()
            h1 = not h1
            h2()
        end)

        a5.InputBegan:Connect(function(h5, h6)
            if h6 then return end

            local h7 = h5.KeyCode
            if h7 == Enum.KeyCode.RightControl then
                g9 = not g9
                h2()
            elseif h7 == Enum.KeyCode.LeftControl then
                h0 = not h0
                h2()
            elseif h7 == Enum.KeyCode.Insert then
                b4 = not b4
                h2()
            elseif h7 == Enum.KeyCode.F4 then
                d0.Enabled = not d0.Enabled
            end
        end)

        task.spawn(function()
            while true do
                task.wait()
                if not g9 then
                    continue
                end

                local h8 = a4.Character
                if not h8 then
                    continue
                end

                local h9 = h8:FindFirstChild(_ds({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116}))
                if not h9 then
                    continue
                end

                for i0, i1 in ipairs(a0:GetChildren()) do
                    local i2 = i1:FindFirstChild(_ds({72,101,97,100}))
                    local i3 = i1:FindFirstChild(_ds({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116})) or i2

                    if i2 and i3 then
                        local i4 = (i3.Position - h9.Position).Magnitude
                        if i4 <= b3 then
                            local i5 = i2.Position + Vector3.new(
                                math.random(-b0, b0),
                                math.random(-b0, b0),
                                math.random(-b0, b0)
                            )
                            a2:FireServer(i1, i2, i5, 0, _ds({66,57}))
                        end
                    end
                end
            end
        end)

        task.spawn(function()
            while true do
                task.wait(math.random(1, 2) / 10)
                if g9 then
                    pcall(function()
                        keypress(0x56)
                        task.wait()
                        keyrelease(0x56)
                    end)
                end
            end
        end)

        task.spawn(function()
            while true do
                task.wait(0.3)
                if not b4 then
                    continue
                end

                local i6 = a4.Character
                if not i6 then
                    continue
                end

                local i7 = i6:FindFirstChild(_ds({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116}))
                if not i7 then
                    continue
                end

                for _, i8 in ipairs(workspace:GetDescendants()) do
                    if i8:IsA(_ds({66,97,115,101,80,97,114,116}))
                        and i8:FindFirstChildOfClass(_ds({84,111,117,99,104,84,114,97,110,115,109,105,116,116,101,114}))
                        and not i8:IsDescendantOf(a4.Character)
                    then
                        local i9 = (i8.Position - i7.Position).Magnitude
                        if i9 <= b5 then
                            local j0 = i7.Position + Vector3.new(0, -2, 0)
                            i8.CFrame = CFrame.new(j0)
                        end
                    end
                end
            end
        end)
    end

    -- Menu de clé
    local j1 = Instance.new(_ds({70,114,97,109,101}))
    j1.Size = UDim2.new(0, 320, 0, 240)
    j1.Position = UDim2.new(0.5, -160, 0.5, -120)
    j1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    j1.BackgroundTransparency = 0.2
    j1.Parent = d0

    local j2 = Instance.new(_ds({85,73,67,111,114,110,101,114}))
    j2.CornerRadius = UDim.new(0, 12)
    j2.Parent = j1

    local j3 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
    j3.Size = UDim2.new(1, 0, 0, 40)
    j3.BackgroundTransparency = 1
    j3.Text = _ds({69,110,116,101,114,32,75,101,121})
    j3.TextScaled = true
    j3.TextColor3 = Color3.fromRGB(0, 255, 0)
    j3.Parent = j1

    local j4 = Instance.new(_ds({84,101,120,116,66,111,120}))
    j4.Size = UDim2.new(1, -40, 0, 40)
    j4.Position = UDim2.new(0, 20, 0, 70)
    j4.Text = ""
    j4.PlaceholderText = _ds({84,121,112,101,32,111,114,32,112,97,115,116,101,32,107,101,121,46,46,46})
    j4.TextScaled = true
    j4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    j4.TextColor3 = Color3.fromRGB(255, 255, 255)
    j4.ClearTextOnFocus = false
    j4.Parent = j1

    local j5 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
    j5.Size = UDim2.new(1, -60, 0, 36)
    j5.Position = UDim2.new(0, 30, 0, 120)
    j5.Text = _ds({86,97,108,105,100,97,116,101})
    j5.TextScaled = true
    j5.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    j5.TextColor3 = Color3.fromRGB(255, 255, 255)
    j5.Parent = j1

    local j6 = Instance.new(_ds({84,101,120,116,66,117,116,116,111,110}))
    j6.Size = UDim2.new(1, -60, 0, 30)
    j6.Position = UDim2.new(0, 30, 0, 160)
    j6.Text = _ds({71,101,116,32,75,101,121})
    j6.TextScaled = true
    j6.BackgroundColor3 = Color3.fromRGB(40, 40, 80)
    j6.TextColor3 = Color3.fromRGB(200, 220, 255)
    j6.Parent = j1

    local j7 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
    j7.Size = UDim2.new(1, -20, 0, 24)
    j7.Position = UDim2.new(0, 10, 0, 195)
    j7.BackgroundTransparency = 1
    j7.TextColor3 = Color3.fromRGB(150, 200, 255)
    j7.TextScaled = true
    j7.TextWrapped = true
    j7.Text = c3
    j7.Parent = j1

    local j8 = Instance.new(_ds({84,101,120,116,76,97,98,101,108}))
    j8.Size = UDim2.new(1, 0, 0, 30)
    j8.Position = UDim2.new(0, 0, 1, -30)
    j8.BackgroundTransparency = 1
    j8.TextColor3 = Color3.fromRGB(255, 80, 80)
    j8.Text = ""
    j8.TextScaled = true
    j8.Parent = j1

    task.spawn(function()
        while not c1 do
            task.wait()
            c2 = workspace.CurrentCamera or c2
            if c2 then
                c2.CameraType = Enum.CameraType.Scriptable
            end

            a5.MouseBehavior = Enum.MouseBehavior.Default
            a5.MouseIconEnabled = true

            if a5.OverrideMouseIconBehavior ~= Enum.OverrideMouseIconBehavior.ForceShow then
                a5.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
            end
        end
    end)

    task.delay(0.1, function()
        if j4 and j4:IsDescendantOf(d0) then
            j4:CaptureFocus()
        end
    end)

    local function k0()
        if typeof(getclipboard) == "function" then
            local k1 = getclipboard()
            if typeof(k1) == "string" then
                j4.Text = k1
            end
        end
    end

    a5.InputBegan:Connect(function(k2, k3)
        if k3 or c1 then return end
        if k2.KeyCode == Enum.KeyCode.V then
            if a5:IsKeyDown(Enum.KeyCode.LeftControl) or a5:IsKeyDown(Enum.KeyCode.RightControl) then
                k0()
            end
        end
    end)

    j6.MouseButton1Click:Connect(function()
        if typeof(setclipboard) == "function" then
            setclipboard(c3)
            j8.TextColor3 = Color3.fromRGB(120, 255, 120)
            j8.Text = _ds({76,105,110,107,32,99,111,112,105,101,100,32,116,111,32,99,108,105,112,98,111,97,114,100,33})
        else
            j4.Text = c3
            j8.TextColor3 = Color3.fromRGB(255, 200, 120)
            j8.Text = _ds({67,108,105,112,98,111,97,114,100,32,110,111,116,32,115,117,112,112,111,114,116,101,100,44,32,108,105,110,107,32,112,117,116,32,105,110,32,98,111,120,46})
        end

        task.delay(2, function()
            if j8 then
                j8.Text = ""
            end
        end)
    end)

    j5.MouseButton1Click:Connect(function()
        if j4.Text == c0 then
            c1 = true

            if workspace.CurrentCamera then
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            end
            a5.MouseIconEnabled = false
            a5.MouseBehavior = Enum.MouseBehavior.LockCenter
            a5.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None

            j1:Destroy()
            c0 = nil

            e0()
        else
            j8.TextColor3 = Color3.fromRGB(255, 80, 80)
            j8.Text = _ds({87,114,111,110,103,32,107,101,121,33})
            task.delay(1.5, function()
                if j8 then
                    j8.Text = ""
                end
            end)
        end
    end)
end

