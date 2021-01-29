class Appointment
    def initialize(location, purpose, hour, min)

        #raise
    
        @location=location
        @purpose=purpose
        @hour=hour
        @min=min
    
    end   

end   

class MonthlyAppointment < Appointment
    def initialize(locatio, purpose, hour, min, day)
        super locatio, purpose, hour, min
        @day==day
    end
    def occurs_on?(day)
        @day == day
    end
    def to_s
        "Reunión mensual en #{@location} sobre #{@purpose} el dia #{@day} a la(s) #{@hour}:#{@min}" 
    end       
end  

class DailyAppointment < Appointment
    def initialize(location, purpose, hour, min)
        super location, purpose, hour, min
        @hour = hour
        @min = min
    end
    def occurs_on?(hour, min)   
        @hour == hour && @min==min 
    end
    
    def to_s
         "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}" 
    end 
end 

class OneTimeAppointment < Appointment

    def initialize(location, purpose, hour, min, day, month, year)
        super location, purpose, hour, min
        
        @day=day 
        @month=month
        @year=year
    end
    def occurs_on?(day, month, year)
        @day == day && @month == month && @year == year
    end
    def to_s
         "Reunion unica en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}" 
    end       

end 

 puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)

 puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)

 puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
