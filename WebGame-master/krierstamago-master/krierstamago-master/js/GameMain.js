// Variables
var GameCanvas = document.getElementById("GameCanvas");
var ctx = GameCanvas.getContext("2d");

var canvasMinX = GameCanvas.offsetLeft;
var canvasMinY = GameCanvas.offsetLeft;
var canvasMaxX = canvasMinX + GameCanvas.width;
var canvasMaxY = canvasMinY + GameCanvas.height;

var gLoop;
var keys = new Array(256);

document.body.addEventListener('keydown', onKeyDown, false);
document.body.addEventListener('keyup', onKeyUp, false);

/*var MAXENEMIES = 5;
var spr_enemy = new Array(5);
	spr_enemy[0] = new Image();	spr_enemy[0].src = "res/enemy0.png";
	spr_enemy[1] = new Image();	spr_enemy[1].src = "res/enemy1.png";
	spr_enemy[2] = new Image();	spr_enemy[2].src = "res/enemy2.png";
	spr_enemy[3] = new Image();	spr_enemy[3].src = "res/enemy3.png";
	spr_enemy[4] = new Image();	spr_enemy[4].src = "res/enemy4.png";*/

var spr_bg_login = new Image();
	spr_bg_login.src = "res/bg_login.png";
var spr_disclaimer = new Image();
	spr_disclaimer.src = "res/disclaimer.png";
var spr_bg_grass = new Image();
	spr_bg_grass.src = "res/bg_grass.png";
var spr_bg_inventory = new Image();
	spr_bg_inventory.src = "res/bg_inventory.png";
var spr_bg_shop = new Image();
	spr_bg_shop.src = "res/bg_shop.png";
var spr_bg_minigames = new Image();
	spr_bg_minigames.src = "res/bg_minigames.png";

var spr_bar_status = new Image();
	spr_bar_status.src = "res/bar_Status.png";
var spr_bar_health = new Image();
	spr_bar_health.src = "res/bar_Health.png";
var spr_bar_affection = new Image();
	spr_bar_affection.src = "res/bar_Affection.png";
var spr_bar_poop = new Image();
	spr_bar_poop.src = "res/bar_Poop.png";
var spr_coin = new Image();
	spr_coin.src = "res/coin.png";
var spr_food = new Image();
	spr_food.src = "./res/meat.png";
var spr_kriers = new Image();
	spr_kriers.src = "./res/krierssanta.png";

var player = new c_Player(ctx);
var pet = new c_Pet(ctx);
var minigame = new Minigames(ctx);
var poop = new c_Item(ctx, "poop");

var login = 1;
var disclaimer = 3;
var init = 6;
var petmain = 7;
var inventory = 9;
var shop = 69;
var minigames = 404;
var minigame_poopway = 420;
var minigame_poopmania = 421;
var exit = 666;
var gamestate = login;

// Main
function gameupdate()
{
	ClearCanvas();

	switch(gamestate)
	{
		case login: //Menu
			$("#btn_login").show();
		break;

		case disclaimer:
			DrawDisclaimer();
		break;

		case init: //Init
			pet.Init(100, 250);
			player.Init();

			gamestate = petmain;
		break;

		case petmain: //Loop
			DrawGrass();

			pet.Draw();
			pet.Handle();

			player.Draw();
			player.HandleInput();

			DrawPetHUD();
		break;

		case inventory:
			DrawInventory();
		break;

		case shop:
			DrawShop();
		break;

		case minigames:
			DrawMinigames();
			//GOTO: Minigame 1

			//GOTO: Minigame 2

			//GOTO: PetMain
		break;

		case minigame_poopway:
			DrawGrass();
			if (minigame.player.lives > 0)
			{
				minigame.PoopWay();
				DrawMinigameHUD();
			}
			else DrawMinigameGameover();
		break;

		case minigame_poopmania:
			DrawGrass();
			if (minigame.player.lives > 0)
			{
				minigame.PoopMania();
				DrawMinigameHUD();
			}
			else DrawMinigameGameover();
		break;

		case exit:
			//exit message?
		break;

		default:
			//error message here please.
		break
	}

	gLoop = setTimeout(gameupdate, 33);
}

// Functions
function onKeyDown(evt) { keys[evt.keyCode & 255] = 1; }
function onKeyUp(evt) { keys[evt.keyCode & 255] = 0; }

