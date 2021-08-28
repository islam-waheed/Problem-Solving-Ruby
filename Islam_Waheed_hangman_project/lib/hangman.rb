class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word
      DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word()
    @guess_word = Array.new(@secret_word.length,"_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
      @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
      if @attempted_chars.include?(char)
            return true  
        else
            return false
      end
  end

  def get_matching_indices(char)
      indices = []
      @secret_word.each_char.with_index do |ele,idx| 
          if ele == char
              indices << idx
          end
      end
      indices
  end

  def fill_indices(char,indices)
      indices.each do |ele|
        @guess_word[ele] = char
      end 
  end

  def try_guess(char)
      if already_attempted?(char) == true
          print "that has already been attempted"
          return false
      end
      @attempted_chars << char
      if !@secret_word.include?(char) 
        @remaining_incorrect_guesses -= 1
      end  
      matches = get_matching_indices(char)
      fill_indices(char,matches)
      return true
  end

  def ask_user_for_guess
      print "Enter a char"
      guess_char = gets.chomp
      return try_guess(guess_char)
  end

  def win?
      word = @guess_word.join("")
      if word == @secret_word
        print "WIN"  
        return true
      end
      false
  end

  def lose?
      if @remaining_incorrect_guesses == 0
        print "LOSE"
        true
      else 
        false
      end
  end

  def game_over?
      if !win?() && !lose?()
        return false
      end
      win?()
      lose?()
      print @secret_word
      true
  end

end