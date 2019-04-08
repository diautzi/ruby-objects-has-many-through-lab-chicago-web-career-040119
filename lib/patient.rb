class Patient
attr_reader :name

  @@all = []

  def initialize(name)
  @name=name
  @@all << self
  end


  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    Appointment.all.map do |dr|
      dr.doctor
    end
  end

end
