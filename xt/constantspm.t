use strict;
use warnings;
use SDL::Events;
use Test::More; # use_ok + constants

BEGIN { use_ok('SDL::Constants') }

# 'use' should have imported all constants

is( SDL_GL_ACCUM_ALPHA_SIZE, 11, 'SDL_GL_ACCUM_ALPHA_SIZE should be imported' );
is( SDL_GL_ACCUM_ALPHA_SIZE(), 11,
	'SDL_GL_ACCUM_ALPHA_SIZE() should also be available'
);
is( SDL_GL_ACCUM_BLUE_SIZE, 10, 'SDL_GL_ACCUM_BLUE_SIZE should be imported' );
is( SDL_GL_ACCUM_BLUE_SIZE(), 10,
	'SDL_GL_ACCUM_BLUE_SIZE() should also be available'
);
is( SDL_GL_ACCUM_GREEN_SIZE, 9, 'SDL_GL_ACCUM_GREEN_SIZE should be imported' );
is( SDL_GL_ACCUM_GREEN_SIZE(), 9,
	'SDL_GL_ACCUM_GREEN_SIZE() should also be available'
);
is( SDL_GL_ACCUM_RED_SIZE, 8, 'SDL_GL_ACCUM_RED_SIZE should be imported' );
is( SDL_GL_ACCUM_RED_SIZE(), 8,
	'SDL_GL_ACCUM_RED_SIZE() should also be available'
);
is( SDL_GL_ALPHA_SIZE,    3, 'SDL_GL_ALPHA_SIZE should be imported' );
is( SDL_GL_ALPHA_SIZE(),  3, 'SDL_GL_ALPHA_SIZE() should also be available' );
is( SDL_GL_BLUE_SIZE,     2, 'SDL_GL_BLUE_SIZE should be imported' );
is( SDL_GL_BLUE_SIZE(),   2, 'SDL_GL_BLUE_SIZE() should also be available' );
is( SDL_GL_BUFFER_SIZE,   4, 'SDL_GL_BUFFER_SIZE should be imported' );
is( SDL_GL_BUFFER_SIZE(), 4, 'SDL_GL_BUFFER_SIZE() should also be available' );
is( SDL_GL_DEPTH_SIZE,    6, 'SDL_GL_DEPTH_SIZE should be imported' );
is( SDL_GL_DEPTH_SIZE(),  6, 'SDL_GL_DEPTH_SIZE() should also be available' );
is( SDL_GL_DOUBLEBUFFER,  5, 'SDL_GL_DOUBLEBUFFER should be imported' );
is( SDL_GL_DOUBLEBUFFER(), 5,
	'SDL_GL_DOUBLEBUFFER() should also be available'
);
is( SDL_GL_GREEN_SIZE,   1, 'SDL_GL_GREEN_SIZE should be imported' );
is( SDL_GL_GREEN_SIZE(), 1, 'SDL_GL_GREEN_SIZE() should also be available' );
is( SDL_GL_RED_SIZE,     0, 'SDL_GL_RED_SIZE should be imported' );
is( SDL_GL_RED_SIZE(),   0, 'SDL_GL_RED_SIZE() should also be available' );
is( SDL_GL_STENCIL_SIZE, 7, 'SDL_GL_STENCIL_SIZE should be imported' );
is( SDL_GL_STENCIL_SIZE(), 7,
	'SDL_GL_STENCIL_SIZE() should also be available'
);

is( SMPEG_ERROR,     -1, 'SMPEG_ERROR should be imported' );
is( SMPEG_ERROR(),   -1, 'SMPEG_ERROR() should also be available' );
is( SMPEG_PLAYING,   1,  'SMPEG_PLAYING should be imported' );
is( SMPEG_PLAYING(), 1,  'SMPEG_PLAYING() should also be available' );
is( SMPEG_STOPPED,   0,  'SMPEG_STOPPED should be imported' );
is( SMPEG_STOPPED(), 0,  'SMPEG_STOPPED() should also be available' );

is( SDL_SVG_FLAG_DIRECT, 0, 'SDL_SVG_FLAG_DIRECT should be imported' );
is( SDL_SVG_FLAG_DIRECT(), 0,
	'SDL_SVG_FLAG_DIRECT() should also be available'
);
is( SDL_SVG_FLAG_COMPOSITE, 1, 'SDL_SVG_FLAG_COMPOSITE should be imported' );
is( SDL_SVG_FLAG_COMPOSITE(), 1,
	'SDL_SVG_FLAG_COMPOSITE() should also be available'
);

done_testing();
sleep(2);
