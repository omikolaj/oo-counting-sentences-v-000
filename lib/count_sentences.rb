require 'pry'

class String

  def sentence?

    if(self.end_with?("."))
      return true
    else
      return false
    end
  end

  def question?
    if(self.end_with?("?"))
      return true
    else
      return false
    end
  end

  def exclamation?
    if(self.end_with?("!"))
      return true
    else
      return false
    end
  end

  def count_sentences
    #binding.pry
    counter = 0
    self.split(" ").each do |word|
      if(word.end_with?(".") || word.end_with?("?") || word.end_with?("!"))
        counter = counter + 1
      end
    end
    counter
  end
end
