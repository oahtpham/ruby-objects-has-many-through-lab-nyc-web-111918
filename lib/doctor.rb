class Doctor

  attr_reader :name

  @@all_doctors = []

  def initialize(name)
    @name = name
    @@all_doctors << self
  end

  def self.all
    @@all_doctors
  end

  def new_appointment(patient, date)
    apointment = Appointment.new(patient, self, date)
  end

  def appointments
    doc_appointments = Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

end
