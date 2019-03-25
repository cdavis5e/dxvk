#version 450
#extension GL_ARB_shader_viewport_layer_array : require

const vec4 vertices[] = {
  vec4(-1.0f, 3.0f, 0.0f, 1.0f),
  vec4(-1.0f, -1.0f, 0.0f, 1.0f),
  vec4(3.0f, -1.0f, 0.0f, 1.0f)
};

void main() {
  gl_Position = vertices[gl_VertexIndex];
  gl_Layer    = gl_InstanceIndex;
}
