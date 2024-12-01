# ruby_ceasar

1. First, understand what a Caesar cipher does:
- Each letter is shifted right by a certain number
- 'A' shifted by 3 becomes 'D'
- 'Z' shifted by 1 becomes 'A' (wrapping)
- Spaces and punctuation stay the same
- Case (upper/lower) stays the same

2. Useful Ruby methods you might need:
- `ord`: converts a character to its ASCII number
- `chr`: converts an ASCII number back to a character
- `each_char`: iterate through each character in a string
- `uppercase?` or `lowercase?`: check letter case

3. Steps to implement:
1) Create a method that takes a string and shift number
2) Create an empty result string
3) Iterate through each character
4) For each character:
   - Check if it's a letter
   - Keep track of whether it was uppercase
   - Convert to number (ASCII)
   - Add the shift
   - Handle wrapping (when you go past 'Z' or 'z')
   - Convert back to letter
   - Maintain original case
   - Add to result string

4. ASCII values to remember:
- 'A' to 'Z' = 65 to 90
- 'a' to 'z' = 97 to 122
