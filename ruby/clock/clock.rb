class Clock
    attr_reader :hour, :minute
    MINUTES_IN_HOUR= 60
    SECONDS_IN_MINUTE=60

    def initialize(hour:0, minute:0)
        @hour = hour
        @minute = minute
        @totalSeconds= (hour * MINUTES_IN_HOUR + minute) * SECONDS_IN_MINUTE
    end

    def to_s
        Time.at(@totalSeconds).utc.strftime("%H:%M") #=> "01:00"   
    end

    def +(newClock)
        Clock.new(
            hour: @hour + newClock.hour,
            minute: @minute + newClock.minute
        )
    end

    def -(newClock)
        Clock.new(
            hour: @hour - newClock.hour,
            minute: @minute - newClock.minute
        )
    end

    def ==(newClock)
        self.to_s == newClock.to_s
    end
end
