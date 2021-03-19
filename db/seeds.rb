# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Test.destroy_all
User.destroy_all
Result.destroy_all
Question.destroy_all
Answer.destroy_all

users = User.create!([
  { username: 'ali', password: '1234'},
  { username: 'Kristen', password: 'kris'},
  { username: 'cat', password: 'gella'}
])

categories = Category.create!([
  { title: 'back-end' },
  { title: 'front-end' },
  { title: 'machine learning' },
])

tests = Test.create!([
    { level: 2, title: 'Ruby', category: categories[0], author: users[0] },
    { level: 3, title: 'Javascript', category: categories[1]. author: users[1] },
    { level: 1, title: 'Python', category: categories[2], author: users[0] }
])

results = Result.create!([
  { status: true, user: users[0], test_id: tests[0] },
  { status: true, user: users[1], test_id: tests[1] },
  { status: true, user: users[2], test_id: tests[2] }
])

questions = Question.create!([
  { body: 'Ruby: Question 1', test_id: tests[0] },
  { body: 'Javascript: Question 2', test_id: tests[1] },
  { body: 'Python: Question 3', test_id: tests[2] }
])

answers = Answer.create!([
  { body: 'Ruby: Answer 1', question_id: questions[0] },
  { body: 'Javascript: Answer 2', question_id: questions[1] },
  { body: 'Python: Answer 3', question_id: questions[2] }
])

testsuser = TestsUser.create!([
  { test_id: tests[0], user_id: users[0] }
])