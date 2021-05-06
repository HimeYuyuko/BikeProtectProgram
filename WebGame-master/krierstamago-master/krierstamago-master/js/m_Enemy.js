function m_Enemy()
{
	this.x;
	this.y;
	this.dx;
	this.dy;
	this.type;
	this.cooldown;
	
	this.spr_m_enemy = new Image();
	this.spr_m_enemy.src = "./res/m_enemy.png";
	
	this.Init = function(startx, starty, richtingx, richtingy, enemytype)
	{
		this.x = startx;
		this.y = starty;
		this.dx = richtingx;
		this.dy = richtingy;
		this.type = enemytype;
		this.visible = 1;
		this.cooldown = 0;
	}
	
	this.Draw = function()
	{
		ctx.drawImage(this.spr_m_enemy, this.x, this.y);
	}
	
	this.Handle = function(gametype)
	{
		switch (gametype)
		{
			case 0: //PoopMania
				this.x += this.dx;
				this.y += this.dy;
				
				if ((this.x < 0) || (this.x > (640 - 32)))
				{
					this.dx = -this.dx;
				}
				if ((this.y < 0) || (this.y > (480 - 32)))
				{
					this.dy = -this.dy;
				}
			break;
			
			case 1: //PoopWay
				this.x += this.dx;
				
				if (this.x < -40) this.x = 695;
				if (this.x > 700) this.x = -35;
			break;
		}
		
	}
}