function MoveTo(sx, sy, tx, ty, speed)
{
	if (sx != tx)
	{
		if (sx < tx-speed) sx += speed;
		else if (sx > tx+speed) sx -= speed;
		else {}
	}

	if (sy != ty)
	{
		if (sy < ty-speed) sy += speed;
		else if (sy > ty+speed) sy -= speed;
		else {}
	}
}

function CheckCollision(x1, y1, x2, y2, radius)
{
	if ( (y1 > (y2 - radius)) && (y1 < (y2 + radius)) )
	{
		if ( (x1 > (x2 - radius)) && (x1 < (x2 + radius)) )
		{
			return 1;
		}
	}
	return 0;
}

//Drawing
var ClearCanvas = function()
{
	ctx.clearRect(0, 0, GameCanvas.width, GameCanvas.height);
	ctx.beginPath();
	ctx.drawImage(spr_bg_login, 0, 0);
	ctx.closePath();
	ctx.fill();
}

var DrawDisclaimer = function()
{
	ctx.beginPath();
	ctx.drawImage(spr_disclaimer, 0, 0);
	ctx.closePath();
}

var DrawGrass = function()
{
	ctx.beginPath();
	ctx.drawImage(spr_bg_grass, 0, 0);
	ctx.closePath();
}

var DrawInventory = function()
{
	ctx.beginPath();
	ctx.drawImage(spr_bg_inventory, 0, 0);
	ctx.closePath();
}

var DrawShop = function()
{
	ctx.beginPath();

	ctx.font = "14pt Showcard Gothic";
	ctx.drawImage(spr_bg_shop, 0, 0);
	ctx.fillText(pet.coins, 113, 413);

	ctx.drawImage(spr_food, 144, 110);
	//ctx.drawImage(spr_kriers, 257, 67);
	//ctx.drawImage(spr_kriers, 389, 67);
	//ctx.drawImage(spr_kriers, 125, 228);
	//ctx.drawImage(spr_kriers, 257, 228);
	ctx.drawImage(spr_kriers, 389, 228);

	ctx.fillText("50", 152, 215);
	//ctx.fillText(" ", 285, 215);
	//ctx.fillText(" ", 414, 215);
	//ctx.fillText(" ", 152, 376);
	//ctx.fillText(" ", 284, 376);
	ctx.fillText("1", 416, 376);

	ctx.closePath();
}

var DrawPetHUD = function()
{
	ctx.beginPath();
	ctx.font = "14pt Showcard Gothic";
	ctx.drawImage(spr_bar_status, 0, 0);
	ctx.drawImage(spr_bar_health, 2, 2);
	ctx.drawImage(spr_bar_affection, 2, 25);
	ctx.drawImage(spr_bar_poop, 2, 48);
	ctx.fillText(pet.health + " / 100", 110, 20);
	ctx.fillText(pet.affection + " / 1000", 110, 43);
	ctx.fillText(pet.poop + " / 10000", 110, 66);
	ctx.font = "16pt Showcard Gothic";
	ctx.drawImage(spr_coin, 2, 72);
	ctx.fillText(pet.coins, 37, 95);
	ctx.drawImage(spr_food, 0, 97);
	ctx.fillText(pet.meat, 80, 122);
	ctx.closePath();
}

var DrawMinigames = function()
{
	ctx.beginPath();
	ctx.drawImage(spr_bg_minigames, 0, 0);
	ctx.closePath();
}

var DrawMinigameHUD = function()
{
	ctx.beginPath();
	ctx.font = "16pt Showcard Gothic";
	ctx.fillText("Lives: " + minigame.player.lives, 10, 26);
	ctx.fillText("Level: " + (minigame.MAXENEMIES - 4), 10, 46);
	ctx.closePath();
}

var DrawMinigameGameover = function()
{
	ctx.beginPath();
	ctx.font = "72pt Showcard Gothic";
	ctx.fillText("Game Over", 50, 280);;
	ctx.closePath();
}

//Button Shit
$("#btn_pet").hide();
$("#btn_feed").hide();
$("#btn_punch").hide();
$("#btn_forcepoop").hide();

$("#btn_shop_meat").hide();
$("#btn_shop_kriers").hide();

