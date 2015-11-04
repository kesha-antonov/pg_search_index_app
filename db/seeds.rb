user = User.create(name: 'test_user')

1000.times do |t|
  user.articles.create(name: 'test_article', text: 'test '*200)
end
