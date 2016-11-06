#version 120

uniform sampler2D displacementMap;

varying vec4 position;
varying vec2 texCoordVarying;

void main(){
    texCoordVarying = gl_MultiTexCoord0.xy;
    
    vec4 position = gl_Vertex;
    position.z += texture2D(displacementMap,texCoordVarying).r * 100.0;
    
    gl_Position = gl_ModelViewProjectionMatrix * position;
}
