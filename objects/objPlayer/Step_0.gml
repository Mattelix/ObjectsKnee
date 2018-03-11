if (hp<=0)
instance_destroy(id)
switch (state)
{
	case states.normal: normalControls(); break;
	case states.fightMode: fightControls(); break;
	case states.inventoryMode: inventoryControls(); break;
}


