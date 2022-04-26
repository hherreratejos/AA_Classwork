class Hangman
  
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize 
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
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
      true
    else
      false
    end
  end

  def get_matching_indices(char)
    idx = []
    @secret_word.each_char.with_index do |c, i|
      if c == char
        idx << i
      end
    end
  idx
  end

  def fill_indices(char, arr)
    arr.each do |el|
      @guess_word[el] = char
    end
  end

  def try_guess(char)
    if already_attempted?(char)
      puts "that was already attempted"
      return false
    else
      @attempted_chars << char
    end

    if get_matching_indices(char).length == 0
      @remaining_incorrect_guesses -= 1
    else
      fill_indices(char, get_matching_indices(char))
    end
    true
  end

  def ask_user_for_guess
    puts "Enter a char:"
    char = gets.chomp
    try_guess(char)
  end

  def win?
    if @guess_word == @secret_word.split("")
      puts "WIN"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      true
    else
      false
    end
  end

    def game_over?
      if win? || lose?
        puts @secret_word
        true
      else
        false
      end
    end
end
