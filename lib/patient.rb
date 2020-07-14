require_relative ('./appointment')
require_relative ('./doctor')

class Patient

  attr_reader :name

@@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (doctor, date)
    Appointment.new(self, date, doctor)

  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == itself
    end
  end

  def doctors
    self.appointments.map do |appt|
      appt.doctor
    end
  end

end
