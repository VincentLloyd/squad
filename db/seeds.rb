# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exercise_types = ([
{ name: 'Aerobics' },
{ name: 'Aquarobics' },
{ name: 'Balance exercise' },
{ name: 'Body building' },
{ name: 'Boxing' },
{ name: 'Calisthenics' },
{ name: 'Circuit training' },
{ name: 'Cross training' },
{ name: 'Cycling' },
{ name: 'Eccentric training' },
{ name: 'Endurance training' },
{ name: 'Functional training' },
{ name: 'Hiking' },
{ name: 'Interval training' },
{ name: 'Pilates' },
{ name: 'Plyometrics' },
{ name: 'Power walking' },
{ name: 'Distance running' },
{ name: 'Sprint training' },
{ name: 'Strength training' },
{ name: 'Swimming' },
{ name: 'Walking' },
{ name: 'Weight training' }
])

exercise_types.each { | ex_type| ExerciseType.create(ex_type)}
