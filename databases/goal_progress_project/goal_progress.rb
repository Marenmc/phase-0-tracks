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


#create tables(if they're not there already)

db.execute(create_users_table_cmd)
db.execute(create_goals_table_cmd)
db.execute(create_milestones_table_cmd)

#create a new user within the database
puts "-------WELCOME TO YOUR GOAL PROGRESS TRACKER!-------"
puts "Fill out some information about what your goals are, and we'll help you track your progress!"
puts "Let's get started..."
puts "-----------"


puts "What's your name?"
@users_name = gets.chomp
db.execute("INSERT INTO users( name ) VALUES (?)", [@users_name])
  puts "Nice to meet you, #{@users_name}."

# Ask user for their goal and print it to the database
  puts "What is one goal you're currently working toward?"
  @goal_description = gets.chomp
  puts "Great! Your goal is #{@goal_description}."
  db.execute("INSERT INTO goals( description ) VALUES (?)", [@goal_description])
  puts "Let's make this a SMART goal. Enter a date by which you would like to achieve this goal."
  @goal_due_date = gets.chomp
  db.execute("INSERT INTO goals( due_date ) VALUES (?)", [@goal_due_date])
  puts "ok! By #{@goal_due_date} you want to #{@goal_description}."


# # add a test goal
# db.execute("INSERT INTO goals(description, met, due_date, user_id) VALUES ('Land a dream job', 'false', '2017-10-31', 1)")

# # add a test milestone
# db.execute("INSERT INTO milestones(description, met, due_date, set_reminder, goal_id) VALUES ('Enroll in DevBootcamp', 'true', '2017-06-04', 'true', 1)")

# # add a test user
# db.execute("INSERT INTO users(name) VALUES ('Maren McMullan')")
