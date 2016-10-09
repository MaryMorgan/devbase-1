program Project_food;
uses wingraph, wincrt, sysutils, MMSystem, unitEc, unitGreek, unitcharlotte, unitMasc, unitVegan, unitSign, unitFin, unitgame, unitComthree, unitBord, unitComtwo, unitDogor;

const
	MaxComponent = 10;
	Forfeit_points_max = 4;
	MaxProducts = 5;
	MaxRecipe = 5;
	
Type 
	TIngredient = record 
		Name: string;
		RussianName: string;
		quantity_needed: integer; //количество необходимое
		quantity_done: integer; //количество выполненное
	end;

	TRecipe = record
		Name : string;		
		NumberOfComponents :integer;
		NumberOfDoneComponents :integer;
		Components: array [1..MaxComponent] of TIngredient;
	end;

	TFallProduct = record
		letter : char; //буква
		name : string; //название летящего продукта
		x,y: real;
		Knife: integer;
		IsVisible: boolean;
		SpeedY: real;
		SpeedX: real;		
	end;
var
	key: char;
	gm,gd: smallInt;
	NRecipes: integer;
	Letter_arr: string = 'WASDVMONJTFGPILGQYE';
	All_food: array [1..21] of string = ('avocado','cinnamon','apple','bread','nuts','sugar','egg','oil','cucumber','cheese','salt','mayonaise','peas','flour','spinach','tomato','carrot','potato','pepper','feta','olive');
	Forfeit_points: integer;
	current_recipe: TRecipe;
	Products: array [1..MaxProducts] of TFallProduct;
	Recipes: array [1..MaxRecipe] of TRecipe;
	ActiveProducts: integer;

procedure draw_tomato(x,y: integer);
begin
	setfillstyle(SolidFill, red);
	setcolor(red);
	FillEllipse	(x+25, y+10, 20, 15);
	SetLineStyle(SolidLn, 0, 3);
	setcolor(LimeGreen);
	Line(x+25,y+5,x+15,y);
	Line(x+25,y+5,x+35,y-5);
	Line(x+25,y+5,x+10,y+10);
	Line(x+25,y+5,x+35,y+10);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_apple(x,y: integer);
begin
	setfillstyle(SolidFill, LawnGreen);
	setcolor(green);
	FillEllipse	(x+25, y+10, 20, 15);
	SetLineStyle(SolidLn, 0, 3);
	setcolor(Brown);
	Line(x+25,y+5,x+40,y-3);
	setfillstyle(SolidFill, Green);
	setcolor(DarkGreen);
	FillEllipse	(x+45, y-3, 8, 4);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_cinnamon(x,y: integer);
begin
	setcolor(Cinnamon);
	SetLineStyle(SolidLn, 0, 4);
	Line(x,y,x+25,y+25);
	Line(x+15,y+5,x+35,y+15);
	Line(x+5,y+15,x+20,y);
	Line(x+10,y+10,x+30,y+15);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_carrot(x,y : integer);
begin
	setcolor(Scarlet);
	setfillstyle(SolidFill, Scarlet); //цвет и стиль закраски
	FillEllipse	(x+25, y+5, 20, 5);
	setcolor(Lime);
	SetLineStyle(DashedLn, 0, 4);
	Line(x+40,y+5,x+50,y+10);
	Line(x+40,y+5,x+50,y);
	Line(x+40,y+5,x+50,y+5);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_nuts(x,y : integer);
begin
	setfillstyle(SolidFill, Tenne); 
	setcolor(Brown);
	FillEllipse	(x+15, y+5, 5, 10);
	setfillstyle(SolidFill, Goldenrod); 
	FillEllipse	(x+25, y+10, 8, 8);
	setfillstyle(SolidFill, Copper); 
	FillEllipse	(x+35, y+5, 10, 7);
	setfillstyle(SolidFill, Russet); 
	FillEllipse	(x+45, y+10, 7, 4);
end;

procedure draw_olives(x,y : integer);
begin
	x := x-10;
	setfillstyle(SolidFill, OliveDrab); 
	setcolor(DarkOliveGreen);
	FillEllipse	(x+52, y+5, 5, 10);
	setfillstyle(SolidFill, Olive); 
	FillEllipse	(x+25, y+10, 8, 8);
	setfillstyle(SolidFill, OliveDrab); 
	FillEllipse	(x+35, y+5, 10, 7);
	setfillstyle(SolidFill, Olive); 
	FillEllipse	(x+45, y+10, 7, 4);
end;

procedure draw_bread(x,y : integer);
begin
	setfillstyle(SolidFill, Corn); 
	setcolor(DarkTangerine);
	SetLineStyle(DashedLn, 0, 3);
	FillEllipse	(x+25, y+5, 20, 10);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_flour(x,y : integer);
