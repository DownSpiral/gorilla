class CreateAutosaves < ActiveRecord::Migration
  def change
    create_table :autosaves do |t|
      t.string :name
      t.datetime :save_date
      t.integer :user_id
      t.text :contents

      t.timestamps
    end
  end
end
