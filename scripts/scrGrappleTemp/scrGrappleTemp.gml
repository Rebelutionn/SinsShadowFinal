///// Grapple functionality /////
// GRAPPLE CREATION
// Creates the joint when the button is pressed
if(keyboard_check_pressed(vk_up)) && (instance_exists(objGrappleBlock)) && (distance_to_object(objGrappleBlock) < iGrappleRadius)
{
	bGrappling = true;
	instNearestGP = instance_nearest(x, y, objGrappleBlock);
	jointGrapple = physics_joint_rope_create(objPlayerGrapple, instNearestGP, (objPlayerGrapple.x + 9), (objPlayerGrapple.y - 41), instNearestGP.x, instNearestGP.y, 100, true); 
	bJumping = false;
}

if(keyboard_check_released(vk_up)) && (bGrappling == true) || (gamepad_button_check_released(0, gp_face3)) && (bGrappling == true)
{
	physics_joint_delete(jointGrapple);
	bGrappling = false;
}


/// ACCURATE GRAPPLING /// 
if(bGrappling == true) && objPlayerGrapple.x < instNearestGP.x
{	
	physics_apply_force(x, y, 350, 0);
	if(bGrappling == true) && objPlayerGrapple.x < instNearestGP.x && keyboard_check(ord("D"))
	{
		physics_apply_force(x, y, 370, 0);
	}
}

if(bGrappling == true) && objPlayerGrapple.x > instNearestGP.x
{
	physics_apply_force(x, y, -350, 0);
	if(bGrappling == true) && objPlayerGrapple.x > instNearestGP.x && keyboard_check(ord("A"))
	{
		physics_apply_force(x, y, -370, 0);
	}
}

iGPSegment1x = ((instNearestGP.x - x)/1.5) + x;
iGPSegment1y = ((instNearestGP.y - y)/1.5) + y;

iGPSegment2x = ((instNearestGP.x - x)/4) + x;
iGPSegment2y = ((instNearestGP.y - y)/4) + y;
distNearestGP = distance_to_object(instNearestGP);

//dirNearestGP = point_direction(x, y, instNearestGP.x, instNearestGP.y);
//show_debug_message("Distance: " + string(distNearestGP));
//show_debug_message("Direction: " + string(dirNearestGP));