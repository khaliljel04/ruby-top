def substrings(string, dictionary)
  dictionary.reduce(Hash.new) do |hash, substring|
    hash[substring] = string.downcase.scan(substring.downcase).count if string.downcase.scan(substring.downcase).count != 0
    hash
  end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts(substrings("Howdy partner, sit down! How's it going?", dictionary))