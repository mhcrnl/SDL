#!/usr/bin/perl -w
use strict;
use SDL;
use SDL::Event;
#use SDL::Surface;
use SDL::Video;
use Test::More;

plan ( tests => 5);

my @done =qw/
pump_events 
/;


use_ok( 'SDL::Events' ); 
can_ok ('SDL::Events', @done); 

SDL::init(SDL_INIT_VIDEO);                                                                          

SDL::Video::set_video_mode(640,480,32, SDL_SWSURFACE);

is(SDL::Events::pump_events(), undef,  '[pump_events] Returns undef');

=pod

my $events = SDL::Event->new();
my $num_peep_events = SDL::Events::peep_events( $events, 127, SDL_PEEKEVENT, SDL_ALLEVENTS);
is($num_peep_events >= 0, 1,  '[peep_events] Size of event queue is ' . $num_peep_events);

my $event = SDL::Event->new();
my $value = SDL::Events::poll_event($event);
is(($value == 1) || ($value == 0), 1,  '[poll_event] Returns 1 or 0');


my $event2 = SDL::Event->new();
is(SDL::Events::push_event($event2), 0,  '[push_event] Returns 0 on success');
my $event3 = SDL::Event->new();
is(SDL::Events::push_event($event3), 0,  '[push_event] Returns 0 on success');


my $events2 = SDL::Event->new();
my $num_peep_events2 = SDL::Events::peep_events( $events2, 127, SDL_PEEKEVENT, SDL_ALLEVENTS);
is($num_peep_events2 > $num_peep_events, 1,  '[peep_events] Size of event queue is ' . $num_peep_events2."\t". SDL::get_error());



my $events3 = SDL::Event->new();
$num_peep_events = SDL::Events::peep_events( $events3, 1, SDL_ADDEVENT, SDL_ALLEVENTS);
is($num_peep_events, 1,  '[peep_events] Added 1 event to the back of the queue');

my $events4 = SDL::Event->new();
$num_peep_events = SDL::Events::peep_events( $events4, 1, SDL_GETEVENT, SDL_ALLEVENTS);
is($num_peep_events, 1,  '[peep_events] Got 1 event from the front of the queue');



my $event4 = SDL::Event->new();
is(SDL::Events::wait_event($event4), 1,  '[wait_event] Returns 1 on success');
is(SDL::Events::wait_event(), 1,  '[wait_event] Returns 1 on success');

=cut


my @left = qw/
peep_events 
poll_event
push_event
wait_event
seteventfilter 
eventstate 
getkeystate 
getmodstate 
setmodstate 
getkeyname 
enableunicode 
enablekeyrepeat 
getmousestate 
getrelativemousestate 
getappstate 
joystickeventstate 
StartTextInput 
StopTextInput 
SetTextInputRect 
/;

my $why = '[Percentage Completion] '.int( 100 * ($#done +1 ) / ($#done + $#left + 2  ) ) .'% implementation. '.($#done +1 ).'/'.($#done+$#left + 2 ); 

TODO:
{
	local $TODO = $why;
	pass "\nThe following functions:\n".join ",", @left; 
}
	if( $done[0] eq 'none'){ diag '0% done 0/'.$#left } else { diag  $why} 


pass 'Are we still alive? Checking for segfaults';