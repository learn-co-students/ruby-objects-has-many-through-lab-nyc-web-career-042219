class Appointment

    @@all = []

    attr_reader :doctor, :patient
    attr_accessor :date



    def initialize(doctor, patient, date)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

end
