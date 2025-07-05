//shader_type spatial;

float gray = color.r * 0.2125 + color.g * 0.7154 + color.b * 0.0721;
color.rgb = vec3(gray);
//void vertex() {
	//// Called for every vertex the material is visible on.
//}
//
//void fragment() {
	//// Called for every pixel the material is visible on.
//}