Person.destroy_all

Person.create! [
  { first_name: 'Kalman', last_name: 'Smith', age: 33, login: 'user', pass: '1234' },
  { first_name: 'John', last_name: 'What', age: 27, login: 'user', pass: '1234' },
  { first_name: 'Michael', last_name: 'Smith', age: 15, login: 'user', pass: '1234' },
  { first_name: 'Josh', last_name: 'Oreck', age: 57, login: 'user', pass: '1234' },
  { first_name: 'John', last_name: 'Smith', age: 27, login: 'john2', pass: 'no_idea' },
  { first_name: 'Bill', last_name: 'Gates', age: 75, login: 'user', pass: '1234' },
  { first_name: 'LeBron', last_name: 'James', age: 30, login: 'user', pass: '1234'}
]
