#version 330 core

layout (location = 0) in vec3 a_position;
layout (location = 1) in vec3 a_normal;
layout (location = 2) in vec2 a_uv;
layout (location = 3) in vec2 a_instance_position;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    vec3 position = a_position + vec3(a_instance_position, 0.0);

    gl_Position = projection * view * model * vec4(position, 1.0);
}
