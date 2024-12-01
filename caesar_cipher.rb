def caesar_cipher(sentence , offset_key)
  alphabet = {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, 
  "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, "k"=>11,
   "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, 
   "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, 
   "y"=>25, "z"=>26}
  sentence = sentence.downcase.split("")
  sentence.each_with_index do |value,index|
    value = alphabet.fetch(value , value) # the second value is the fallback
    if value.kind_of?(Integer) == true then 
      value = value.to_i + offset_key
    else
      next # skip 
    end

    if value > 26 and value.kind_of?(Integer)
      value = value - 26
      sentence[index] = value 
    elsif value < 26 and value.kind_of?(Integer)
      sentence[index] = value 
    else 
      next
    end
  end
  sentence.each_with_index do |value,index|
    if alphabet.has_value?(value) then
      value = alphabet.key(value)
      sentence[index] = value
    else
      next
    end
  end
  sentence = sentence.join
  p sentence
end

caesar_cipher("What a string!", 5)
# should be : "Bmfy f xywnsl!"

