pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
	heart="♥"
	x=50
	y=20
end


function _update()

	-- handle input
	if btn(0) then
		x=x-1
	end
	
	if btn(1) then
		x=x+1
	end
	
	if btn(2) then
		y=y-1
	end
	
	if btn(3) then
	 y=y+1
	end
end


function _draw()
	cls()
	print(heart,x,y)
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
