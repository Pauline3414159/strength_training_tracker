# User Story

a weight- lifter wants to track her workouts. Each workout takes place on a specific day. She does works out specific parts of her body (chest, back, legs, shoulders, bicepts, tricepts, and core) using various exercizes.

She does up to three sets of each exercise and marks the number of pounds/weight used and the number of repititions

return avg reps and weights of various muscle groups per workout

C - a workout
R - a workout
  - display min, max weights and reps
U - update a workout, add exercises, update sets
D - a workout, an exercise, or a set

# Database design

## Entitites

one workout contains many exercises

one exercises contains many sets

set - pounds and reps

workouts
- id
- date

ercercises_workouts
- id
- exercise_id
- workout_id

sets_workouts
- id
- workout_id
- sets_id

exercises
- id
- name
- muscle_group

sets
- id
- exercise_id
- pounds
- reps

workout - contains exercises with wiehtts and reps on a date

exercises - contains a body area

# Pages

## Main page

- displays a list of already made workouts - from here you can delete a workout, or add a new workout
  
- clicking on a workout will bring to a page where you can read and edit the workout
  - on this page you can add exercises and sets in a group

# Tasks
- [ ] set up database with some seeded workouts
  - [x] set up database
  - [x] created exercise data
  - [ ] add exercises to workouts
  - [ ] and sets to workouts
- [ ] set up main page
- [ ] set up edit page
- [ ] set up routes
- [ ] set up database interperter


