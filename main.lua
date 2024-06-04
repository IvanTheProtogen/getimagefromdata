-- Example:
-- newimagefromdata(Instance.new("ScreenGui", game:GetService("Players"):GetPlayers()[1].PlayerGui), 10, 10, UDim2.new(0.5, -10, 0.5, -5), {{1, 1, Color3.new(1, 0, 0)}, {2, 1, Color3.new(0, 0, 1)}});

local function newimagefromdata(parent,sizeX,sizeY,position,imagedata)
	local img = Instance.new("Frame",parent)
	img.BorderSizePixel = 0
	img.Position = position
	img.Size = UDim2.new(0,0,0,0)
	
	for i,v in pairs(imagedata) do
		local pxl = Instance.new("Frame",img)
		pxl.BorderSizePixel = 0
		pxl.Position = UDim2.new(0,((v[1]-1)*sizeX),0,((v[2]-1)*sizeY))
		pxl.Size = UDim2.new(0,sizeX,0,sizeY)
		pxl.BackgroundColor3 = v[3]
	end
	
	return img
end

