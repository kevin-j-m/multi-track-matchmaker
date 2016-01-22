class AddPresenterToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :presenter_id, :integer
    add_index :presentations, :presenter_id
  end
end
