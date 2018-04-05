package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

/**
 * Simple extension of FlxSprite used for solid platforms and walls.
 */
class Ground extends FlxSprite 
{

	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		makeGraphic(32, 32, FlxColor.GRAY);
		set_immovable(true);
	}
	
}