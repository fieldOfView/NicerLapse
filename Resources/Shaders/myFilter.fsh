
precision mediump float;

varying mediump vec2 coordinate;
uniform sampler2D videoframe;
uniform float multiplier;

void main()
{
	vec4 color = texture2D(videoframe, coordinate);
	gl_FragColor.rgba = vec4(color.rgb * multiplier, color.a);
}
