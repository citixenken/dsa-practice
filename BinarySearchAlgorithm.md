1. Is it ordered?
2. If the input halves at each step, its likely O(LogN) or O(NLogN)
   => Looking at a value and dividing it in half.
   pseudocode:
   search(array, highpoint, lowpoint, needle)

midpoint = Floor[lowpoint + (highpoint + lowpoint)/2]
value = array[midpoint]

do {
if value === needle return true
else if value > midpoint
lowpoint = midpoint + 1
else highpoint = midpoint
} while (lowpoint < highpoint) return false

NOTE: [lowpoint(inclusive) and highpoint(exclusive)) => [lowpoint, highpoint)

## implementation

export default function bs_list(haystack: number[], needle: number): boolean {
let lo = 0;
let hi = haystack.length;

    do {
        let midpoint = Math.floor(lo + (hi - lo) / 2);
        let value = haystack[midpoint];

        if (value === needle) {
            return true;
        } else if (value > needle) {
            hi = midpoint;
        } else {
            lo = midpoint + 1;
        }
    } while (lo < hi);
    return false;

}
