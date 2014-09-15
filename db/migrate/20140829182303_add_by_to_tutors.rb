class AddByToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :by, :string
  end
end
