
class Doctor 

    attr_accessor :name, :appointment

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def new_appointment(name, patient)
        ap = Appointment.new(name, patient, self)
    end

    def appointments
        Appointment.all.select {|ap| ap.doctor == self}
    end 

    def patients
        appointments.map {|ap| ap.patient}
    end 


end 