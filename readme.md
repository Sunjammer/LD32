### Track the commit history of this document for a “dev blog”

# LD32 - “Unconventional Weapon”

I know I want to use my renoise sync lib somehow.
I also know I want to use Haxe and Luxe vs WebGL.
As a masochistic experiment, let’s do all our dev on a mac using Atom.

Maybe this is my social anxiety / agoraphobia game? The feeling of being in a crowd for an introvert sure feels weaponizeable to me.

How am I going to communicate the siege mentality of agoraphobia in a way that will /play well/ is the question… I’m not sure it’s worth doing if the game is crap just to make a point.

Then again I’ve a day and a half… Being crap or not may not be an option..

# LD32 - “Hiding in plain sight”

Whenever I try to communicate my brand of social anxiety to people (I do realise experiences differ enough to make labelling one person’s trauma in the language of another’s is insultingly futile) the basic feeling is full-on fight-or-flight, with an emphasis on flight, because my “conscious” mind knows the situation isn’t dangerous. It’s like having a second person jump the controls: I’ve found myself walking down a street, spot a crowd coming in the opposite direction, and practically *feel* myself being turned as close as I can be to the opposite direction. It’s a humiliating feeling, because again, you *know* it’s ridiculous yet you just can’t help yourself. The compulsion to *leave* is strong enough that the amount of willpower needed to talk yourself out of the decision is insurmountable. If there’s no escape, I go cold. It’s like throwing up a shield against each and every person around you whose names you do not know. There was a time I couldn’t be inside of a McDonald’s without entering that state, and I’d ask my friends to order my food for me because I was literally not capable of doing it. Again, I realise how absurd this must sound to someone who hasn’t experienced it. 

Most people feel some variation of this trepidation but I can’t stress enough how *extreme* it feels. It feels like if you make a single mistake that mistake will sit with you for life (if you do make such a mistake, it tends to sit with you for months. Not the same but shitty nonetheless).

This feeling of repulsion from groups, or where being singular against the many, might be exploitable as a game mechanic. Clustering entities can represent larger “blobs” of repulsive force, and flocking behaviours can organically create and ambulate these clusters. I need some way to stress the singularity of the player versus the plurality of The Others.

# LD32 - “Overcome”

I’m not proud of it but chemicals are excellent ways to overcome this anxiety. The secret, I think, is that people with my kind of anxiety harbour a slowly percolating narcissism. You kind of can’t avoid it: If you spend so much time considering *yourself* versus *the others* you become obsessed with what you, alone, are. In dark moments, when you are, say, waiting for a friend to arrive, or some other situation of temporary involuntary solitude, a sadly simple way to wring away the feelings of inadequacy and insecurity is to grit your teeth and **hate** the world around you. Maybe hate is a strong word but even as you’re doing it you know you are actively trying to do it: As long as you can look down on others you don’t feel yourself being looked  down upon, and then you are /safe/.

But the mental gymnastics involved in becoming such a self-centred prick are tough. They really are. I bet there’s a world of introverts out there coming off as vividly aloof simply because they are trying so so hard not to run away, and in doing so become someone actively worthy of scorn. And you *know* it as you’re doing it, too, that’s the kicker. You feel yourself being the last thing you want to be but there’s two solenoids in your head just smashing you between the extremes of wanting to be a loved individual and wanting to make sure nobody sees you as the loser you feel like.

Alcohol helps. Weed, too. Stronger stuff like prescribed medication sure does as well. Obviously because it’s mentally retarding business. By softening your perceptions of the world and softening your response mechanisms, the basic fight or flight does not kick in as hard, your “fuck those guys” instinct slows from a boil to a gentle simmer: The weird non-descript *danger* other people represent becomes practically nonexistent once you’ve crossed a certain threshold of influence. You just are; The “fuck you” shows up at appropriate moments. Genuine pricks become your enemies rather than the general populace.

Is this something I could exploit? The idea that some powerups can reduce your susceptibility to the bullshit? That maybe you can “x-ray” through the blobby crowd of terror and pick out individual entities that cause genuine fright? Seems weirdly preachy about medication though; I went into-and-out-of beta blockers and SSRIs and I left it because it really wasn’t a positive experience overall. If medication gives you a power it needs to give you a disability as well…

# LD32 - “It’s like PacMan only with randomness, chemicals and self-loathing”

I think in the time I’ve available I need to combine interests. I know I want streets and junctions and the feeling of trying to get from point A to point B without bungling into a crowd and coming out of it feeling like garbage. I know I want it to be goal oriented: I’ve no reason to leave the house unless I’ve a reason to leave the house, after all.

I think it might be cool in this case to lift liberally from PacMan in some respects: I’m not talking about moving around a maze collecting junk while hiding from ghosts, but rather starting at a point in a “city” of streets an being given a navigation problem with optional stops along the way to make the navigation “simpler” somehow. 

It’s important to convey, I think, the feeling that “the others” aren’t actually malevolent. The danger isn’t what they do, it’s how they reflect on you. Moving into a crowd is “painful” not because the crowd wants to inflict pain on you but because you “find crowds painful”. If anything the congregation of crowds should be explained in a way that would make you want to take part. 

What’s the lose condition? The win condition is simply to have “survived it” without humiliation. Maybe it’s score attack then: Make it through the maze from A to B. You start at 0 points. Every negative encounter subtracts. You want the least shitty score. There’s no lose condition. There’s just feeling like a loser.

I’m thinking about how the crowd mechanic might work. I know I want to use flocking and steering behaviours as a basic behaviour set. The idea is that people attach to one another, rest by attaching to the world, then reattach to others, steering away from walls unless wanting to rest. I’m thinking I could create two clockwise or ccw vector maps underlying the world, one in a vortex “inwards” and the other in a vortex “outwards” and have distances from the centre trigger switches between which maps an entity belong to. Each junction point on the map would hold a “junction” area where entities could look to the vector map for influence as to which direction to take. When close to the centre vector influence would be “outwards” and vice versa.

The trick is to give “enough” direction yet not enough to create actual uniformity. 

First steps first, create a map. I’ll use hand-crafted arrays for starters.