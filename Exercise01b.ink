/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [Leave the cave] -> are_you_sure
* [Pick up the torch] -> torch_pickup

== are_you_sure ==
are you sure?
+ [Yes.] -> boring_ending
+ [No.] -> cave_mouth

== boring_ending ==
You leave the cave. No sense of adventure in you, I guess your missing out!
-> END

== east_tunnel ==
You are in the east tunnel. It is dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. You have a sense there's something watching you in the dark but you can't see anything.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel_lit ==
As you light your torch the fangs of a ferocious and very hungry looking bear gleam in the light. Maybe you shouldn't have come here after all. He eats you.
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
+ [Take the coins] -> curse_ending
* [Go Back] -> cave_mouth
-> END

== curse_ending ==
As you grab the coins you are stricken with a burning sensation that numbs all your senses. Within seconds you can no longer stand. You died.
-> END