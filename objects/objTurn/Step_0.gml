/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_released(ord("D"))|| keyboard_check_released(ord("A")) ||keyboard_check_released(ord("S")) || keyboard_check_released(ord("W")) || keyboard_check_released(vk_space))
global.turn = 1;
else
global.turn = 0;
