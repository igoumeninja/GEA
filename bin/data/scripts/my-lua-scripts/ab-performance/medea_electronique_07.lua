local th = 0
local count=0
midi = of.midi()
----------------------------------------------------
function setup()
	of.setWindowTitle("superformula")
        midi:setup()
--        of.background(0)

end
----------------------------------------------------
function update()
         midi:update()
end
----------------------------------------------------
function draw()

      of.fill()
      of.setColor(0,0,30,midi:map(19,0,255,10))
      of.rect(0,0,of.getWidth(), of.getHeight())
      --sinEq()
      superformula()
      count=count+1

end

function sinEq()
      of.noFill()
      of.setColor(255,255,255,220)
      local samples = {}
      of.beginShape()
      for i = 0, 700 do
          local a = (math.TWO_PI/100)*i;
          samples[i]=midi:map(3,0,500,100)*math.cos(10*math.sin(count*0.01)*math.sin(a*midi:map(1,0,20,5)));
          of.vertex(of.getWidth()/2 + math.sin(count*midi:map(2, 0.0001,0.2,0.001))*samples[i],i*2)
      end
      of.endShape(false)
end

function superformula()
      of.noFill()
      of.setColor(255,255,250,220)

   of.beginShape();
   for i= 1 , 250 do
      -- test with a=b=1,m=3,n1=5,n2=18,n3=18
      local a=1
      local b=1
      local m = midi:map(1,0,10,3)--3
      local n1 = math.floor(midi:map(2,0,10,5))--3
      local n2 = midi:map(3,0,30,10)--318
      local n3 = midi:map(4,0,30,10)--318
      local scale = midi:map(5,0,600,318)--318
      th = th + midi:map(6,0.001,2,0.001)--318
      local part1 = math.pow(math.cos(m*th/4)/a,n2)
      local part2 = math.pow(math.sin(m*th/4)/b,n3)
      local r = scale*(math.pow(math.abs(part1)+math.abs(part2), (-1/n1)))
      of.curveVertex((of.getWidth()/2)+r*math.cos(th),(of.getHeight()/2) + r*math.sin(th))
--      of.vertex(400+r*math.cos(th),400+ r*math.sin(th))
   end
   of.endShape(false)
   --   r = epi *	( ( ( powf( labs( cos( (mi*th)/4 ) /alpha ), n2 ) ) + ( powf( labs( sin( mi*th/4) /bita), n3) ) ),(-1/n1));
   --   th = th + step;
   --   x = xf + r*cos(th);
   --		y = yf + r*sin(th);
   --		ofCurveVertex(x,y);
   --		//ofVertex(x,y);
   --                }
   --  ofEndShape();
end
----------------------------------------------------
function exit()
end
----------------------------------------------------
