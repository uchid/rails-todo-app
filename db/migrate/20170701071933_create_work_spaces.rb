class CreateWorkSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :work_spaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
