class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(doctor, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appts = self.appointments
    appts.map {|appt| appt.doctor}
  end
end
