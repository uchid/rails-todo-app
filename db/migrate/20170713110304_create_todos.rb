class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :content
      t.date :todo_date
      t.time :todo_time
      t.boolean :done, default: false
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
