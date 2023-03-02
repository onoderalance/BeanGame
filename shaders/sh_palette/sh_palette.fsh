//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D palette;
uniform float palette_index;
uniform float pw;
uniform float ph;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    float _x = floor(color.g * 3.1);
	vec2 index = vec2((_x + palette_index * 4.0) * pw, 0.0);
    gl_FragColor = texture2D(palette, index) * color.a;
}