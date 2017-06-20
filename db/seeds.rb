Admin.create(email: "test@test.com", password: "123456")

50.times { |i| Blog.create(title: "Post #{i}", body: BetterLorem.p(5, false, false)) }
