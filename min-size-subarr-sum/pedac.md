…Accidentally deleted…

## Algorithm ##

Steps:
1. Initialize `a=-1`, `r=-1`, `sum=0`, `len=infinity`
2. while `a < nums.length - 1` do
   - if `sum < target` and `r < nums.length - 1` then
     - increment `r`
     - add value that `r` points to
   - or if `sum < target`
     - `break`
   - otherwise
     - update `len` conditionally
       - new `len` would be `r - a`
     - increment `a`
     - subtract value that `a` points to
