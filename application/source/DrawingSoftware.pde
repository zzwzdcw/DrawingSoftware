
Base test=new Base();
PImage color_circle;
PImage F6F6F6_background;
void setup() {
	size(1050, 700);
	background(#FFFFFF);
	color_circle=loadImage("color_circle.jpg");
	F6F6F6_background=loadImage("F6F6F6_background.jpg");

}

void draw() {
		image(F6F6F6_background, 0, 0);	    
	    image(color_circle, 0, 0);		
		test.Bruse_Size_Change();
		test.Changer_Color();
		test.Changer_Flow();
		test.Drawing();
	}


class Base{
	float Brush_Size;//笔刷大小
	float Bruse_Flow;//笔的流量
	//boolean Mouse_Click;//点击鼠标左键
	float red;
	float green;
	float blue;
	color Brush_Color;
	Base()
	{
		Brush_Size=16;
		Bruse_Flow=255;
		red  =0;
		green=0;
		blue =0;
		Brush_Color=color(red, green, blue,Bruse_Flow);
	}
	void Drawing()
	{
		if (mouseX>350) 
	{
			
		
		if (mouseButton==LEFT) 
		{
			Brush_Color=color(red, green, blue,Bruse_Flow);
			stroke(Brush_Color);//设置颜色
			strokeWeight(Brush_Size);//设置笔刷大小
			line(pmouseX, pmouseY, mouseX, mouseY);
			print("Size: "+Brush_Size);
			print(" Flow: "+Bruse_Flow);
			print(" red: "+red);
			print(" blue: "+blue);
			println(" green: "+green);

		}
		if (mouseButton==RIGHT) {
			stroke(#FFFFFF);//设置为橡皮擦
			strokeWeight(Brush_Size);//设置笔刷大小
			line(pmouseX, pmouseY, mouseX, mouseY);
			print("Size: "+Brush_Size);
			println(" Flow: "+Bruse_Flow);		
		}
	}
	}
	void Bruse_Size_Change()
	{
		if (Brush_Size>1||Brush_Size<255) {
			if (keyPressed) 
			{
				if (key=='x'||key=='X') 
				{
				keyReleased();
				if (Brush_Size==1) {
					Brush_Size++;
				println("Size: "+Brush_Size);

				}
				Brush_Size--;
				}
				if (key=='c'||key=='C') 
				{
				keyReleased();
				Brush_Size++;
				println("Size: "+Brush_Size);

				}
			}	

		}

	}
	void Changer_Flow(){
				if (keyPressed) 
			{
				if (key=='s'||key=='S') 
				{
				keyReleased();
				if (Bruse_Flow==1) {
					Bruse_Flow++;
				}
				Bruse_Flow--;
			    println("Flow: "+Bruse_Flow);

				}
				if (key=='D'||key=='d') 
				{
				keyReleased();
				if (Bruse_Flow==255) {
					Bruse_Flow--;
				}
				Bruse_Flow++;
			    println("Flow: "+Bruse_Flow);

				}
			}	

	}
	void Changer_Color()
	{
		if (mouseX<=350&&mouseY<=345)
		 {	
		 	if (mouseButton==LEFT) {
				color Get_Color_Circle_Color = get(mouseX, mouseY);	
				red=red(Get_Color_Circle_Color);
				green=green(Get_Color_Circle_Color);
				blue=blue(Get_Color_Circle_Color);
		 	}
		 	
		}
	}
}

	
