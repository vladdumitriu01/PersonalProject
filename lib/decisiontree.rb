require 'decisiontree'

attributes = ['Outlook', 'Humidity', 'Wind']
training = [
  ['Sunny', 'High', 'Weak', false],   #day 1
  ['Sunny', 'High', 'Strong', true], #day 2
  ['Overcast', 'High', 'Weak', true],#day 3
  ['Rain', 'High', 'Weak', true], #day 4
  ['Rain', 'Normal', 'Weak', true], #day 5
  ['Rain', 'Normal', 'Strong', false], #day 6
  ['Overcast', 'Normal', 'Strong', true], #day 7
  ['Sunny', 'High', 'Weak', false], #day 8
  ['Sunny', 'Normal', 'Weak', true], #day 9
  ['Rain', 'Normal', 'Weak', true], #day 10
  ['Sunny', 'Normal', 'Strong', true], #day 11
  ['Overcast', 'High', 'Strong', true], #day 12
  ['Overcast', 'Normal', 'Weak', true], #day 13
  ['Rain', 'High', 'Strong', false] #day 14
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, true, :discrete)
dec_tree.train

test = ['Sunny', 'Normal', 'Weak']

puts dec_tree.predict(test)