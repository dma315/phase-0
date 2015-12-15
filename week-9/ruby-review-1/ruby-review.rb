


# Cipher Challenge

# I worked on this challenge with Coleby Kent
# I spent 0.75 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Converts string to downcase, then throws each letter into an array in order 
#   decoded_sentence = [] # Gives us an empty that we'll presumably use later
#   # Hash is a conversion of letters that appear to match 1:1 (we can refactor this later)
#   cipher = {"e" => "a",
#             "f" => "b",
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # Iterates through each letter in the array from above
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? Answer:  Because it assumes a non-match until match is found from the logic below. 
#     cipher.each_key do |y| # What is #each_key doing here? Answer:  Grabbing the key value from the lookup hash.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? Answer:  It compares the letter in the array to the key in the hash. X = value in coded message, Y = cipher key from the hash (that is being looped through for some reason)
#         decoded_sentence << cipher[y] # Adds it to the array
#         found_match = true # Sets match to true
#         break  # Why is it breaking here? Ends the loop
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? Answer:  Looking for any combination of symbols that would equate to a space in the cipher. With a really ugly sequence of OR statements
#         decoded_sentence << " " # Sends a space to the decoded message
#         found_match = true # Sets match to true like above
#         break # Breaks
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? Answer:  It's looking for a number
#         decoded_sentence << x # Sends a number to decoded
#         found_match = true # Sets to true
#         break #Breaks again because the loop should be over
#       end
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x # If there's no match, send the original letter
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") # Joins array back to string
#   #What is this method returning? A string of the decoded message. 
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  shift = 4
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  symbols = ["@","#","$","%","^","&","*"]

  input.each do |code|
    if alphabet.include?(code)
      if ((alphabet.index(code) - shift) < 0)
        decoded_sentence << alphabet[26 + (alphabet.index(code) - shift)]
      else
        decoded_sentence << alphabet[(alphabet.index(code) - shift)]
      end
    elsif symbols.include?(code)
      decoded_sentence << " "
    elsif code.is_a? Integer
      decoded_sentence << code
    else
      decoded_sentence << code
    end
  end
  decoded_sentence.join("")
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review in this challenge?
# => Nothing crazy here, could've probably spent some more time here figuring out a more elegant solution, but think the one we have here is pretty solid.

# What is still confusing to you about Ruby?
# => When to use classes an when not to.

# What are you going to study to get more prepared for Phase 1?
# => Spend more time understanding when to use classes.