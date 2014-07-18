class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.datetime :due_time
      t.text :contents
      t.integer :task_id
      t.string :section_title
      t.boolean :status

      t.timestamps
    end
  end
end
