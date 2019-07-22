import hxd.App;
import hxd.Res;

class Game extends App {
	var level:LevelScene;

	override function init():Void {
		Res.initLocal();
		Data.load(Res.data.entry.getText());
		setLevel(0);
	}

	function setLevel(index:Int):Void {
		this.level = new LevelScene(this, index);
		setScene(level);
	}

	override function update(dt:Float):Void {
		// Update level
		if (level != null) {
			level.update(dt);
		}
	}

	static function main():Void {
		new Game();
	}
}
