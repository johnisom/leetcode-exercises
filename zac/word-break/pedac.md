# Word Break

## UNDERSTAND THE PROBLEM!
Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, determine if s can be segmented into a space-separated sequence of one or more dictionary words.

Note:

The same word in the dictionary may be reused multiple times in the segmentation.
You may assume the dictionary does not contain duplicate words.

## EXAMPLES
Example 1:

Input: s = "leetcode", wordDict = ["leet", "code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".
Example 2:

Input: s = "applepenapple", wordDict = ["apple", "pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
             Note that you are allowed to reuse a dictionary word.
Example 3:

Input: s = "catsandog", wordDict = ["cats", "dog", "sand", "and", "cat"]
Output: false

## DATA STRUCTURES
Input: non-empty string, non-empty dictionary of words
Output: bool

catsandog
    ^

substring = cats
pointer = 4
currentWord = cats

## ALGORITHMS
1. Base case: return true if input string is one of the dictionary words
2. Iterate through the wordDict
    - Take substring of input from pointer index for length of current word
    - if substring == current word
      - Return true if recurse(input, wordDict, pointer + currentWord.length)

3. Return false

