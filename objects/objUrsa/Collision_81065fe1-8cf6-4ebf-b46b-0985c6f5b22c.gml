/// Collision with the player
// Damage Logic 
if (objPlayerGrapple.bCanTakeDamage == 1 && bCanAttack && bAttacking)
{
	bCanAttack = false;
	tAttackRefresh = 180;
	objPlayerGrapple.iCurrentHP -= iUrsaDamage;
	objPlayerGrapple.bCanTakeDamage = 0;
	objPlayerGrapple.bGotHit = 1;
	effect_create_above(ef_firework, objPlayerGrapple.x, objPlayerGrapple.y-8, 0.1, c_red);
	bCanAttack = false;	
}
