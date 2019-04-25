class Patient
  attr_reader :name
  attr_accessor :appointments, :doctors

  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(doctor, self, date)
    self.appointments << appt
    self.doctors << doctor
    appt
  end

  def self.all
    @@all
  end
end
