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

# Milestones
landing_page = Milestone.new({
  delivery_date: DateTime.now + 1,
  name: "Landing page",
  description: "Description",
  status: "Livré",
  project_id: 1
})
landing_page.save

ios_app = Milestone.new({
  delivery_date: DateTime.now + 2,
  name: "App iOS",
  description: "Description",
  status: "En cours",
  project_id: 1
})
ios_app.save
