class Tags < ActiveRecord::Migration[7.1]
  def change
    create_table "tags", force: :cascade do |t|
      t.string "name", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
