pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
	heart="♥"
	col=4
	x=50
	y=20
	boost=0.1
	dx=0
	dy=0
	
	planet_x=34
	planet_y=78
end


function _update()

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
	if x>115 or x<8 then
		dx=-dx
	end

	if y>115 or y<8 then
		dy=-dy
	end

	x=x+dx
	y=y+dy
	col=col+0.1
	if col > 15 then
		col=4
	end
end


function _draw()
	cls()
	map(0,0)
	spr(2,planet_x,planet_y,2,2)
	print(heart,x,y,col)
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