begin
	setcolor(Gray);
	setfillstyle(SolidFill, Gray); 
	PieSlice(x+15, y+10, 180, 360, 20);
	setfillstyle(SolidFill, White); 
	FillEllipse	(x+15, y+8, 20, 5);
end;

procedure draw_sugar(x,y : integer);
begin
	setcolor(LightSteelBlue);
	setfillstyle(SolidFill, White);
	FillEllipse	(x+15, y+4, 12, 5);
	setfillstyle(SolidFill, LightSteelBlue);
	PieSlice(x+15, y+8, 180, 360, 12);
 	setcolor(Beige);
 	setfillstyle(SolidFill, White);
 	Bar(x+20,y+20,x+25,y+25);
 	Bar(x+30,y+25,x+35,y+30);
 	Bar(x+25,y+30,x+30,y+35);
end;

procedure draw_avocado(x,y : integer);
begin
	x:=x+18;
	setfillstyle(SolidFill, YellowGreen); 
	setcolor(Green);
	FillEllipse	(x+5, y+4, 8, 15);
	FillEllipse	(x+20, y+15, 8, 15);
	setfillstyle(SolidFill, Brown); 
	FillEllipse	(x+5, y+10, 5, 8);
	setfillstyle(SolidFill, Pear); 
	setcolor(YellowGreen);
	FillEllipse	(x+20, y+20, 5, 8);
end;


procedure draw_potato(x,y : integer);
begin
	setfillstyle(SolidFill, Cinnamon); 
	setcolor(Brown);
	SetLineStyle(DashedLn, 0, 3);
	FillEllipse	(x+25, y+5, 18, 8);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_egg(x,y : integer);
begin
	setfillstyle(SolidFill, Beige); 
	setcolor(SaddleBrown);
	FillEllipse	(x+5, y+5, 8, 14);
	Setfillstyle(SolidFill, White); 
	FillEllipse	(x+30, y+10, 18, 10);
	setcolor(Pumpkin);
	setfillstyle(SolidFill, Pumpkin); 
	PieSlice(x+30, y+10, 0, 180, 10);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_mayonaise(x,y : integer);
	var
   		points: array[1..3] of PointType;
begin
    SetFillStyle(SolidFill,Khaki);
    SetColor(white);
    x := x+25;
    y := y-10;
    FillEllipse(x,y+24, 19, 5);
    FillEllipse(x,y+19, 15, 5);
    FillEllipse(x,y+14, 10, 5);

    points[1].x := x+2;
    points[1].y := y+12;
    points[2].x := x;
    points[2].y := y;
    points[3].x := x+8;
    points[3].y := y+12;

    FillPoly(3,points);
end;

procedure draw_peas(x,y : integer);
begin
	setcolor(Green);
	setfillstyle(SolidFill, BrightGreen); //цвет и стиль закраски
	FillEllipse	(x+5, y, 5, 5);
	FillEllipse	(x+10, y+5, 5, 5);
	FillEllipse	(x+15, y+10, 5, 5);
	FillEllipse	(x+20, y+15, 5, 5);
end;

procedure draw_spinach(x,y : integer);
begin
	setcolor(DarkGreen);
	setfillstyle(SolidFill, Green); //цвет и стиль закраски
	FillEllipse	(x+30, y+10, 20, 5);
	SetLineStyle(DashedLn, 0, 2);
	Line(x+5,y+10,x+40,y+10);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_pepper(x,y : integer);
var
	PolyPoints: array[1..6] of PointType;
begin
	x:=x+15;
	y:=y-10;
	setfillstyle(SolidFill, red);
	setcolor(Monza);
	SetLineStyle(Solidln, 0, 2);
	PolyPoints[1].x := x;
	PolyPoints[1].y := y+10;

	PolyPoints[2].x := x;
	PolyPoints[2].y := y+25;

	PolyPoints[3].x := x+5;
	PolyPoints[3].y := y+30;

	PolyPoints[4].x := x+15;
	PolyPoints[4].y := y+30;

	PolyPoints[5].x := x+20;
	PolyPoints[5].y := y+25;

	PolyPoints[6].x := x+20;
	PolyPoints[6].y := y+10;
	FillPoly(6, PolyPoints);
	setcolor(LimeGreen);
	setfillstyle(SolidFill, Lime); 
	Bar(x+10,y,x+14,y+10);
	Bar(x+14,y,x+20,y+4);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_cheese(x,y : integer);
var
	PolyPoints: array[1..5] of PointType;
begin
	setfillstyle(SolidFill, yellow);
	setcolor(DarkTangerine);
	SetLineStyle(Solidln, 0, 2);
	PolyPoints[1].x := x;
	PolyPoints[1].y := y+5;
	PolyPoints[2].x := x;
	PolyPoints[2].y := y+25;
	PolyPoints[3].x := x+40;
	PolyPoints[3].y := y+25;
	PolyPoints[4].x := x+40;
	PolyPoints[4].y := y+5;
	PolyPoints[5].x := x+15;
	PolyPoints[5].y := y;
	FillPoly(5, PolyPoints);
	setfillstyle(SolidFill, DarkTangerine);
	FillEllipse	(x+10, y+5, 5, 5);
	FillEllipse	(x+20, y+12, 5, 5);
	FillEllipse	(x+35, y+20, 5, 5);
	SetLineStyle(SolidLn, 0, 1);
