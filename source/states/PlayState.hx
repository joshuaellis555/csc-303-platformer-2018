package states;

import environment.Ground;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import player.PlatformerHero;

class PlayState extends FlxState
{
	private static var GROUND_TILE_COUNT(default, never):Int = 10;
	private static var GROUND_START_X(default, never):Float = 128;
	private static var GROUND_START_Y(default, never):Float = 320;
	
	private static var PLATFORMER_HERO_START_X(default, never):Float = 300;
	private static var PLATFORMER_HERO_START_Y(default, never):Float = 200;
	
	private var platformerHero:PlatformerHero;
	private var groundGroup:FlxTypedGroup<Ground>;
	
	override public function create():Void {
		super.create();
		instantiateEntities();
		addEntities();
	}
	
	/**
	 * Helper function that generates all starting objects.
	 */
	private function instantiateEntities():Void {
		platformerHero = new PlatformerHero(PLATFORMER_HERO_START_X, PLATFORMER_HERO_START_Y);
		
		groundGroup = new FlxTypedGroup<Ground>();
		for (i in 0...GROUND_TILE_COUNT) {
			groundGroup.add(new Ground(GROUND_START_X + Ground.LENGTH * i, GROUND_START_Y));
		}
	}
	
	/**
	 * Helper function that adds all starting objects to the Scene.
	 */
	private function addEntities():Void {
		add(platformerHero);
		add(groundGroup);
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}
}
