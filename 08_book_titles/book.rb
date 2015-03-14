class Book

  attr_accessor :title

  def title
    fixed_title = @title.split(" ").map { |word| word.capitalize }
    fixed_title.each do |word, index|
      if word == "The" || word == "A" || word == "And" || word == "An" || word == "In" || word == "Of"
        word.downcase!
      elsif word == "i"
        word.upcase!
      end
    end
    fixed_title[0].capitalize!
    fixed_title.join(" ")
  end

end