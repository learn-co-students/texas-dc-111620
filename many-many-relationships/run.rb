require 'pry'

class Doctor 

    attr_reader :name, :specialty

    def initialize(name, specialty)
        @name = name
        @specialty = specialty
    end

    # i want to see all patients THIS doctor has
    def patients 
        # patients = []
        # Appointment.all.each do | appointment |
        #     if appointment.doctor == self 
        #         patients << appointment.patient
        #     end
        # end
        # patients
        all_app = Appointment.all.select do | appointment |
            appointment.doctor == self
        end
        all_patients = all_app.collect do  | appointment |
            appointment.patient.name
        end
        # all_patients.map do  | patient |
        #     patient.name
        # end
    end

    # post lecture exercises: 
    # patients method should only return UNIQUE values


end

class Patient 

    attr_reader :name, :age 
    attr_accessor :issue

    def initialize(name, age, issue)
        @name = name
        @age = age
        @issue = issue
        # @appointments = []
    end

    def appointments
        # i want all appointment associated with THIS object
        Appointment.all.select do | appointment | 
            appointment.patient == self
            # #<Patient:0x00007fee4709dd68 @age=27, @issue="alotta issues", @name="Raul"> == #<Patient:0x00007fee4709dd68 @age=27, @issue="alotta issues", @name="Raul">
        end
    end

end

class Appointment  
    
    attr_reader :patient, :doctor 
    attr_accessor :date

    @@all = []

    def initialize(patient, doctor, date)
        @patient = patient
        @doctor = doctor
        @date = date

        # everytime we create a appointment object 
        # we want to shove that object into our collection of objects in class
        self.class.all << self
        # @@all << self
    end 

   

    # we need a method that will return an array of ALL appointments
    def self.all
        @@all
    end
end

# 2 doctors 
winston = Doctor.new('Winston', 'Dentistry')
garrett = Doctor.new('Garrett', 'ER')

# some patients 
raul = Patient.new('Raul', 27, 'alotta issues') #<Patient lkhjbdslhjfb @name= 'Raul'>
akram = Patient.new('Akram', 23, 'getting tested,  COVID')
avelon = Patient.new('Avelon', 100, 'going blind')
brian = Patient.new('Brian', 21, 'suffering from memes')
#<Patient lkhjbdslhjfb @name= 'Raul'> != 'raul' 
app = Appointment.new(raul, winston, 'November 19, 2020')
app1 = Appointment.new(raul, winston, 'November 20, 2020')
app2 = Appointment.new(raul, garrett, 'November 22, 2020')
app3 = Appointment.new(akram, garrett, 'November 19, 2020')
app4 = Appointment.new(avelon, garrett, 'November 20, 2020')
app5 = Appointment.new(brian, garrett, 'November 22, 2020')
app6 = Appointment.new(brian, winston, 'November 22, 2020')
app7 = Appointment.new(akram, garrett, 'November 23, 2020')
app8 = Appointment.new(avelon, winston, 'November 25, 2020')




# I want a method that return the doctor that has the most patients 


# I want a method that return the patient with the most doctors 


# what kind of method would this be? 

# where does that method go? 

#  what logic should we perform? 
# what should be returned?



binding.pry
0
