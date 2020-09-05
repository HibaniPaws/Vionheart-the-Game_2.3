//Script played inside PLAYER parent object, gets key_Cast or key_Item input.
//Input is in array (0-6) for key_Item. (0-4) for key_Cast.

function Inventory_script() {

		// >>X: Here is where the items are going to be when they're in an active slot.
		// >>X: For now, they have a value of 0, or technically false. meaning nothing currently in that slot- feel free to change it to an "empty" Item ID. AKA- Item.none.
		// >>X: If you want to test if it works, set the ActiveSlot[n] to an Item.
		// >>X: Input are as follows: ActiveSlot [ 1 = Z | 2 = X | 3 = C | 4 = A | 5 = S | 6 = D ]
		//										CastSlot [ 1 = Q | 2 = W | 3 = E | 4 = R ]

	//Item is in Slot

//example:
//	ActiveSlot[1] = Item.none;
//	ActiveSlot[2] = Item.dagger1;
	ActiveSlot[1] = 0;
	ActiveSlot[2] = 0;
	ActiveSlot[3] = 0;
	ActiveSlot[4] = 0;
	ActiveSlot[5] = 0;
	ActiveSlot[6] = 0;

	//Cast is in Slot

	CastSlot[1] = 0;
	CastSlot[2] = 0;
	CastSlot[3] = 0;
	CastSlot[4] = 0;

		// >>X: Here is the code for using said slots. for both Items and Casts. based on player Input.

	var ItemUse = key_Item
	switch (ItemUse)
	{
		case 1: Use(ActiveSlot[1]); break;
		case 2: Use(ActiveSlot[2]); break;
		case 3: Use(ActiveSlot[3]); break;
		case 4: Use(ActiveSlot[4]); break;
		case 5: Use(ActiveSlot[5]); break;
		case 6: Use(ActiveSlot[6]); break;
	}

	var CastUse = key_Cast
	switch (CastUse)
	{
		case 1: Use(CastSlot[1]); break;
		case 2: Use(CastSlot[2]); break;
		case 3: Use(CastSlot[3]); break;
		case 4: Use(CastSlot[4]); break;
	}


}
