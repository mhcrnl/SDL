#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#ifndef aTHX_
#define aTHX_
#endif

#include <SDL.h>

MODULE = SDL::Event 	PACKAGE = SDL::Event    PREFIX = event_

=for documentation

SDL_Event -- General event structure

 typedef union{
  Uint8 type;
  SDL_ActiveEvent active;
  SDL_KeyboardEvent key;
  SDL_MouseMotionEvent motion;
  SDL_MouseButtonEvent button;
  SDL_JoyAxisEvent jaxis;
  SDL_JoyBallEvent jball;
  SDL_JoyHatEvent jhat;
  SDL_JoyButtonEvent jbutton;
  SDL_ResizeEvent resize;
  SDL_ExposeEvent expose;
  SDL_QuitEvent quit;
  SDL_UserEvent user;
  SDL_SysWMEvent syswm;
 } SDL_Event;


=cut

SDL_Event *
event_new (CLASS)
	char *CLASS
	CODE:
		SDL_Event *empty_event;
		RETVAL = empty_event;
	OUTPUT:
		RETVAL

Uint8
event_type ( event, ... )
	SDL_Event *event
	CODE:
		RETVAL = -1;
		if ( &event != NULL ) 
		RETVAL = event->type;
	OUTPUT:
		RETVAL

SDL_ActiveEvent *
event_active ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::ActiveEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->active);
	OUTPUT:
		RETVAL

SDL_KeyboardEvent *
event_key ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::KeyboardEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->key);
	OUTPUT:
		RETVAL

SDL_MouseMotionEvent *
event_motion ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::MouseMotionEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->motion);
	OUTPUT:
		RETVAL

SDL_MouseButtonEvent *
event_button ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::MouseButtonEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->button);
	OUTPUT:
		RETVAL

SDL_JoyAxisEvent *
event_jaxis ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::JoyAxisEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->jaxis);
	OUTPUT:
		RETVAL

SDL_JoyBallEvent *
event_jball ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::JoyBallEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->jball);
	OUTPUT:
		RETVAL

SDL_JoyHatEvent *
event_jhat ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::JoyHatEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->jhat);
	OUTPUT:
		RETVAL

SDL_JoyButtonEvent *
event_jbutton ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::JoyButtonEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->jbutton);
	OUTPUT:
		RETVAL

SDL_ResizeEvent *
event_resize ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::ResizeEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->resize);
	OUTPUT:
		RETVAL

SDL_ExposeEvent *
event_expose ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::ExposeEvent";
	CODE:
		RETVAL = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->expose);
	OUTPUT:
		RETVAL

SDL_QuitEvent *
event_quit ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::QuitEvent";
	CODE:
		RETVALE = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->quit);
	OUTPUT:
		RETVAL

SDL_UserEvent *
event_user ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::UserEvent";
	CODE:
		RETVALE = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->user);
	OUTPUT:
		RETVAL

SDL_SysWMEvent *
event_syswm ( event, ... )
	SDL_Event *event
	PREINIT:
		char *CLASS = "SDL::SysWMEvent";
	CODE:
		RETVALE = NULL;
		if ( &event != NULL ) 
		RETVAL = &(event->syswm);
	OUTPUT:
		RETVAL
