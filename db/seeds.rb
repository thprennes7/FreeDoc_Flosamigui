require 'faker'

10.times do 
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
end

100.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

120.times do
    appointment = Appointment.create!(date: Faker::Date.forward(500), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
end