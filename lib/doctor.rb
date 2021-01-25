
class Doctor

attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
  
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map do |appt|
            appt.patient
        end.uniq
    end

    def self.all
        @@all
    end

end