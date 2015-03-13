def echo( string )
  return "#{string}"
end

def shout( string )
  return "#{string.upcase}"
end

def repeat( string, times_to_say=2 )
  return ( ( "#{string}" + " " ) * times_to_say ).rstrip
end

def start_of_word( string, right_index )
  return "#{string[0..right_index-1]}"
end

def first_word( string )
  string = string.split(" ")
  return string[0]
end

def titleize( title )
  fixed_title = []
  title = title.split(" ")
  title.each_with_index do |word, index|
    if word.length <= 4 && index != 0 && index != title.length - 1
      fixed_title << word
    else
      word = word.capitalize
      fixed_title << word
    end
  end
  return fixed_title.reject(&:empty?).join(" ")
end