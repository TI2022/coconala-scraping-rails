User.find_or_create_by(
      name: "管理者",
      email: "admin@email.com",
      password: "admin01*+",
      password_confirmation: "admin01*+",
      admin: true)
User.find_or_create_by(
      name: "準管理者",
      email: "sub_admin@email.com",
      password: "subadmin01*+",
      password_confirmation: "subadmin01*+",
      accounting: true)
User.find_or_create_by(
      name: "guestユーザー",
      email: "guest@email.com",
      password: "guest",
      password_confirmation: "guest")
User.find_or_create_by(
      name: "一般ユーザー",
      email: "general1@email.com",
      password: "general01*+",
      password_confirmation: "general01*+")