package;

import flixel.FlxState;
import player.PlatformerHero;
import player.TopDownHero;

class PlayState extends FlxState
{
	private var topDownHero:TopDownHero;
	private var platformerHero:PlatformerHero;
	
	override public function create():Void {
		super.create();
		instantiateEntities();
		addEntities();
	}
	
	/**
	 * Helper function that generates all starting objects.
	 */
	private function instantiateEntities():Void {
		topDownHero = new TopDownHero(32, 32);
		platformerHero = new PlatformerHero(300, 200);
	}
	
	/**
	 * Helper function that adds all starting objects to the Scene.
	 */
	private function addEntities():Void {
		add(topDownHero);
		add(platformerHero);
	}

	override public function update(elapsed:Float):Void {
		super.update(elapsed);
	}
}
