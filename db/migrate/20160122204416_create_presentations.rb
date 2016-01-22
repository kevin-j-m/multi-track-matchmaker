class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.timestamps null: false
      t.integer :conference_id, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :starts_at
      t.datetime :ends_at
    end

    add_index :presentations, :conference_id
  end
end
