# requirements

In order to make this program possible , I need to know these before making a flowchart

- Make a method that takes two arguments , the first is a target string and the other is the key for how much offset the cipher should be
- Know how to convert string into numbers in Ruby
- Wrap from 'z' to 'a' if 'z' is reached
- Keep the same case ( small letters )

Basically I should have a program like this one :

```ruby
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

---

## How would I do it ?

First we got the alphabet array :

```ruby
alphabet = {"A"=>1, "B"=>2, "C"=>3, "D"=>4, "E"=>5, "F"=>6, "G"=>7, "H"=>8, "I"=>9, "J"=>10, "K"=>11, "L"=>12, "M"=>13, "N"=>14, "O"=>15, "P"=>16, "Q"=>17, "R"=>18, "S"=>19, "T"=>20, "U"=>21, "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26}

```

## Work flow

convert the given "sentence" into and array of letters .
check each value of each index of the "sentence" array with the hash equivalent, e.g the first index of the "sentence" array was "k" , we take the "k" and search key/value pair in the alphabet hash to get and assign the value of key to the index of the letter "k" so that it will be changed to "11" instead of "k"

if the number was more than 26 , then it will 'the_number' - 26 = positive_number then assign it back

do this to all of the letters in the "sentence "array

make a loop that adds the value of "key" argument to each number in the new converted "sentence" array to make ot encrypted

then check the values in the alphabet hash to assign the keys "the letters" as values to our "sentence" array
