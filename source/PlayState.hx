package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	private var player:Player;
	private var fireball:Fireball;
	
	override public function create():Void
	{
		super.create();
		
		player = new Player(FlxG.random.float(100, 500), 32);
		add(player);
		
		
		fireball = new Fireball(600, 48);
		add(fireball);
	}

	override public function update(elapsed:Float):Void
	{
		if (FlxG.keys.pressed.RIGHT) {
			player.x += 5; // we want to update player x and / or y postion
		}
		
		FlxG.overlap(player, fireball,collidePlayerAndFireball);
		
		super.update(elapsed);
	}
	
	private function collidePlayerAndFireball(player:Player, fireball:Fireball):Void{
		player.destroy();
	}
	
}
