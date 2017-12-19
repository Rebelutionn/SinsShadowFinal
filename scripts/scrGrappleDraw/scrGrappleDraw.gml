 /// DRAW SELF AND GRAPPLE LINE 

draw_self(); 

if bGrappling
{
	//draw_line_width_color(x, y, instNearestGP.x, instNearestGP.y, 3, c_navy, c_teal);
	draw_line_width_color(x, y, iGPSegment1x, iGPSegment1y, 1, c_navy, c_teal);
	draw_line_width_color(iGPSegment1x, iGPSegment1y, instNearestGP.x, instNearestGP.y, 1, c_red, c_aqua);
	draw_line_width_color(iGPSegment1x, iGPSegment1y, objPlayerGrapple.x, objPlayerGrapple.y, 1, c_red, c_aqua);
	draw_line_width_color(iGPSegment2x, iGPSegment2y, objPlayerGrapple.x, objPlayerGrapple.y, 1, c_red, c_aqua);
	if bGPDrawDoOnce == false
	{
		bGPDrawDoOnce = true;
		instance_create_layer(iGPSegment1x, iGPSegment1y, "Player", objGPSegment);
		instance_create_layer(iGPSegment2x, iGPSegment2y, "Player", objGPSegment2);
	}
}

if !bGrappling
{
	bGPDrawDoOnce = false;
}

//draw_circle(iGPSegment1x, iGPSegment1y, 4, false);