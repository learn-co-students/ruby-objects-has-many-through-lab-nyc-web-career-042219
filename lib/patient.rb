class Patient

    @@all = [ ]

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        @@all <<  self
    end

     def new_appointment(doctor, date)
         Appointment.new(doctor, self, date)
     end

     def doctors
         Appointment.all.map { |appointment| appointment.doctor }
     end

     def appointments
         Appointment.all.select { |appointment| appointment.patient == self }
     end
 end
