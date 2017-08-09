class PigLatinizer

  @@vowels = ['a','e','i','o','u']

  def initialize
  end

  def piglatinize(word)
    letters = word.chars
    if @@vowels.include?(letters.first.downcase)
      piglatin = letters.join + 'way'
    elsif @@vowels.include?(letters.first.downcase) == false
      saved = ''
      until @@vowels.include?(letters.first.downcase)
        saved << letters.shift
      end
      piglatin = letters.join + saved + 'ay'
    end
    piglatin
  end

  def to_pig_latin(sentence)
    words = sentence.split
    pig_latin_sentence = words.map do |word|
      piglatinize(word)
    end
    pig_latin_sentece = pig_latin_sentence.join(" ")
  end


end
