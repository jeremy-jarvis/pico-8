pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- something to try out:
-- circular orbit
-- a = v^2 / r

function _init()
 cls()
	heart="♥"
	col=4
	x=96
	y=64
	boost=0.1
	dx=0.0
	dy=0.55
	
	planet_x=64
	planet_y=64
	planet_gravity=10
end

function _update()

	-- apply planet's gravity
	-- calculate gravity's force on ship
 p_dist=distance(x,y,planet_x,planet_y)
 printh("p_dist: " .. p_dist)
 g_intensity = 1/(p_dist^2)
 -- calculate distance from ship to planet
 x_diff = planet_x - x
 y_diff = planet_y - y
	-- calculate the intensity of planet's gravity at location of ship
	x_intensity = (x_diff * g_intensity)/p_dist
	y_intensity = (y_diff * g_intensity)/p_dist
	-- gravity's acceleration on ship in x and y directions
	ga_x = planet_gravity * x_intensity
	ga_y = planet_gravity * y_intensity
	
	printh("ga_x: " .. ga_x)
	printh("ga_y: " .. ga_y)
	
	-- update ship speed to account for
	-- acceleration of from planet's gravity
	dx = dx + ga_x
	dy = dy + ga_y
		
	-- handle input
	if btn(0) then
		dx=dx-boost
	end
	
	if btn(1) then
		dx=dx+boost
	end
	
	if btn(2) then
		dy=dy-boost
	end
	
	if btn(3) then
	 dy=dy+boost
	end
	
 -- bounce off of wall
	if x>118 or x<12 then
		dx=-dx
	end

	if y>118 or y<12 then
		dy=-dy
	end

	-- update ship's position
	x=x+dx
	y=y+dy
	
	-- update ship's color
	col=col+0.1
	if col > 15 then
		col=4
	end
end


function _draw()
	cls()
	map(0,0)
	spr(2,planet_x-8,planet_y-8,2,2)
	print(heart,x-4,y-4,col)
end

function distance(x1,y1,x2,y2)
 return sqrt((x1-x2)^2 + (y1-y2)^2)
end
__gfx__
00000000dddddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000dddddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700dddddddd0000000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000dddddddd00000cccccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000dddddddd0000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700dddddddd0003ccccc3bcc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000dddddddd000bccccbbbbc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000dddddddd003bccccbb6bbc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000bb3cccc3b3bc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000006bbccccbbc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000c6b3cccbcc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000006bbccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000003bcccc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000cc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0100000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0110101010101010101010101010100100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000