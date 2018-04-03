package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSprite.IFlxSprite;
import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.math.FlxRandom;
import flixel.text.FlxText;
import flixel.util.FlxColor;



class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		
		var txt:FlxText = new FlxText(300, 200, 100, "Hello World", 20);
		txt.font = "Arial";
		txt.velocity.x = 1; 
		txt.velocity.y = 1;
		txt.moves = true;
		
		add(txt);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
