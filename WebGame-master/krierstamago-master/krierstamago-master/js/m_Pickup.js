function m_Pickup(ctx)
{
	this.x;
	this.y;
	
	this.spr_m_pickup = new Image();
	this.spr_m_pickup.src = "./res/m_pickup.png";
	
	this.Init = function()
	{
		this.x = Math.floor((Math.random()*608)+1);
		this.y = Math.floor((Math.random()*428)+1);
	}
	
	this.Draw = function()
	{
		ctx.drawImage(this.spr_m_pickup, this.x, this.y);
	}
}