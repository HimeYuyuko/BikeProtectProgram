function m_Player(ctx)
{	
	this.x;
	this.y;
	this.lives;
	
	this.spr_player = new Image();
	this.spr_player.src = "./res/m_player.png";
	
	this.Init = function()
	{
		this.x = 317;
		this.y = 444;
		this.lives = 3;
		//this.score = 0;
	}
	
	this.Respawn = function()
	{
		this.x = 317;
		this.y = 444;
		//this.snd_die.play();
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
		if ((keys[38]) && (this.y > 0)) this.y -= 6; //up
		if ((keys[40]) && (this.y < GameCanvas.height-32)) this.y += 6; //down
		if ((keys[37]) && (this.x > 0)) this.x -= 6; //left
		if ((keys[39]) && (this.x < GameCanvas.width-32)) this.x += 6; //right
	}
}//c_Ball