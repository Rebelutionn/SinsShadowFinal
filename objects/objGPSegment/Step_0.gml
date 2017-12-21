// GP SEG 1 // 

/// This needs to be roped between itself and GP, AND GPSeg2 /// 

if objPlayerGrapple.bGrappling
{
	if bGPDrawDoOnce == false
	{
		bGPDrawDoOnce = true;
		ropeSeg2 = physics_joint_rope_create(self, objGPSegment2, x, y, objGPSegment2.x, objGPSegment2.y, objPlayerGrapple.distNearestGP/1.5, false);
		physics_joint_set_value(ropeSeg2, 120, objPlayerGrapple.distNearestGP/1.5);
		ropeSeg1 = physics_joint_rope_create(objPlayerGrapple.instNearestGP, self, objPlayerGrapple.instNearestGP.x, objPlayerGrapple.instNearestGP.y, x, y, objPlayerGrapple.distNearestGP, false);
		physics_joint_set_value(ropeSeg1, 120, objPlayerGrapple.distNearestGP/1.5);
	}
}
if !objPlayerGrapple.bGrappling
{
	bGPDrawDoOnce = false;
	instance_destroy(self); 
}

//show_debug_message(objPlayerGrapple.instNearestGP.x);