def substrings(str, dictionary)
  my_hash = {}
  new_arr = dictionary.select { |word| str.include?(word) }
  new_arr.each do |key|
    my_hash[key] = str.scan(key).length
  end
  my_hash
end

# "aadser".scan('a') => ['a', 'a'].length = 2



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }