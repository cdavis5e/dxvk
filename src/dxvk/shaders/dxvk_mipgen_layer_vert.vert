#version 450
#extension GL_ARB_shader_viewport_layer_array : require

layout(location = 0) out vec3 o_pos;

const vec4 vertices[] = {
  vec4(-1.0f, 3.0f, 0.0f, 1.0f),
  vec4(-1.0f, -1.0f, 0.0f, 1.0f),
  vec4(3.0f, -1.0f, 0.0f, 1.0f)
};

const vec2 positions[] = {
  vec2(0.0f, 2.0f),
  vec2(0.0f, 0.0f),
  vec2(2.0f, 0.0f)
};

void main() {
  gl_Position = vertices[gl_VertexIndex];
  gl_Layer    = gl_InstanceIndex;
  o_pos       = vec3(positions[gl_VertexIndex], float(gl_InstanceIndex));
}
