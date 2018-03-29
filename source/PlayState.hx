package;

import flixel.FlxSprite;
import flixel.FlxSprite.IFlxSprite;
import flixel.FlxState;
import flixel.math.FlxRandom;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		
		var rng:FlxRandom = new FlxRandom();
		
		var thing1:FlxSprite =  new FlxSprite(rng.int(0, 100), rng.int(0, 300));
		thing1.makeGraphic(400, 100, FlxColor.CYAN);
		for (x in 0...400){
			for (y in 0...100){
				thing1.pixels.setPixel(x, y, rng.color());
				//thing1.pixels.setPixel(x, y, rng.color());
			}
		}
		
		add(thing1);
		var thing2:FlxSprite =  new FlxSprite(30, 300);
		add(thing2);
		var thing3:FlxSprite =  new FlxSprite(300, 30);
		add(thing3);
		var thing4:FlxSprite =  new FlxSprite(350, 390);
		add(thing4);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
