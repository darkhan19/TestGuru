# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ivan = User.create(name: 'Иван', email: 'ivan@mail.ru', password: 'qwerty')

russian = Category.create(title: 'Русский')  
english = Category.create(title: 'Английский')

test1 = Test.create(title: 'Тест по русскому', level: 0, category_id: russian.id, author_id: ivan.id)
test2 = Test.create(title: 'Тест по английскому', level: 1, category_id: english.id, author_id: ivan.id)

question1 = Question.create(body: 'Фонетика изучает', test_id: test1.id)
question2 = Question.create(body: 'Сколько гласных звуков', test_id: test1.id)
question3 = Question.create(body: '… you a doctor? – yes, I …', test_id: test2.id)
question4 = Question.create(body: 'I … sorry. They … not at the office at the moment', test_id: test2.id)
question5 = Question.create(body: 'Test for valid', test_id: test2.id)

answer1_for_questsion1 = Answer.create(body: 'слово', question_id: question1.id)
answer2_for_questsion1 = Answer.create(body: 'словосочетание', question_id: question1.id) 
answer3_for_questsion1 = Answer.create(body: 'словосочетание', question_id: question1.id) 
answer4_for_questsion1 = Answer.create(body: 'звук', question_id: question1.id, correct: true) 

answer1_for_questsion2 = Answer.create(body: '10', question_id: question2.id, correct: true)
answer2_for_questsion2 = Answer.create(body: '6', question_id: question2.id) 
answer3_for_questsion2 = Answer.create(body: '8', question_id: question2.id) 
answer4_for_questsion2 = Answer.create(body: '4', question_id: question2.id) 

answer1_for_questsion3 = Answer.create(body: 'is, is', question_id: question3.id)
answer2_for_questsion3 = Answer.create(body: 'are, am', question_id: question3.id, correct: true) 
answer3_for_questsion3 = Answer.create(body: 'is, am', question_id: question3.id) 
answer4_for_questsion3 = Answer.create(body: 'are, are', question_id: question3.id) 

answer1_for_questsion4 = Answer.create(body: 'were, were', question_id: question4.id)
answer2_for_questsion4 = Answer.create(body: 'was, will be', question_id: question4.id) 
answer3_for_questsion4 = Answer.create(body: 'am, are', question_id: question4.id, correct: true) 
answer4_for_questsion4 = Answer.create(body: 'are, are', question_id: question4.id) 
