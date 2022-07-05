User.find_or_create_by(
[
  {
    id: 1,
    name: "管理者",
    email: "admin@email.com",
    password: "admin01*+",
    password_confirmation: "admin01*+",
    admin: true
  },
  {
    id: 2,
    name: "準管理者",
    email: "sub_admin@email.com",
    password: "subadmin01*+",
    password_confirmation: "subadmin01*+",
    accounting: true
  },
  {
    id: 3,
    name: "guestユーザー",
    email: "guest@email.com",
    password: "guest",
    password_confirmation: "guest"
  },
  {
    id: 4,
    name: "一般ユーザー",
    email: "general1@email.com",
    password: "general01*+",
    password_confirmation: "general01*+"
  }
]
)