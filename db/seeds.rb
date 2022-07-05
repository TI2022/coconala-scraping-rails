User.create!(
      name: "管理者",
      email: "admin@email.com",
      password: "admin01*+",
      password_confirmation: "admin01*+",
      admin: true)
User.create!(
      name: "準管理者",
      email: "sub_admin@email.com",
      password: "subadmin01*+",
      password_confirmation: "subadmin01*+",
      sub_admin: true)
User.create!(
      name: "guestユーザー",
      email: "guest@email.com",
      password: "guestuser",
      password_confirmation: "guestuser",
      guest: true)
User.create!(
      name: "一般ユーザー",
      email: "general1@email.com",
      password: "general01*+",
      password_confirmation: "general01*+")