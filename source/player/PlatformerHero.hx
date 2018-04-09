package player;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * Hero that moves like a typical 2-D platformer character.
 * @author Samuel Bumgardner
 */
class PlatformerHero extends Hero
{

	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
	}
	
}