class_name GameManager
extends Node
var coins:int = 0
 
@onready var coin_count: Label = %CoinCount

func updatecoincount()-> void :
	coin_count.text = str(coins)
