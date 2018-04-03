package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.FlxKeyManager;

class PlayState extends FlxState
{
	private var player:Player;
	
	override public function create():Void
	{
		super.create();
		player = new Player(32, 32);
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		if (FlxG.keys.pressed.RIGHT) {
			player.x += 5; // we want to update player x and / or y postion
		}
		
		super.update(elapsed);
	}
}
