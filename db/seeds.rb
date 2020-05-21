# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Instructor.destroy_all

i1 = Instructor.create(name:"Dr. Lehr")
i2 = Instructor.create(name:"Dr. Choi")
i3 = Instructor.create(name:"Dr. Lopez")

s1 = Student.create(name:"Lili",major:"Econ",age:26,instructor_id:i1.id)
s2 = Student.create(name:"Gaby",major:"CompSci",age:21,instructor_id:i3.id)
s2 = Student.create(name:"Roxy",major:"Math",age:20,instructor_id:i2.id)
s4 = Student.create(name:"Leo",major:"Math",age:20,instructor_id:i2.id)


