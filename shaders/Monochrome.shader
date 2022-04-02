shader_type canvas_item;

uniform vec3 rgbMultipliers = vec3(1, 1, 1);

void fragment() {
    COLOR = texture(TEXTURE, UV) * vec4(rgbMultipliers, 1);
    float avg = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
    COLOR.rgb = vec3(avg);
}