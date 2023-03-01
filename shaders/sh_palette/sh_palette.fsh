//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 color1;
uniform vec4 color2;
uniform vec4 color3;
uniform vec4 color4;

void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

	if(pixelColor.r == 0.0/255.0) //black
	{
		pixelColor.rgb = color1.rgb;
	}
	else if(pixelColor.r == 84.0/255.0) //grey1
	{
		pixelColor.rgb = color2.rgb;
	}
	else if(pixelColor.r == 168.0/255.0) //grey2
	{
		pixelColor.rgb = color3.rgb;
	}
	else if(pixelColor.r == 254.0/255.0) //grey3
	{
		pixelColor.rgb = color4.rgb;
	}
	
    gl_FragColor = pixelColor;
}
