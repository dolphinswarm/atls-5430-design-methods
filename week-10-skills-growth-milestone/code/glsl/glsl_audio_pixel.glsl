uniform float uTime;      // seconds
uniform float uKick;      // kick 0/1       -> horizontal bands jump + tear color
uniform float uHigh;      // high band 0..1 -> thinner bands + light RGB split
uniform float uSnare;     // snare 0/1      -> vertical column tears
uniform float uSlit;      // glitch strength (constant)
uniform float uFeedback;  // trail length 0..0.98 (constant)

out vec4 fragColor;

float Hash(float n) { return fract(sin(n * 127.1) * 43758.5453); }

void main()
{
	float kick  = clamp(uKick,  0.0, 1.0);
	float high  = clamp(uHigh,  0.0, 1.0);
	float snare = clamp(uSnare, 0.0, 1.0);
	vec2 uv = vUV.st;

	// Kick: about half the horizontal bands slide sideways
	float band = floor(uv.y * mix(10.0, 60.0, high));
	// mod() keeps the seed small: sin() in Hash breaks down on huge numbers
	float seed = band + mod(floor(uTime * 8.0), 64.0) * 17.0;
	float moving = step(0.45, Hash(seed + 3.1)) * kick;
	uv.x += (Hash(seed) - 0.5) * 0.24 * moving * uSlit;

	// Snare: a few thin vertical columns tear up or down
	float column = floor(uv.x * 24.0);
	float cSeed = column + mod(floor(uTime * 12.0), 64.0) * 31.0;
	float tearing = step(0.7, Hash(cSeed + 9.7)) * snare;
	uv.y += (Hash(cSeed) - 0.5) * 0.12 * tearing * uSlit;

	// Color split: light everywhere on the highs, strong inside glitched bands
	float glitched = max(moving, tearing);
	vec2 split = vec2(0.012 * high + 0.03 * glitched, 0.0);
	vec3 col;
	col.r = texture(sTD2DInputs[0], uv + split).r;
	col.g = texture(sTD2DInputs[0], uv).g;
	col.b = texture(sTD2DInputs[0], uv - split).b;

	// Echo trails: last frame, in place.
	// Uses the untouched vUV so the glitch doesn't pile up frame after frame.
	vec3 prev = texture(sTD2DInputs[1], vUV.st).rgb;
	float fb = clamp(uFeedback, 0.0, 0.98) * (1.0 - 0.6 * kick);
	col = max(col, prev * fb);

	fragColor = TDOutputSwizzle(vec4(col, 1.0));
}
