class CreatePresenter < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.timestamps null: false
      t.string :first_name
      t.string :last_name
      t.text :bio
    end
  end
end
