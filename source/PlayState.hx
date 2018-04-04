package;

import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	private var player:Player;
	
	override public function create():Void
	{
		super.create();
		
		player = new Player(FlxG.random.float(100, 500), 32);
		add(player);
		
		add(new Fireball(600, 48));
	}

	override public function update(elapsed:Float):Void
	{
		if (FlxG.keys.pressed.RIGHT) {
			player.x += 5; // we want to update player x and / or y postion
		}
		
		super.update(elapsed);
	}
}
