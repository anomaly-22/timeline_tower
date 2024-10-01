shader_type canvas_item;

//TEST SUBJECT TEST SUBJECT TEST SUBJECT TEST SUBJECT TEST SUBJECT TEST SUBJECT TEST SUBJECT 
uniform sampler2D screen_texture : hint_screen_texture, filter_nearest;
uniform vec4 black = vec4(0.0, 0.0, 0.0, 1.0);
uniform vec4 white = vec4(1.0, 1.0, 1.0, 1.0);

 
/*
uniform float past_active = 1.0;
uniform float future_active = 0.0;
uniform vec4 lightcolor_past = vec4(0.84,0.7,0.6, 1.0);
uniform vec4 darkcolor_past = vec4(0.33,0.12,0.0, 1.0);
uniform vec4 lightcolor_future = vec4(0.87,0.74,0.8, 1.0);
uniform vec4 darkcolor_future = vec4(0.19,0.176,0.28, 1.0);
*/

uniform vec4 lightcolor;
uniform vec4 darkcolor;
//int light color = lightcolor_past*past_active + lightcolor_future*future_active;



void fragment() {
	vec4 current_pixel = texture(screen_texture, SCREEN_UV);
	if (current_pixel == black){
		COLOR = vec4(darkcolor);
	}
	else if (current_pixel == white){
		COLOR = vec4(lightcolor);
	}
	else {
		COLOR = vec4(1.0,1.0,1.0,0);
	}
	//COLOR = vec4(pixel.r,pixel.b,1.0, 1.0);
	//red,blue,green,transparency
}

