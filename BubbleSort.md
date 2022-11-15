[1, 3, 7, 4, 2] => [1, 3, 4, 2,| 7] => Largest item always ends up at last position on first loop.

Therefore, don't go to last position on subsequent iterations.

[1, 3, 4, 2,| 7] => [1, 3, 2, |4, 7] => [1, 2,| 3, 4, 7]

An array of one element is always sorted.
