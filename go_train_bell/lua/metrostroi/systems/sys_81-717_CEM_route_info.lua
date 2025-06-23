--отображение номера маршрута и конечной станции на табло

Metrostroi.DefineSystem("81_717_CEM_route_info")

TRAIN_SYSTEM.DontAccelerateSimulation = true
if TURBOSTROI then return end

if CLIENT then

	local function ShortingString(str)
		if #str <= 17*2 - 1 then return str end
		local sogltbl = {"б","в","г","д","ж","з","к","л","м","н","п","р","с","т","ф","х","ц","ч","ш","щ"}
		for i = 1, #str do
			for k,v in pairs(sogltbl) do
				local startpos = string.find(str,v,i)
				if startpos then 
					if startpos <= 15*2 then 
						return string.sub(str,1,startpos + 1).."." 
					end
				end
			end
		end
		return str
	end

	local function GetLastStation(self)
		if not Metrostroi.StationConfigurations or not Metrostroi.ASNPSetup then
			return "Обкатка"
		else
			if self.ASNPState < 7 then return "Посадки нет" end
			local Selected = Metrostroi.ASNPSetup[self:GetNW2Int("Announcer",0)] or nil
			local Line = Selected and Selected[self:GetNW2Int("ASNP:Line",0)] or nil
			local Path = self:GetNW2Bool("ASNP:Path",false)
			local Station = Line and (not Path and Line[self:GetNW2Int("ASNP:LastStation",0)] or Path and Line[self:GetNW2Int("ASNP:FirstStation",0)]) or nil		--красивый враиант. Спереди показывается одна станция, сзади другая
			--local Station = Line and Line[self:GetNW2Int("ASNP:LastStation",0)] or nil		--вариант, как в реальности. То есть и спереди и сзади одна и та же станция
			if Station then Station = Station[2] or nil end
			if Line and not Station then Station = "Кольцевая" end
			if Station then return Station else return "Посадки нет" end
		end
	end
	
	local maxdist = 1024 * 1024 *2 *2 *2 *2 *2

	function TRAIN_SYSTEM:ClientInitialize()
		local self = self.Train
		self.GettedLastStation = ""
		self.LastGettedLastStation = 0
		self.ASNPState = self:GetNW2Int("ASNP:State",-1)
		self.ButtonMap["InfoRoute"] = {
			pos = Vector(469.1,-47,68),
			ang = Angle(0,90,90),
			width = 100,
			height = 100,
			scale = 0.15,
		}
		self.ButtonMap["InfoTable"] = {
			pos = Vector(469.1,-39.0,38.0),
			ang = Angle(0,90,90),
			width = 646,
			height = 100,
			scale = 0.1,
		}
	end
	
	function TRAIN_SYSTEM:ClientDraw()
		local self = self.Train
		if not self.DistanceToPlayer or self.DistanceToPlayer > maxdist then return end
		
		if os.time() - self.LastGettedLastStation > 1 then
			self.LastGettedLastStation = os.time()
			self.ASNPState = self:GetNW2Int("ASNP:State",-1)
			self.GettedLastStation = ShortingString(GetLastStation(self))
		end
		
		if self.ASNPState < 1 then return end
		
		self:DrawOnPanel("InfoRoute",function()
			--surface.SetAlphaMultiplier(1)
			--surface.SetDrawColor(0,0,0) --255*dc.x,250*dc.y,220*dc.z)
			--surface.DrawRect(2,100,88,70)
			local rn = Format("%02d",self:GetNW2Int("ASNP:RouteNumber","00"))
			--print(self:GetNW2Int("RouteNumber1"))
			draw.Text({
				text = rn,
				font = "Metrostroi_ILGAo",--..self:GetNWInt("Style",1),
				pos = { 44, 135 },
				xalign = TEXT_ALIGN_CENTER,
				yalign = TEXT_ALIGN_CENTER,
				color = Color(255,160,0,255)})
		end)
		self:DrawOnPanel("InfoTable",function()
			--if self:GetNW2String("FrontText") == nil or self:GetNW2String("FrontText") == "" or not self:GetNW2String("FrontText") then return end		
			--print(Metrostroi.ASNPSetup[self:GetNW2Int("Announcer",1)][self:GetNW2Bool("ASNP:Path",false) and 2 or 1][self:GetNW2Int("ASNP:LastStation")][2])
			--surface.SetDrawColor(0,0,0) --255*dc.x,250*dc.y,220*dc.z)
			--surface.DrawRect(50,0,54,00)
			draw.Text({
				text = self.GettedLastStation,
				font = "Metrostroi_ILGAo",--..self:GetNW2Int("Style",1),
				pos = { 280	, -100 },
				xalign = TEXT_ALIGN_CENTER,
				yalign = TEXT_ALIGN_CENTER,
				color = Color(255,160,0,255)})
		end)
	end
end