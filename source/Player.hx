package;

import flixel.FlxSprite;

/**
 * Sample Player class for us to practice different ideas.
 * @author Sam
 */
class Player extends FlxSprite 
{

	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		
		makeGraphic(32, 32);
	}
}