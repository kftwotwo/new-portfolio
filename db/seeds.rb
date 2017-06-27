User.create(email: "test@test.com", password: "123456")

50.times { |i| Blog.create(title: "Post #{i}", tags: BetterLorem.w(10), body: BetterLorem.p(5, false, false)) }
