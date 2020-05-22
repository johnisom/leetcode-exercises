# Needle in Haystack #

Given a haystack (a string) and a needle (a string), return the first index of
which haystack has a substring that is equal to the needle. If the needle is
nowhere to be found, return -1.

## Examples ##

Haystack:     “abcdefghijklmnop”
Needle:       “fghi”
Return value: 5

Haystack:     “abc”
Needle:       “def”
Return value: -1

Haystack:     “aabbaacc”
Needle:       “aa”
Return value: 0

Haystack:     “”
Needle:       “abc”
Return value: -1

## Data Structure ##

Input:
- Needle: String
- Haystack: String

Return value:
- Index: Integer

Intermediate values:
- Haystack index: Integer
- Needle index: Integer

## Algorithm ##

Before: empty needle guard clause

1. Initialize needle and haystack indices to 0
2. Iterate through the haystack
   - If needle[0] == haystack[haystack_index]
     - Iterate through the needle
       - Break if needle[needle_index] != haystack[haystack_index + needle_index]
3. Return -1

### Alternate algorithm ###

Before: empty needle guard clause

1. Iterate for each index of the haystack
   - If haystack substring == needle return index
2. Return -1
