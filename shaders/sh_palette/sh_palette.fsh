//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float range;
uniform vec4 colorMatch;
uniform vec4 colorReplace;

void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float _newRange = range/255.0;
	
	if(abs(pixelColor.r - colorMatch.r) <= _newRange){
		if(abs(pixelColor.g - colorMatch.g) <= _newRange){
			 if(abs(pixelColor.b - colorMatch.b) <= _newRange){
				 pixelColor.rgb = colorReplace.rgb;
			 }
		} 
	}
	
    gl_FragColor = pixelColor;
}
