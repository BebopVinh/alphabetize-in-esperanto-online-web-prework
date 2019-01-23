require 'pry'

def alphabetize(arr)
  esperanto_alphabet = ("abcĉdefgĝhĥijĵklmnoprsŝtuŭvz").split("")
  new_array = []
  i = 0
  esperanto_alphabet.each.with_index do |letter|
    arr.each do |phrase|
      if phrase.slice(0) == letter
        new_array << arr.pop(phrase)
      end
    end
  end

  new_array = new_array.sort_by { |a, b| a <=> b}
end
