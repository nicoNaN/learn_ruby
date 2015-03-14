class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add( entry )
    if entry.class == Hash
      @entries = entry
    else
      @entries[entry] = nil
    end
  end

  def keywords
    @entries.keys
  end

  def include?( search_term )
    @entries.keys.include?( search_term )
  end

  def find( search_term )
    entries.each do | word, definition |
      if word[ 0..search_term.length - 1 ] == search_term
        return true
      else
        return false
      end
    end
  end

end