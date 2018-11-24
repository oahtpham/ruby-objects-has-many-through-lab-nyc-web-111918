class Patient

  attr_reader :name

  @@all_patients = []

  def initialize(name)
    @name = name
    @@all_patients << self
  end

  def self.all
    @@all_patients
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end

end
