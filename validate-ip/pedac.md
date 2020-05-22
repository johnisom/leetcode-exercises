# Validate IP Address #

Use PEDAC

## Understanding the Problem ##

I need to write a function that checks whether an input string is valid ipv4
or ipv6 address.
- Return value → String, `"IPv4"` for IPv4, `"IPv6"` for IPv6, `"Neither"` for
  invalid

### Rules for IPV4 ###

- 4 groups of integers separated with 3 dots (periods)
  - Integers are in the range `{0..255}`
- No leading zeros
- No other characters (including whitespace) allowed
  - ‘` 42.1.10.254\n`’ invalid

### Rules for IPV6 ###

- 8 groups of 4 hex digits, separated by colon
  - Hex in the range `{0x0000..0xffff}`
- Leading zeroes optional
- Letter case for `{'a'..'f'}` optional
- Consecutive colons (`::`) are invalid according to this definition

### Things to Note ###

It’s one function that handles both (on the highest-level).

## Sub-Problems ##

### IPv4 ###

We can filter out with an initial regex and then check the values of each
integer later to confirm its within range.

### IPv6 ###

We can use a single regex to confirm.