end;

procedure draw_feta(x,y : integer);
begin
	x:=x+10;
	setcolor(Cinnamon);
	setfillstyle(SolidFill, Cinnamon); 
	PieSlice(x+15, y+10, 180, 360, 20);
	setfillstyle(SolidFill, White); 
	FillEllipse	(x+15, y+8, 20, 5);
	
	setcolor(gray);
	SetLineStyle(Solidln,0,1);
	SetFillStyle(SolidFill,beige);
	bar(x+9,y-4,x+20,y+4);
	rectangle(x+9,y-4,x+20,y+4);
	bar(x,y,x+10,y+8);
	rectangle(x,y,x+10,y+8);
	bar(x+17,y+2,x+27,y+10);
	rectangle(x+17,y+2,x+27,y+10);
	
end;

procedure draw_cucumber(x,y : integer);
begin
	y:=y+5;
	setcolor(Green);
	setfillstyle(SolidFill, DarkGreen); //цвет и стиль закраски
	FillEllipse	(x+25, y+5, 25, 5);
	setfillstyle(SolidFill, YellowGreen);
	SetLineStyle(DashedLn, 0, 2);
	FillEllipse	(x+40, y+5, 10, 5);
	Line(x+30,y+5,x+50,y+5);
	Line(x+40,y,x+40,y+10);
	SetLineStyle(SolidLn, 0, 1);
end;	

procedure draw_salt(x, y : integer);
	var
		PolyPoints: array[1..3] of PointType;
begin
	setcolor(gray);
	setfillstyle(SolidFill, Beige);
	PolyPoints[1].x := x+27;
	PolyPoints[1].y := y;
	PolyPoints[2].x := x+42;
	PolyPoints[2].y := y+15;
	PolyPoints[3].x := x+12;
	PolyPoints[3].y := y+15;
	FillPoly(3, PolyPoints);
end;

procedure draw_oil(x,y : integer);
begin
	setcolor(Yellow);
	setfillstyle(SolidFill, Yellow); //цвет и стиль закраски
	Bar(x+25,y-12,x+30,y);
	Bar(x+20,y,x+35,y+25);
	setfillstyle(SolidFill, DarkOliveGreen);
	Bar(x+22,y-17,x+32,y-12);
end;

procedure Active_products();
	var
		r_comp, r_letter, b: Integer;
begin
	r_letter := random(length(Letter_arr))+1;

	r_comp := random(current_recipe.NumberOfComponents)+1;
	Products[1].name := current_recipe.Components[r_comp].Name;
	b:=2;
	Products[1].letter := Letter_arr[r_letter];
	r_letter := r_letter-b;
	if r_letter < 1 then
	begin
		r_letter := length(Letter_arr);
	end;
	Products[1].IsVisible := true;
	Products[1].SpeedY := -20;
	Products[1].SpeedX := -3;
	products[1].x := 600;
	products[1].y := 400;	
	Products[1].Knife := 0;

	r_comp := random(current_recipe.NumberOfComponents)+1;
	Products[2].name := current_recipe.Components[r_comp].Name;
	b:=2;
	Products[2].letter := Letter_arr[r_letter];
	r_letter := r_letter-b;
	if r_letter < 1 then
	begin
		r_letter := length(Letter_arr);
	end;
	Products[2].IsVisible := true;
	Products[2].SpeedY := -18;
	Products[2].SpeedX := -3;
	products[2].x := 600;
	products[2].y := 400;
	Products[2].Knife := 0;
	
	r_comp := random(Length(All_food))+1;
	Products[3].name := All_food[r_comp];
	b:=2;
	Products[3].letter := Letter_arr[r_letter];
	r_letter := r_letter-b;
	if r_letter < 1 then
	begin
		r_letter := length(Letter_arr);
	end;
	Products[3].IsVisible := true;
	Products[3].SpeedY := -17;
	Products[3].SpeedX := 0;
	products[3].x := 600;
	products[3].y := 400;
	Products[3].Knife := 0;

	r_comp := random(Length(All_food))+1;
	Products[4].name := All_food[r_comp];
	b:=2;
	Products[4].letter := Letter_arr[r_letter];
	r_letter := r_letter-b;
	if r_letter < 1 then
	begin
		r_letter := length(Letter_arr);
	end;
	Products[4].IsVisible := true;
	Products[4].SpeedY := -15;
	Products[4].SpeedX := 3;
	products[4].x := 600;
	products[4].y := 400;
	Products[4].Knife := 0;
	
	r_comp := random(Length(All_food))+1;
	Products[5].name := All_food[r_comp];
	b:=2;
	Products[5].letter := Letter_arr[r_letter];
	r_letter := r_letter-b;
	if r_letter < 1 then
	begin
		r_letter := length(Letter_arr);
	end;
	Products[5].IsVisible := true;
	Products[5].SpeedY := -18;
	Products[5].SpeedX := 3;
	products[5].x := 600;
	products[5].y := 400;
	Products[5].Knife := 0;
	
	ActiveProducts := 5;
