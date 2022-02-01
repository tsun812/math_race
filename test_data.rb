class Test
attr_reader :questions, :answers
QUESTIONS = ['What does 1 plus 2 equal?', 
  'What does 3 plus 4 equal?', 
  'What does 5 plus 6 equal?', 
  'What does 7 plus 8 equal?', 
  'What does 9 plus 10 equal?', 
  'What does 11 plus 12 equal?']

ANSWERS = [3,7,11,15,19,23]

  def initialize
    @questions = QUESTIONS
    @answers = ANSWERS
  end

end