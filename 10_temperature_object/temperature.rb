class Temperature

  def initialize( options = {} )
    if options.include?(:f)
      @fahrenheit = options[:f]
    elsif options.include?(:c)
      @celsius = options[:c]
    end
  end

  def in_fahrenheit
    if @fahrenheit
      @fahrenheit
    else
      ( ( @celsius * 1.8 ) + 32 )
    end
  end

  def in_celsius
    if @celsius
      @celsius
    else
      ( ( @fahrenheit - 32 ) / 1.8 ).ceil
    end
  end

  def self.from_celsius( temp_value )
    self.new( :c => temp_value )
  end

  def self.from_fahrenheit( temp_value )
    self.new( :f => temp_value )
  end

end

class Celsius < Temperature

  def initialize( temp_value )
    super( c: temp_value)
  end

end

class Fahrenheit < Temperature

  def initialize( temp_value )
    super( f: temp_value )
  end

end