end;

procedure draw_food(Name : string; x,y:integer);
begin
		if Name = 'oil' then 
		begin
	 		draw_oil(round(x), round(y) + 20);
		end;
		if Name = 'apple' then 
		begin
	 		draw_apple(round(x), round(y) + 20);
		end;
	 	if Name = 'salt' then 
		begin
	 		draw_salt(round(x), round(y) + 20);
	 	end;
		if Name = 'cheese' then 
		begin
	 		draw_cheese(x, round(y) + 20);
	 	end;
		if Name = 'cucumber' then 
		begin
	 		draw_cucumber(round(x), round(y) + 20);
	 	end;
		if Name = 'bread' then 
		begin
	 		draw_bread(round(x), round(y) + 20);
	 	end;
			if Name = 'mayonaise' then 
		begin
			draw_mayonaise(round(x), round(y) + 20);
		end;
 		if Name = 'peas' then 
		begin
 			draw_peas(round(x), round(y) + 20);
 		end;
 		if Name = 'spinach' then 
		begin
 			draw_spinach(round(x), round(y) + 20);
 		end;
 		if Name = 'tomato' then 
		begin
 			draw_tomato(round(x), round(y) + 20);
 		end;
 		if Name = 'carrot' then 
		begin
 			draw_carrot(round(x), round(y) + 20);
 		end;
 		if Name = 'potato' then 
		begin
 			draw_potato(round(x), round(y) + 20);
 		end;
 		if Name = 'pepper' then 
		begin
 			draw_pepper(round(x), round(y) + 20);
 		end;
		if Name = 'egg' then 
		begin
 			draw_egg(round(x), round(y) + 20);
 		end;
		if Name = 'flour' then 
		begin
 			draw_flour(round(x), round(y) + 20);
 		end;
 		if Name = 'sugar' then 
		begin
 			draw_sugar(round(x), round(y) + 20);
 		end;
 		if Name = 'avocado' then 
		begin
 			draw_avocado(round(x), round(y) + 20);
 		end;
 		if Name = 'nuts' then 
		begin
 			draw_nuts(round(x), round(y) + 20);
 		end;	
 		if Name = 'cinnamon' then 
		begin
 			draw_cinnamon(round(x), round(y) + 20);
 		end;
 		if Name = 'feta' then 
		begin
 			draw_feta(round(x), round(y) + 20);
 		end;
 		if Name = 'olive' then 
		begin
 			draw_olives(round(x), round(y) + 20);
 		end;
end;

procedure draw_products();
	var
		i: integer;
begin
	for i := 1 to MaxProducts do
	begin
		if (Products[i].IsVisible = true) then
		begin
			draw_food(Products[i].Name, round(Products[i].x),round(Products[i].y));

 			SetColor(White);
 			SetTextStyle(TimesNewRomanFont, HorizDir, 25);
 			OutTextXY(round(products[i].x+15), round(products[i].y+48), Products[i].letter);
 			If Products[i].Knife > 0 then
 				begin
 					setcolor(gray);
 					SetLineStyle(Solidln, 0, 3);
 					line(round(products[i].x-2), round(products[i].y-2), round(products[i].x+45-Products[i].Knife*5), round(products[i].y+45-Products[i].Knife*5));
 					Dec(Products[i].Knife); //уменьшает на 1
 					If Products[i].Knife = 0 then
 					begin
 						Products[i].IsVisible := false;
 						ActiveProducts := ActiveProducts - 1;
 					end;
 					SetLineStyle(Solidln, 0, 1);
 				end;
		end;
	end;		
end;

procedure drawrecipe (recipe: TRecipe);
var
	i, b: Integer;
	st:string;
