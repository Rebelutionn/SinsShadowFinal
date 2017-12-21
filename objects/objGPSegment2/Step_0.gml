/// GP SEG 2 /// 
// Needs a Rope between itself and GP Seg 1, AND Amelia // 
// this is first in line of the Segments, even though the White Ball is drawn in the wrong spot //

if objPlayerGrapple.bGrappling
{
	if bGPDrawDoOnce == false
	{
		bGPDrawDoOnce = true;
		// Creates a rope joint between Seg2(self) and Player
		ropeSeg2 = physics_joint_rope_create(self, objPlayerGrapple, x, y, objPlayerGrapple.x, objPlayerGrapple.y, objPlayerGrapple.distNearestGP/4, false);
		physics_joint_set_value(ropeSeg2, 150, objPlayerGrapple.distNearestGP/4);
		// Creates a rope joint between Seg2(self) and Seg1 
		ropeSeg1 = physics_joint_rope_create(self, objGPSegment, x, y, objGPSegment.x, objGPSegment.y, objPlayerGrapple.distNearestGP/2, false);
		physics_joint_set_value(ropeSeg1, 150, objPlayerGrapple.distNearestGP/4);
	}
}
if !objPlayerGrapple.bGrappling
{
	bGPDrawDoOnce = false;
	instance_destroy(self); 
}

//show_debug_message(objPlayerGrapple.instNearestGP.x);
