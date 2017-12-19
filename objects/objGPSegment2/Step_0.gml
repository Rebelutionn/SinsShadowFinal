/// Get this to work without the "repeat" function below first
// get the Rope to connect to APH, and THEN we add in the chain links

if objPlayerGrapple.bGrappling
{
	if bGPDrawDoOnce == false
	{
		bGPDrawDoOnce = true;
		ropeSeg2 = physics_joint_rope_create(self, objPlayerGrapple.instNearestGP, x, y, objPlayerGrapple.instNearestGP.x, objPlayerGrapple.instNearestGP.y, objPlayerGrapple.distNearestGP/8, false);
		physics_joint_set_value(ropeSeg2, 150, objPlayerGrapple.distNearestGP/2);
		ropeSeg1 = physics_joint_rope_create(objPlayerGrapple, self, objPlayerGrapple.x, objPlayerGrapple.y, x, y, objPlayerGrapple.distNearestGP, false);
		physics_joint_set_value(ropeSeg1, 150, objPlayerGrapple.distNearestGP/2);
	}
}
if !objPlayerGrapple.bGrappling
{
	bGPDrawDoOnce = false;
	instance_destroy(self); 
}

//show_debug_message(objPlayerGrapple.instNearestGP.x);