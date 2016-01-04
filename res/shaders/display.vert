#version 330 core

const vec2 data[4] = vec2[](
	vec2(-1.0, 1.0),
	vec2(-1.0,-1.0),
	vec2( 1.0, 1.0),
	vec2( 1.0,-1.0)
);

out vec2 vTexcoords;

void main() {
	vTexcoords = (data[gl_VertexID] + 1.0) / 2.0;
	gl_Position = vec4(data[gl_VertexID], 0.0, 1.0);
}
