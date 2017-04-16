Project.destroy_all

# Admin User
admin = User.new({
  email: "admin@muxumuxu.com",
  password: "secret"
})
admin.save

# Projects
sodif = Project.new({
  name: "SODIF",
  short_description: "Un projet avec des fleurs",
  summary: "On a fait çi et ça"
})
sodif.save

quorum = Project.new({
  name: "Quorum",
  short_description: "Un projet avec des copains",
  summary: "On a fait çi et ça et ça aussi"
})
quorum.save
