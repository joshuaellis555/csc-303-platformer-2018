package player.fsm.states;

import flixel.FlxObject;
import flixel.util.FlxColor;
import player.fsm.PlayerState;

/**
 * State for when the player initates a jump.
 * @author Samuel Bumgardner
 */
class ClimbState extends PlayerState
{
	private var climbSpeed = 50;
	private var direction = 1;
	private var side = "left";
	
	public function new(hero:Player) 
	{
		super(hero);
	}
	
	override public function handleInput(input:Input):Int 
	{
		if (side == "left" && input.leftPressed){
			this.direction = -1;		
		} else if (side == "right" && input.rightPressed){
			this.direction = -1;
		} else {
			this.direction = 1;
		}
		
		if (this.side == "left" && input.rightPressed){
			this.managedHero.velocity.x += Player.MAX_RUN_SPEED / 2;
			return PlayerStates.JUMP;
		} else if (this.side == "right" && input.leftPressed){
			this.managedHero.velocity.x -= Player.MAX_RUN_SPEED / 2;
			return PlayerStates.JUMP;
		}
		
		if (this.managedHero.isTouching(FlxObject.DOWN) && (!this.managedHero.isTouching(FlxObject.RIGHT) && !this.managedHero.isTouching(FlxObject.LEFT))){
			return PlayerStates.RUN;
		}
		
		return PlayerStates.NO_CHANGE;
	}
	
	override public function update():Void 
	{
		this.managedHero.velocity.y = climbSpeed * direction;
	}
	
	override public function transitionIn():Void 
	{
		this.managedHero.color = FlxColor.LIME;
		
		if (this.managedHero.isTouching(FlxObject.LEFT)){
			this.side = "left";
		} else if (this.managedHero.isTouching(FlxObject.RIGHT)){
			this.side = "right";
		}
	}
	
	override public function transitionOut():Void 
	{
		this.managedHero.color = FlxColor.WHITE;
	}
	
}