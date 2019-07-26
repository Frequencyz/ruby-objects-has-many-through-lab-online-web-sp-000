class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
     appointment.patient == self
   end
  end
  
  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor 
   end
 end
  
end