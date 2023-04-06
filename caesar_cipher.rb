def caesar_cipher(msg, factor)
  msg.chars.reduce('') do |crypted, char|
    if char.ord.between?('a'.ord, 'z'.ord) || char.ord.between?('A'.ord, 'Z'.ord)
      base = char.ord >= 'a'.ord ? 'a'.ord : 'A'.ord
      crypted << (base + ((char.ord - base + factor) % 26)).chr
    else
      crypted << char
    end
  end
end

puts(caesar_cipher('What a string!', 5))