begin
	//подложка рецепта
	setfillstyle(SolidFill, white); //цвет и стиль закраски
	SetColor(red); //текущий цвет линий
	bar(0,0, 345, 540); //Рисует закрашенный прямоугольник, используя текущие стиль и цвет закраски
	SetTextStyle(TimesNewRomanFont, HorizDir, 2); //задает шрифт и его размер
	OutTextXY(20, 20, 'Текущий рецепт:'); //Посылает строку на устройство вывода
	SetColor(red);
	SetTextStyle(TimesNewRomanFont, HorizDir, 30);
	OutTextXY(20, 40, '');
	OutTextXY(20, 60, recipe.Name);
	SetTextStyle(TimesNewRomanFont, HorizDir, 25);
	OutTextXY(20, 80, '');
	
	b := 0; //междустрочный интервал
	For i:=1 to recipe.NumberOfComponents do 
	begin
		st:= recipe.Components[i].russianname + ' ';
		st:= st + inttostr(recipe.Components[i].quantity_done); // inttostr переводит число в строку
		st:= st + '/';
		st:= st + inttostr(recipe.Components[i].quantity_needed);
		setfillstyle(SolidFill, White); 
		SetColor(DarkScarlet);
		FillEllipse	(40, 132+b, 30, 20);
		setfillstyle(SolidFill, white); 
		FillEllipse	(40, 132+b, 25, 15);
		draw_food(recipe.Components[i].name, 15, 100+b);
		SetColor(red); 
   		OutTextXY(80, 110+b, st); 
   		b := b+50;
   	end;

   	SetColor(DarkOliveGreen);
	OutTextXY(20, 130+b, 'Происки криворучек:');
	OutTextXY(20, 160+b, inttostr(Forfeit_points));
end;

procedure move_product();
var 
	i, j: integer;
	key: char;

	//Cucumber, Bread: boolean;
	
	Pr_i, Cmp_i : integer;

begin
	Active_products();
	
	for i := 1 to 400 do
	begin
		SetColor(White);//текущий цвет линий
		SetTextStyle(DefaultFont, HorizDir, 2);
		draw_products();	
		delay(30);
		setfillstyle(SolidFill, black);
		SetColor(black);

		for j := 1 to MaxProducts do
		begin
			Bar(round(products[j].x)-5, round(products[j].y)-20, round(products[j].x) + 55, round(products[j].y) + 75);// Рисуем чёрный квадрат (удаляем старый)

			if products[j].IsVisible = true then
			begin
				Products[j].SpeedY := Products[j].SpeedY + 0.5;	
				products[j].y := products[j].y + Products[j].SpeedY;
				products[j].x := products[j].x + Products[j].SpeedX;			
					
				if (products[j].y < 0) or (products[j].y > 400) then
				begin
					ActiveProducts := ActiveProducts - 1;
					products[j].IsVisible := false;
				end;
			end;
		end;		
		
    	if keypressed = true then
    	begin
    		key := readkey;
    		key := Upcase(key); // переводит в верхний регистр
			Forfeit_points := Forfeit_points + 1;
    		// Цикл по падающим продуктам
    		for Pr_i := 1 to MaxProducts do
    		begin
	    		if Products[Pr_i].IsVisible and (Products[Pr_i].Knife = 0) then
				begin
					if Products[Pr_i].letter = key then
					begin
						// Цикл по компонентам
						for Cmp_i := 1 to current_recipe.NumberOfComponents do
						begin
							if (current_recipe.Components[Cmp_i].Name = Products[Pr_i].name) then
							begin
								if (current_recipe.Components[Cmp_i].quantity_done < current_recipe.Components[Cmp_i].quantity_needed) then
								begin
									//current_recipe.Components[1].quantity_done := current_recipe.Components[1].quantity_done + 1;
									inc(current_recipe.Components[Cmp_i].quantity_done); // increment - увеличить на 1
									Forfeit_points := Forfeit_points - 1;
									if (current_recipe.Components[Cmp_i].quantity_done = current_recipe.Components[Cmp_i].quantity_needed) then
									begin
										inc(current_recipe.NumberOfDoneComponents);
									end;
									break;
								end
							end;							
						end;						
						Products[Pr_i].Knife := 8;						
					end;
				end;    			
    		end;
    		if (Forfeit_points<0) then Forfeit_points :=0;
    		drawrecipe(current_recipe);
   	   	end;

   	   	if  current_recipe.NumberOfDoneComponents = current_recipe.NumberOfComponents then
   	   	begin
			break;
   	   	end;

   	 	if (ActiveProducts = 0) then
		begin
			break;
		end;
		if Forfeit_points = Forfeit_points_max then
		begin
			break;
		end;

		if CloseGraphRequest then break;
	end;
end;

procedure draw_Ec();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Ec_ImageWidth) div 2;
	for y:=1 to Ec_ImageHeight do
	begin
        for x:=1 to Ec_ImageWidth do
        begin
            PutPixel(x+indentx,y,Ec_Image[y,x]);
        end;
    end;
end;

procedure draw_charlotte();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - charlotte_ImageWidth) div 2;
	for y:=1 to charlotte_ImageHeight do
	begin
        for x:=1 to charlotte_ImageWidth do
        begin
            PutPixel(x+indentx,y,charlotte_Image[y,x]);
        end;
    end;
end;

procedure draw_Masc();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Masc_ImageWidth) div 2;
	for y:=1 to Masc_ImageHeight do
	begin
        for x:=1 to Masc_ImageWidth do
        begin
            PutPixel(x+indentx,y,Masc_Image[y,x]);
        end;
    end;
