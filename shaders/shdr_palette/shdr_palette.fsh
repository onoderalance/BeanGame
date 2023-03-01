//
// Simple passthrough fragment shader
//
//varying vec2 v_vTexcoord;
//varying vec4 v_vColour;

/*
void main()
{
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}*/

/*
// Color Overlay Fragment Shader
void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = vec4(1.0, 0.0, 0.0, texColor.a);
}*/

//TEST 2
/*
uniform sampler2D palette;
uniform float row;

void main() 
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
	//float _index = 0.0;
	
	//if(base_color.r == 15)
	//	_index = 0.0;
	//else if(base_color.r ? 48)
	//	_index = 1.0;
	
    gl_FragColor = vec4(texture2D(palette, vec2(_index, row)).rgb, base_color.a );
}
*/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D palette;
uniform float palette_index;
uniform float pw;
uniform float ph;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    float _x = floor(color.g * 2.0 + 0.5); 
    vec2 index = vec2((_x + palette_index * 3.0)*pw,0.0);
    gl_FragColor = texture2D(palette, index);
}
