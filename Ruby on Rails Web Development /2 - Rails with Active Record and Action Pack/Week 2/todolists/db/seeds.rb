User.destroy_all
Profile.destroy_all

Profile.create! [
  { birth_year: 1954, first_name: 'Carly', last_name: 'Fiorina', gender: 'female' },
  { birth_year: 1946, first_name: 'Donald', last_name: 'Trump', gender: 'male' },
  { birth_year: 1951, first_name: 'Ben', last_name: 'Carson', gender: 'male' },
  { birth_year: 1947, first_name: 'Hillary', last_name: 'Clinton', gender: 'female' }
]

Profile.all.each { |p|
  u = User.create! username: p.last_name, password_digest: 'password'
  u.profile = p
}

User.all.each { |u|
  u.todo_lists << TodoList.create!(list_due_date: (Date.today + 1.year))
}

TodoList.all.each { |t|
  5.times { |i|
    t.todo_items << TodoItem.create!(title: "Title#{i}", description: "Desc#{i}", due_date: (Date.today + 1.year))
  }
}