end;

procedure draw_Vegan();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Vegan_ImageWidth) div 2;
	for y:=1 to Vegan_ImageHeight do
	begin
        for x:=1 to Vegan_ImageWidth do
        begin
            PutPixel(x+indentx,y,Vegan_Image[y,x]);
        end;
    end;
end;

procedure draw_Greek();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Greek_ImageWidth) div 2;
	for y:=1 to Greek_ImageHeight do
	begin
        for x:=1 to Greek_ImageWidth do
        begin
            PutPixel(x+indentx,y,Greek_Image[y,x]);
        end;
    end;
end;

procedure draw_Comthree();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Comthree_ImageWidth) div 2;
	for y:=1 to Comthree_ImageHeight do
	begin
        for x:=1 to Comthree_ImageWidth do
        begin
            PutPixel(x+indentx,y,Comthree_Image[y,x]);
        end;
    end;
end;

procedure draw_Game();
var 
	x, y: integer;
	indentx, indenty:integer;
begin
	indentx := (GetMaxx() - Game_ImageWidth) div 2;
	indenty := (GetMaxy() - Game_ImageHeight) div 2;
	for y:=1 to Game_ImageHeight do
	begin
        for x:=1 to Game_ImageWidth do
        begin
            PutPixel(x+indentx,y+indenty,Game_Image[y,x]);
        end;
    end;
end;

procedure draw_Bord();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Bord_ImageWidth) div 2;
	for y:=1 to Bord_ImageHeight do
	begin
        for x:=1 to Bord_ImageWidth do
        begin
            PutPixel(x+indentx,y,Bord_Image[y,x]);
        end;
    end;
end;

procedure draw_Comtwo();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Comtwo_ImageWidth) div 2;
	for y:=1 to Comtwo_ImageHeight do
	begin
        for x:=1 to Comtwo_ImageWidth do
        begin
            PutPixel(x+indentx,y,Comtwo_Image[y,x]);
        end;
    end;
end;

procedure draw_Dogor();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Dogor_ImageWidth) div 2;
	for y:=1 to Dogor_ImageHeight do
	begin
        for x:=1 to Dogor_ImageWidth do
        begin
            PutPixel(x+indentx,y,Dogor_Image[y,x]);
        end;
    end;
end;

procedure draw_Sign();
var 
	x, y: integer;
	indentx:integer;
begin
	indentx := (GetMaxx() - Sign_ImageWidth) div 2;
	for y:=1 to Sign_ImageHeight do
	begin
        for x:=1 to Sign_ImageWidth do
        begin
            PutPixel(x+indentx,y+250,Sign_Image[y,x]);
        end;
    end;
end;

procedure draw_Fin();
var 
	x, y: integer;
	indentx:integer;
begin
	sndPlaySound('Good.wav', snd_Async);
	indentx := (GetMaxx() - Fin_ImageWidth) div 2;
	for y:=1 to Fin_ImageHeight do
	begin
        for x:=1 to Fin_ImageWidth do
        begin
            PutPixel(x+indentx,y,Fin_Image[y,x]);
        end;
    end;
end;

procedure ActiveStart();
begin
	SetActivePage(1);
	ClearDevice;
	draw_Bord;
	SetVisualPage(1);
	delay(1500);

	SetActivePage(0);
	ClearDevice;
	draw_Comtwo;
	SetVisualPage(0);
	delay(1500);

	SetActivePage(1);
	ClearDevice;
	draw_Dogor;
	SetVisualPage(1);
	delay(1500);

	SetActivePage(0);
	ClearDevice;
	draw_Comthree;
	SetVisualPage(0);
	delay(1500);

	SetActivePage(1);
	ClearDevice;
	draw_Game;
	SetVisualPage(1);
	delay(3000);
end;
	
procedure Recipes_and_Components();
	var
		recipe_masculinesandwich: TRecipe;
		r_ecsanwich, r_vegan, charlotte: TRecipe;
		r_greeksalad: TRecipe;
