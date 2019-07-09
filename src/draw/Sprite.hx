package draw;

class Sprite extends h2d.Object {
	var ent:entity.Entity;

	public function new(ent:entity.Entity) {
		super(ent.level);
		this.ent = ent;
	}

	override private function draw(ctx:h2d.RenderContext) {
		x = ent.x;
		y = ent.y;

		super.draw(ctx);
	}
}