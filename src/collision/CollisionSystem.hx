package collision;

/**
	CollisionSystem handles collisions in a level.
 */
class CollisionSystem {
	private var actors:Array<Collider>;
	private var solids:Array<Collider>;

	public function new() {
		actors = new Array<Collider>();
		solids = new Array<Collider>();
	}

	public function addActor(c:Collider):Void {
		actors.push(c);
	}

	public function removeActor(c:Collider):Bool {
		return actors.remove(c);
	}

	public function addSolid(c:Collider):Void {
		solids.push(c);
	}

	public function removeSolid(c:Collider):Bool {
		return solids.remove(c);
	}

	public function collidesSolid(c:Collider):Bool {
		for (solid in solids) {
			if (c.intersects(solid)) {
				return true;
			}
		}

		return false;
	}
}
