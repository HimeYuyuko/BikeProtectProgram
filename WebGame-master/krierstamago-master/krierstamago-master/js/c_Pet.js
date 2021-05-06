function c_Pet(ctx)
{
	this.spr_pet = new Image();
	this.spr_pet.src = "./res/pet.png";
	this.spr_pet_dead = new Image();
	this.spr_pet_dead.src = "./res/pet_dead.png";
	this.spr_pet_hat = new Image();
	this.has_hat = false;
	
	this.x;
	this.y;
	
	this.coins;
	this.meat;
	
	this.health;
	this.affection;
	this.poop;
	
	this.tx;
	this.ty;
	this.Timer;
	
	this.Init = function(startx, starty)
	{
		this.x = startx;
		this.y = starty;
		
		this.health = 100; //max 100
		this.affection = 500; //max 1000
		this.poop = 500; //max 10000
		
		this.coins = 500; 
		this.meat = 5;
		
		this.Timer = 0;
	}
	
	this.Draw = function()
	{
		if (!this.health <= 0)
		{
			ctx.drawImage(this.spr_pet, this.x, this.y);
			if (this.has_hat)
			{
				ctx.drawImage(this.spr_pet_hat, this.x + 25, this.y - 45);
			}
		}
		else 
		{
			ctx.drawImage(this.spr_pet_dead, this.x, this.y);
		}
	}
	
	this.Handle = function()
	{
		if (!this.health <= 0)
		{
			var DINOSPEED = 5;
			this.Timer++; //Math.floor((Math.random()*10000)+3000);
			if (gamestate == petmain) this.poop++;
			
			if (this.x != this.tx)
			{
				if (this.x < this.tx-DINOSPEED) this.x += DINOSPEED;
				else if (this.x > this.tx+DINOSPEED) this.x -= DINOSPEED;
				else {}
			}
	
			if (this.y != this.ty)
			{
				if (this.y < this.ty-DINOSPEED) this.y += DINOSPEED;
				else if (this.y > this.ty+DINOSPEED) this.y -= DINOSPEED;
				else {}
			}
			
			if (this.Timer >= 350)
			{
				this.SetRandomValues();
				this.Timer = 0;
			}
		}
		
		//limits
		if (this.health < 0) this.health = 0;
		if (this.affection < 0) this.affection = 0;
		if (this.poop < 0) this.poop = 0;
		if (this.health >= 100) this.health = 100;
		if (this.affection >= 1000) this.affection = 1000;
		if (this.poop >= 10000) 
		{ 
			this.poop -= 1000;
			this.health -= 10;
			//poop
		}
	}
	
	this.SetRandomValues = function()
	{
		this.tx = Math.floor((Math.random()*495)+5);
		this.ty = Math.floor((Math.random()*335)+5);
	}
}