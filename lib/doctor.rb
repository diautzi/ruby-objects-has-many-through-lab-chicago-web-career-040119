class Doctor
attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def new_appointment(name, date)
  Appointment.new(self, name, date)
end

def appointments
  Appointment.all.select do |dr|
    dr.doctor == self
  end
end

def patients
  Appointment.all.map do |patient|
    patient.patient
  end
end

end
