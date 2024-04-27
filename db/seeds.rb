# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
a1 = User.create!(name: "Admin", email: "admin@123.com", password: "admin123")
a2 = User.create!(name: "Admin2", email: "admin2@123.com", password: "admin1234")
a3 = User.create!(name: "Admin3", email: "admin3@123.com", password: "admin12345")
a4 = User.create!(name: "Admin4", email: "admin4@123.com", password: "admin123456")
a5 = User.create!(name: "Admin5", email: "admin5@123.com", password: "admin1234567")

t1 = Tag.create!(name: "Tag 1")
t2 = Tag.create!(name: "Tag2")
t3 = Tag.create!(name: "Tag3")
t4 = Tag.create!(name: "Tag4")
t5 = Tag.create!(name: "Tag5")

Post.create!(title: "Post11", content: "Content11", published_at: "2024-04-22 17:28:55", answers_count: 15, likes_count: 200,user_id: a1.id, tag_id: t1.id)
Post.create!(title: "Post12", content: "Content12", published_at: "2024-04-22 17:28:55", answers_count: 2, likes_count: 400,user_id: a1.id)
Post.create!(title: "Post13", content: "Content13", published_at: "2024-04-22 17:28:55", answers_count: 5, likes_count: 100,user_id: a2.id, tag_id: t2.id)
Post.create!(title: "Post14", content: "Content14", published_at: "2024-04-22 17:28:55", answers_count: 10, likes_count: 300,user_id: a2.id)
Post.create!(title: "Post15", content: "Content15", published_at: "2024-04-22 17:28:55", answers_count: 20, likes_count: 500,user_id: a3.id, tag_id: t3.id)
Post.create!(title: "Post16", content: "Content16", published_at: "2024-04-22 17:28:55", answers_count: 25, likes_count: 600,user_id: a3.id)
Post.create!(title: "Post17", content: "Content17", published_at: "2024-04-22 17:28:55", answers_count: 30, likes_count: 700,user_id: a4.id , tag_id: t4.id)
Post.create!(title: "Post18", content: "Content18", published_at: "2024-04-22 17:28:55", answers_count: 35, likes_count: 800,user_id: a4.id)
Post.create!(title: "Post19", content: "Content19", published_at: "2024-04-22 17:28:55", answers_count: 40, likes_count: 900,user_id: a5.id , tag_id: t5.id)
Post.create!(title: "Post20", content: "Content20", published_at: "2024-04-22 17:28:55", answers_count: 45, likes_count: 1000,user_id: a5.id)


