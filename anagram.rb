def anagram?(first_word, second_word)
  return false if first_word.blank? || second_word.blank?

  begin
    if (first_word.is_a? Numeric) || (second_word.is_a? Numeric)
      raise "#{first_word} or #{second_word} is not a string"
    end

    return false if first_word.size != second_word.size

    sort(first_word) == sort(second_word)
  rescue StardardError => e
    p e
    false
  end
end

def sort(word)
  word.downcase.chars.sort.join
end
