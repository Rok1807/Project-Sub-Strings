def substrings(word, dictionary)
  new_array = []
  word_to_array = word.downcase.split
  word_to_array.map do |my_word|
    dictionary.map do |dic|
      new_array.push(dic) if my_word.include?(dic) == true
    end
  end
  new_array.each_with_object(Hash.new(0)) do |thesubkey, the_subhash|
    the_subhash[thesubkey] += 1
  end
end
