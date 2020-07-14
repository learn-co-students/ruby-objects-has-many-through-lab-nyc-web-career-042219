class Appointment
  @@all = []

  attr_reader :patient, :doctor, :date

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

end
