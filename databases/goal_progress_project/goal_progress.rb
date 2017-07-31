## Create a program that helps users create goals and track their progress toward those goals with milestones.

#require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("goal_progress.db")

# use string delimiters to create a table

create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_goals_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS goals(
    id INTEGER PRIMARY KEY,
    description VARCHAR(255),
    met BOOLEAN,
    due_date VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

create_milestones_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS milestones(
    id INTEGER PRIMARY KEY,
    description VARCHAR(255),
    met BOOLEAN,
    due_date VARCHAR(255),
    set_reminder BOOLEAN,
    goal_id INT,
    FOREIGN KEY (goal_id) REFERENCES goals(id)
  )
SQL


# # create tables(if they're not there already)

db.execute(create_users_table_cmd)
db.execute(create_goals_table_cmd)
db.execute(create_milestones_table_cmd)

# add a test goal
db.execute("INSERT INTO goals(description, met, due_date, user_id) VALUES ('Land a dream job', 'false', '2017-10-31', 1)")

# add a test milestone
db.execute("INSERT INTO milestones(description, met, due_date, set_reminder, goal_id) VALUES ('Enroll in DevBootcamp', 'true', '2017-06-04', 'true', 1)")

# add a test user
db.execute("INSERT INTO users(name) VALUES ('Maren McMullan')")

# add information from a user to a database
puts "What's your goal?"
goal_description = gets.chomp
puts "Great! Your goal is #{goal_description}."

db.execute("INSERT INTO goals(description) VALUES (?)", (#{goal_description})")

## How to add user input into a table