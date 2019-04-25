class Doctor
  attr_reader :name
  attr_accessor :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appt = Appointment.new(self, patient, date)
    self.appointments << appt
    self.patients << patient
    appt
  end
end
