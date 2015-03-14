class Timer

  attr_accessor :seconds

  def seconds( number = 0 )
    @seconds = number
  end

  def time_string
    hours = "00"
    minutes = "00"

    seconds = @seconds.to_s

    if seconds.to_i > 60
      hours = ( seconds.to_i / 60 / 60 ).to_s
      minutes = ( ( seconds.to_i / 60 ) % 10 ).to_s
      seconds = ( seconds.to_i % 60 ).to_s
    end

    if hours.length == 1 && hours[0] != "0"
      hours = "0" + hours
    elsif hours.length == 1 && hours[0] == "0"
      hours = hours + "0"
    end

    if minutes.length == 1 && minutes[0] != "0"
      minutes = "0" + minutes
    end

    if seconds.length == 1 && seconds[0] != "0"
      seconds = "0" + seconds
    elsif seconds.length == 1 && seconds[0] == "0"
      seconds = seconds + "0"
    end

    "#{hours}:#{minutes}:#{seconds}"
  end

end