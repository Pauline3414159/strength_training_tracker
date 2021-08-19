CREATE DATABASE IF NOT EXISTS workouts;

\c workouts

CREATE TABLE IF NOT EXISTS workouts (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS exercises (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  muscle_group VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS sets (
  id SERIAL PRIMARY KEY,
  exercise_id INT REFERENCES exercises(id),
  pounds INT NOT NULL CHECK (pounds > 0),
  reps INT NOT NULL CHECK (reps > 0)
);

CREATE TABLE IF NOT EXISTS exercises_workouts  (
  id SERIAL PRIMARY KEY,
  exercise_id INT NOT NULL REFERENCES exercises(id) ,
  workout_id INT NOT NULL REFERENCES workouts(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS sets_workouts  (
  id SERIAL PRIMARY KEY,
  workout_id INT NOT NULL REFERENCES workouts (id) ON DELETE CASCADE,
  set_id INT NOT NULL REFERENCES sets(id) ON DELETE CASCADE
);