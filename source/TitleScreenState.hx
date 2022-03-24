package;

import flixel.FlxG;
import flixel.FlxState;

using StringTools;

class TitleScreenState extends FlxState
{
	override public function create()
	{
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;

		super.create();
	}

	var isFullscreen:Bool = false;

	override public function update(elapsed:Float)
	{
		if (!isFullscreen) {
			if (FlxG.keys.justPressed.F) {
				isFullscreen = true;
				FlxG.fullscreen = true;
			}
		} else {
			if (FlxG.keys.justPressed.F) {
				isFullscreen = false;
				FlxG.fullscreen = false;
			}
		}
		super.update(elapsed);
	}
}
