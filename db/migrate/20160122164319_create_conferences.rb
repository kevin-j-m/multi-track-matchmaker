class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.date :starts_on
      t.date :ends_on
    end
  end
end
