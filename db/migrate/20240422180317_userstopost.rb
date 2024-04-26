class Userstopost < ActiveRecord::Migration[7.1]
  def change
    create_table "usertopost", force: :cascade do |t|
      t.references :posts, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true
    end
  end
end
