# reset pk sequences 

User.destroy_all
Trainer.destroy_all
Appointment.destroy_all
Feedback.destroy_all

#######################

User.reset_pk_sequence
Trainer.reset_pk_sequence
Appointment.reset_pk_sequence
Feedback.reset_pk_sequence


time = Time.new

user_1 = User.create(name:"Woodelin", profile_image: "https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2637.jpg", email:"Woodelin@yahoo.com", password:"abc123")
user_2 = User.create(name:"Brian", profile_image: "https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2637.jpg", email:"Kevin@yahoo.com", password:"abc123")
user_3 = User.create(name:"Britney", profile_image: "https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2637.jpg", email:"Ashley@yahoo.com", password:"abc123")
user_4 = User.create(name:"Alice", profile_image: "https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2637.jpg", email:"Sam@yahoo.com", password:"abc123")

trainer_1 = Trainer.create(name:"Kevin", image:"https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2672.jpg", location: "Brooklyn",  bio:"What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since time", booked:false, rating: 1)
trainer_2 = Trainer.create(name:"Devin", image:"https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2637.jpg", location: "Bushwick", bio:"What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since time", booked:false, rating: 1)
trainer_3 = Trainer.create(name:"Ashley", image: "https://www.clubshula.com/wp-content/uploads/2018/02/Shulas-Photoshoot-09.png", location: "Manhattan", bio:"What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since time", booked:true, rating: 1)
trainer_4 = Trainer.create(name:"Sam", image:"https://www.clubshula.com/wp-content/uploads/2018/02/IMG_2625.jpg", location: "Bronx", bio:"What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since time", booked:false, rating: 1)

appointment_1 = Appointment.create(trainer_id: trainer_1.id, trainer_name: trainer_1.name, user_id:user_1.id, trainer_location: trainer_1.location, date: DateTime.strptime("07/19/2021 08:00", "%m/%d/%Y %H:%M"))
appointment_2 = Appointment.create(trainer_id: trainer_2.id, trainer_name: trainer_2.name, user_id:user_1.id, trainer_location: trainer_2.location, date: DateTime.strptime("07/19/2021 08:00", "%m/%d/%Y %H:%M"))
appointment_3 = Appointment.create(trainer_id: trainer_3.id, trainer_name: trainer_3.name, user_id:user_1.id, trainer_location: trainer_3.location, date: DateTime.strptime("07/19/2021 08:00","%m/%d/%Y %H:%M"))
appointment_4 = Appointment.create(trainer_id: trainer_4.id, trainer_name: trainer_4.name, user_id:user_1.id, trainer_location: trainer_4.location, date: DateTime.strptime("07/19/2021 08:00","%m/%d/%Y %H:%M"))


feedback_1 = Feedback.create(content:"great trainer helped with my cardio", trainer_id: trainer_1.id, user_id: user_1.id)
feedback_2 = Feedback.create(content:"great training session got a chance to improve my flexibility", trainer_id: trainer_2.id, user_id: user_1.id)




# DateTime.new(2012, 8, 29, 22, 35, 0).change(day: 1)  

# create_table :appointments do |t|
#     t.integer :trainer_id
#     t.integer :user_id
#     t.string :location
#     t.date :date
#     t.timestamp :time

#     t.timestamps

