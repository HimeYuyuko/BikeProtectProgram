//var pet = new c_Pet(ctx);

function c_Item(ctx, itemID)
{
	this.x;
	this.y;
	this.ID;
	
	this.spr_meat = new Image();
	this.spr_meat.src = "./res/meat.png";
	this.spr_poop = new Image();
	this.spr_poop.src = "./res/poop.png";
	//this.snd_poop = new Audio("./sounds/poop.wav");
	this.spr_kriers = new Image();
	this.spr_kriers.src = "./res/krierssanta.png";
	
	this.Init = function(xSpawn, ySpawn, ItemID)
	{
		this.x = xSpawn;
		this.y = ySpawn;
		this.ID = ItemID;
	}
	
	this.Draw = function()
	{
		switch (this.ID)
		{
			case "meat":
				ctx.drawImage(this.spr_poop, this.x, this.y);
			break;
			
			case "poop":
				ctx.drawImage(this.spr_meat, this.x, this.y);
			break;
			
			default:
				ctx.drawImage(this.spr_error, this.x, this.y);
			break;
		}
		
	}
	
	this.Handle = function()
	{
		switch (this.ID)
		{
			case "meat":
				this.x = pet.x;
				this.y = pet.y;
			break;
			
			case "poop":
				//poop ai
			break;
			
			default:
				//error ai, do nothing
			break;
		}
	}
} //c_Item