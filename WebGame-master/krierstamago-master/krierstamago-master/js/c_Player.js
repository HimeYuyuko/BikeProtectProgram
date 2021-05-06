function c_Player(ctx)
{	
	this.spr_player = new Image();
	this.spr_player.src = "./res/hand.png";
	
	this.Init = function()
	{
		this.x = 275;
		this.y = 300;
	}
	
	this.Draw = function()
	{
		ctx.save();
		ctx.translate(this.x+16, this.y+16)
		ctx.drawImage(this.spr_player, -16, -16);
		ctx.restore();
	}

	this.HandleInput = function()
	{
		if ((keys[38]) && (this.y > 0)) this.y -= 3; //up
		if ((keys[40]) && (this.y < GameCanvas.height-105)) this.y += 3; //down
		if ((keys[37]) && (this.x > 0)) this.x -= 3; //left
		if ((keys[39]) && (this.x < GameCanvas.width-76)) this.x += 3; //right
	}
	
	this.Pet = function()
	{
		this.x = pet.x;
		this.y = pet.y;
		
		if (pet.health > 0) pet.affection += 50;
	}
	
	this.Feed = function()
	{
		if (pet.meat > 0)
		{
			pet.meat--;
			pet.health += 5;
			pet.affection += 20;
			pet.poop += 900;
		}
	}
	
	this.Punch = function()
	{
		//MoveTo(this.x, this.y, pet.x, pet.y, 9);
		this.x = pet.x;
		this.y = pet.y;
		
		if (pet.health > 0) pet.health -= 20;
		if (pet.affection > 0) pet.affection -= 300;
	}
	
	this.ForcePoop = function()
	{
		if (pet.poop >= 1000)
		{
			pet.poop = 0;
		}
		else pet.health -= 5;
	}
}//c_Player