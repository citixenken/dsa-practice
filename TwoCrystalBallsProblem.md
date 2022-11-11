Given two crystal balls that will break if dropped from high enough distance, determine the exact spot in which it will break in the most optimized way...

[0,0,0,0,0,1,1,1,1,.....]

Jump sqrt(N) till you hit a true value ie crystal ball break.
Walk backwards, sqrt(N) times to last known good point, ie crystal ball intact.
Use first crystal ball to see where it will break.

O(sqrt(N))
=> Best optimization for this use case as it avoids use of Linear and BSTs