$("#btn_minigame_poopmania").hide();
$("#btn_minigame_poopway").hide();

$("#btn_inventory").hide();
$("#btn_shop").hide();
$("#btn_minigames").hide();

$("#btn_login").hide();
$("#btn_continue").hide();
$("#btn_back").hide();


$("#btn_pet").click(function()
{
	player.Pet();
});

$("#btn_feed").click(function()
{
	player.Feed();
});

$("#btn_punch").click(function()
{
	player.Punch();
});

$("#btn_forcepoop").click(function()
{
	player.ForcePoop();
});

$("#btn_shop_meat").click(function()
{
	if (pet.coins >= 50)
	{
		pet.coins -= 50;
		pet.meat++;
	}
});

$("#btn_shop_kriers").click(function()
{
	if (pet.coins >= 1)
	{
		pet.has_hat = true;
		pet.spr_pet_hat.src = "./res/poop.png";
	}
});

$("#btn_inventory").click(function()
{
	$("#btn_pet").hide();
	$("#btn_feed").hide();
	$("#btn_punch").hide();
	$("#btn_forcepoop").hide();

	$("#btn_inventory").hide();
	$("#btn_shop").hide();
	$("#btn_minigames").hide();

	$("#btn_login").hide();
	$("#btn_continue").hide();

	$("#btn_back").show();

	gamestate = inventory;
});

$("#btn_shop").click(function()
{
	$("#btn_pet").hide();
	$("#btn_feed").hide();
	$("#btn_punch").hide();
	$("#btn_forcepoop").hide();

	$("#btn_inventory").hide();
	$("#btn_shop").hide();
	$("#btn_minigames").hide();

	$("#btn_login").hide();
	$("#btn_continue").hide();

	$("#btn_shop_meat").show();
	$("#btn_shop_kriers").show();

	$("#btn_back").show();

	gamestate = shop;
});

$("#btn_minigame_poopway").click(function()
{
	$("#btn_minigame_poopmania").hide();
	$("#btn_minigame_poopway").hide();

	minigame.InitPW();
	gamestate = minigame_poopway;
});

$("#btn_minigame_poopmania").click(function()
{
	$("#btn_minigame_poopmania").hide();
	$("#btn_minigame_poopway").hide();

	minigame.InitPM();
	gamestate = minigame_poopmania;
});

$("#btn_minigames").click(function()
{
	$("#btn_pet").hide();
	$("#btn_feed").hide();
	$("#btn_punch").hide();
	$("#btn_forcepoop").hide();

	$("#btn_inventory").hide();
	$("#btn_shop").hide();
	$("#btn_minigames").hide();

	$("#btn_login").hide();
	$("#btn_continue").hide();

	$("#btn_minigame_poopmania").show();
	$("#btn_minigame_poopway").show();

	$("#btn_back").show();

	gamestate = minigames;
});


$("#btn_login").click(function()
{
	$("#btn_pet").hide();
	$("#btn_feed").hide();
	$("#btn_punch").hide();
	$("#btn_forcepoop").hide();

	$("#btn_inventory").hide();
	$("#btn_shop").hide();
	$("#btn_minigames").hide();

	$("#btn_login").hide();
	$("#btn_back").hide();

	$("#btn_continue").show();

	gamestate = disclaimer;
});

$("#btn_continue").click(function()
{
	$("#btn_login").hide();
	$("#btn_continue").hide();
	$("#btn_back").hide();

	$("#btn_pet").show();
	$("#btn_feed").show();
	$("#btn_punch").show();
	$("#btn_forcepoop").show();

	$("#btn_inventory").show();
	$("#btn_shop").show();
	$("#btn_minigames").show();

	gamestate = init;
});

$("#btn_back").click(function()
{
	$("#btn_login").hide();
	$("#btn_continue").hide();
	$("#btn_back").hide();

	$("#btn_shop_meat").hide();
	$("#btn_shop_kriers").hide();

	$("#btn_minigame_poopmania").hide();
	$("#btn_minigame_poopway").hide();

	$("#btn_pet").show();
	$("#btn_feed").show();
	$("#btn_punch").show();
	$("#btn_forcepoop").show();

	$("#btn_inventory").show();
	$("#btn_shop").show();
	$("#btn_minigames").show();

	gamestate = petmain;
});
