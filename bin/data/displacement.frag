#version 120

uniform sampler2D tex0;

varying vec2 texCoordVarying;

void main()
{
    vec2 uv = texCoordVarying;
    gl_FragColor = texture2D(tex0,uv);
}
