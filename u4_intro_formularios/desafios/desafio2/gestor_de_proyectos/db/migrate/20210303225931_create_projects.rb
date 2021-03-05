class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :start_on
      t.string :date
      t.string :finish_on
      t.string :date
      t.string :state
      t.string :interger

      t.timestamps
    end
  end
end
