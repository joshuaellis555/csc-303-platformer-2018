package player;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * Base hero class that player-controlled objects should descend from.
 * @author Samuel Bumgardner
 */
class Hero extends FlxSprite
{
	public static var LENGTH(default, never):Int = 32;
	public static var HEIGHT(default, never):Int = 32;

	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		makeGraphic(LENGTH, HEIGHT);
	}
	
}