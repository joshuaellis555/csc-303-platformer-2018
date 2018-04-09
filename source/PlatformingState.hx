package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxGroup;

/**
 * ...
 * @author ...
 */
class PlatformingState extends FlxState 
{
	private var player:MobilePlayer;
	private var groundBlocks:FlxTypedGroup<Ground>;

	override public function create():Void
	{
		super.create();
		
		player = new MobilePlayer(300, 32);
		add(player);
		
		
		groundBlocks = new FlxTypedGroup<Ground>();
		for (i in 0...10) {
			groundBlocks.add( new Ground(i * 32 + 128, 400));
		}
		add(groundBlocks);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		FlxG.collide(player, groundBlocks);
	}
	
}