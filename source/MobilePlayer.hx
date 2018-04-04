package;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class MobilePlayer extends Player 
{
	private var startX:Float;
	private var startY:Float;
	
	public function new(?X:Float=0, ?Y:Float=0) 
	{
		super(X, Y);
		startX = X;
		startY = Y;
		this.acceleration.y = 32;
		this.maxVelocity.set(128, 128);
	}
	
	override public function update(elapsed:Float):Void {
		if (!this.isOnScreen()) {
			this.x = startX;
			this.y = startY;
		}
		
		if (FlxG.keys.pressed.LEFT) {
			this.velocity.x = -128;
		} 
		else if (FlxG.keys.pressed.RIGHT) {
			this.velocity.x = 128;
		} 
		else {
			this.velocity.x = 0;
		}
		
		super.update(elapsed);
	}
	
}