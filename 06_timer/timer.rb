class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize 
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  def time_string
    update_numbers
    if @seconds < 10
      seconds_timer = "0#{@seconds}"
    else 
      seconds_timer = "#{@seconds}"
    end
    if @minutes < 10
      minutes_timer = "0#{@minutes}"
    else 
      minutes_timer = "#{@minutes}"
    end
    if @hours < 10
      hours_timer = "0#{@hours}"
    else 
      hours_timer = "#{@hours}"
    end

    "#{hours_timer}:#{minutes_timer}:#{seconds_timer}"
  end
  def update_numbers
    while @seconds >= 60
      @minutes += 1
      @seconds -= 60
    end
    while @minutes >= 60
      @hours += 1
      @minutes -= 60
    end
  end
end
