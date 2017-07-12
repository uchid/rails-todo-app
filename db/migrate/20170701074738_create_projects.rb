class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :purpose
      t.references :work_space, foreign_key: true

      t.timestamps
    end
  end
end