begin
	r_ecsanwich.Name := 'Экономический бутерброд';
    r_ecsanwich.NumberOfComponents := 3;
    r_ecsanwich.NumberOfDoneComponents := 0;
	r_ecsanwich.Components[1].Name := 'bread' ;
	r_ecsanwich.Components[1].RussianName := 'хлеб' ;
	r_ecsanwich.Components[1].quantity_needed := 2;
	r_ecsanwich.Components[1].quantity_done := 0;

	r_ecsanwich.Components[2].Name := 'salt' ;
	r_ecsanwich.Components[2].RussianName := 'соль' ;
	r_ecsanwich.Components[2].quantity_needed := 1;
	r_ecsanwich.Components[2].quantity_done := 0;

	r_ecsanwich.Components[3].Name := 'oil' ;
	r_ecsanwich.Components[3].RussianName := 'масло' ;
	r_ecsanwich.Components[3].quantity_needed := 1;
	r_ecsanwich.Components[3].quantity_done := 0;

	recipe_masculinesandwich.Name:= 'Мужицкий бутерброд';
    recipe_masculinesandwich.NumberOfComponents := 2;
    recipe_masculinesandwich.NumberOfDoneComponents := 0;

	recipe_masculinesandwich.Components[1].Name := 'bread' ;
	recipe_masculinesandwich.Components[1].RussianName := 'хлеб' ;
	recipe_masculinesandwich.Components[1].quantity_needed := 2;
	recipe_masculinesandwich.Components[1].quantity_done := 0;

	recipe_masculinesandwich.Components[2].Name := 'mayonaise' ;
	recipe_masculinesandwich.Components[2].RussianName := 'майонез' ;
	recipe_masculinesandwich.Components[2].quantity_needed := 2;
	recipe_masculinesandwich.Components[2].quantity_done := 0;

	r_vegan.Name:= 'Салат "Веганский шик"';
    r_vegan.NumberOfComponents := 5;
    r_vegan.NumberOfDoneComponents := 0;
	r_vegan.Components[1].Name := 'spinach' ;
	r_vegan.Components[1].RussianName := 'шпинат' ;
	r_vegan.Components[1].quantity_needed := 5;
	r_vegan.Components[1].quantity_done := 0;

	r_vegan.Components[2].Name := 'avocado' ;
	r_vegan.Components[2].RussianName := 'авокадо' ;
	r_vegan.Components[2].quantity_needed := 2;
	r_vegan.Components[2].quantity_done := 0;
	
	r_vegan.Components[3].Name := 'nuts' ;
	r_vegan.Components[3].RussianName := 'орехи' ;
	r_vegan.Components[3].quantity_needed := 4;
	r_vegan.Components[3].quantity_done := 0;

	r_vegan.Components[4].Name := 'salt' ;
	r_vegan.Components[4].RussianName := 'соль' ;
	r_vegan.Components[4].quantity_needed := 1;
	r_vegan.Components[4].quantity_done := 0;

	r_vegan.Components[5].Name := 'oil' ;
	r_vegan.Components[5].RussianName := 'масло' ;
	r_vegan.Components[5].quantity_needed := 1;
	r_vegan.Components[5].quantity_done := 0;

	charlotte.Name:= 'Ee Шарлотейшество';
    charlotte.NumberOfComponents := 5;
    charlotte.NumberOfDoneComponents := 0;
	charlotte.Components[1].Name := 'egg' ;
	charlotte.Components[1].RussianName := 'яйца' ;
	charlotte.Components[1].quantity_needed := 4;
	charlotte.Components[1].quantity_done := 0;

	charlotte.Components[2].Name := 'flour' ;
	charlotte.Components[2].RussianName := 'мука' ;
	charlotte.Components[2].quantity_needed := 1;
	charlotte.Components[2].quantity_done := 0;

	charlotte.Components[3].Name := 'apple' ;
	charlotte.Components[3].RussianName := 'яблоки' ;
	charlotte.Components[3].quantity_needed := 4;
	charlotte.Components[3].quantity_done := 0;

	charlotte.Components[4].Name := 'sugar' ;
	charlotte.Components[4].RussianName := 'сахар' ;
	charlotte.Components[4].quantity_needed := 1;
	charlotte.Components[4].quantity_done := 0;

	charlotte.Components[5].Name := 'cinnamon' ;
	charlotte.Components[5].RussianName := 'корица' ;
	charlotte.Components[5].quantity_needed := 1;
	charlotte.Components[5].quantity_done := 0;

	with r_greeksalad do
	begin
		Name := 'Салат "Хорьятики"';
		NumberOfComponents := 7;
    	NumberOfDoneComponents := 0;

    	Components[1].Name := 'tomato' ;
		Components[1].RussianName := 'помидор' ;
		Components[1].quantity_needed := 3;
		Components[1].quantity_done := 0;

		Components[2].Name := 'cucumber' ;
		Components[2].RussianName := 'огурец' ;
		Components[2].quantity_needed := 3;
		Components[2].quantity_done := 0;

		Components[3].Name := 'pepper' ;
		Components[3].RussianName := 'перец' ;
		Components[3].quantity_needed := 3;
		Components[3].quantity_done := 0;

		Components[4].Name := 'feta' ;
		Components[4].RussianName := 'фета' ;
		Components[4].quantity_needed := 2;
		Components[4].quantity_done := 0;

		Components[5].Name := 'olive' ;
		Components[5].RussianName := 'оливки' ;
		Components[5].quantity_needed := 2;
		Components[5].quantity_done := 0;

		Components[6].Name := 'oil' ;
		Components[6].RussianName := 'масло' ;
		Components[6].quantity_needed := 1;
		Components[6].quantity_done := 0;

		Components[7].Name := 'salt' ;
		Components[7].RussianName := 'соль' ;
		Components[7].quantity_needed := 1;
		Components[7].quantity_done := 0;		
	end;

	Recipes[1] := recipe_masculinesandwich;
	Recipes[2] := r_ecsanwich;
	Recipes[3] := charlotte;
	Recipes[4] := r_vegan;
	Recipes[5] := r_greeksalad;
