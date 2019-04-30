class Doctor

    @@all= []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def patients
        Appointment.all.map { |appointment| appointment.patient }
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end


end
