require('pry')

class String
  define_method (:scrabble) do
    score = Hash.new()
    score.store(1,["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"])
    score.store(2,["D","G"])
    score.store(3,["B", "C", "M", "P"])
    score.store(4,["F", "H", "V", "W", "Y"])
    score.store(5,["K"])
    score.store(8,["J", "X"])
    score.store(10,["Q", "Z"])
    final_score =0
    keys = score.keys()
    letters = self.upcase().split("")

    letters.each  do |letter|
      keys.each do |key|
        if score.fetch(key).include?(letter)
          final_score = final_score.+(key)
        end
      end
    end
    final_score
  end
end