end;

procedure Intro();
var
	l, i: integer;
	Line1,Line2, st: String;
begin
	sndPlaySound('Int.wav', snd_Async);//обычное воспроизведение
	ActiveStart();
	ClearDevice;
	SetColor(White);
	SetTextStyle(DefaultFont, HorizDir, 30);
	Line1 := 'Ночь собирается, и начинается твой дожор.';
	Line2 := 'Cреди этой ночи и всех, которые грядут после нее...';
	st := '';

	l:= length (Line1);

	for i:=1 to l do 
	begin 
		st := st + Line1[i];
		OutTextXY(100,100,st);
		delay(50);
	end;

	l:= length (Line2);
	st := '';
	for i:=1 to l do 
	begin 
		st := st + Line2[i];
		OutTextXY(100,130,st);
		delay(50);
	end;

	draw_Sign;
	SetTextStyle(DefaultFont, HorizDir, 25);
	OutTextXY(230,460,'Но сперва нямку нужно приготовить.');
	OutTextXY(250,500,'Нажми ENTER, чтобы начать игру.');
	readkey;
	sndPlaySound(nil, SND_ASYNC); // Остановка воспроизведения
end;

procedure Main();
begin
	SetActivePage(0);
	ClearDevice;
	SetVisualPage(0);
	NRecipes := 1;
	current_recipe := Recipes[NRecipes];
	Forfeit_points:=0;
	sndPlaySound('Main_m.wav', snd_Async + SND_LOOP);

	while true do
	begin
		drawrecipe(current_recipe);		

		move_product();

		if CloseGraphRequest = true then break;

		if Forfeit_points = Forfeit_points_max then
		begin
			ClearDevice;
			SetColor(red); 
			SetTextStyle(DefaultFont, HorizDir, 40); //задает шрифт и его размер
			sndPlaySound('Bad.wav', snd_Async);
			OutTextXY(300, 300, 'Это невозможно есть!');
			SetTextStyle(DefaultFont, HorizDir, 4);
			SetColor(lightred); 
			OutTextXY(375, 380, 'Попробуешь снова?');
			SetTextStyle(DefaultFont, HorizDir, 3);
			setcolor(white);
			OutTextXY(230, 450, 'Нажми ENTER чтобы продолжить или ESC чтобы выйти.');  
			key := readkey;
			case key of
				chr(13): //обозначение enter
				begin 
					ClearDevice;
					Forfeit_points := 0;
					current_recipe:=Recipes[NRecipes]; //обнуляем рецепт
					sndPlaySound('Main_m.wav', snd_Async + SND_LOOP);
				end;
				chr(27): //обозначение esc
				begin
					break;
				end;
			end;
		end;

		if  current_recipe.NumberOfDoneComponents = current_recipe.NumberOfComponents then
		begin	
			SetActivePage(1);
		   	ClearDevice;
		   	case NRecipes of
		   		1: draw_Masc;
		   		2: draw_Ec;
		   		3: draw_charlotte;
		   		4: draw_Vegan;
		   		5: draw_Greek;
		   	end;		  
		   	
			SetColor(Scarlet); 			
			SetTextStyle(DefaultFont, HorizDir, 40); //задает шрифт и его размер
			sndPlaySound('Good_mini.wav', snd_Async);
			OutTextXY(390, 500, 'Великолепно!');
			SetTextStyle(DefaultFont, HorizDir, 4);
			SetColor(PinkOrange); 
			OutTextXY(345, 580, 'Ты приготовил блюдо.');
			SetTextStyle(DefaultFont, HorizDir, 3);
			setcolor(white);
			OutTextXY(230, 630, 'Нажми ENTER чтобы продолжить или ESC чтобы выйти.'); 
			SetVisualPage(1);			
			key := readkey;

			SetActivePage(0);
			SetVisualPage(0);

			case key of
				chr(13): 
				begin 
					ClearDevice;
					NRecipes := NRecipes+1;
					if NRecipes > MaxRecipe then
					begin
						draw_Fin;
						readkey;
						break;
					end;
					current_recipe := Recipes[NRecipes];
					sndPlaySound('Main_m.wav', snd_Async + SND_LOOP);
					Forfeit_points := 0;
				end;
				chr(27): 
				begin
					break;
				end;
		   	end;		    
		end;  
	end;
end;

begin
	Randomize;

	gm:=m1024x768; 
    gd:= nopalette; 
    InitGraph(gd,gm,'');
     
   	Intro();
	
	Recipes_and_Components();
	Main();
	CloseGraph();    
end.