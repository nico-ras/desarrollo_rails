class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :descript
      t.integer :state, default: 0
      t.date :started_on
      t.date :finished_on

      t.timestamps
    end
  end
end
