class CreateEntrepreneurs < ActiveRecord::Migration
  def change
    create_table :entrepreneurs do |t|
      t.text :name
      t.text :degree
      t.text :place
      t.text :country
      t.text :about

      t.timestamps
    end
  end
end
