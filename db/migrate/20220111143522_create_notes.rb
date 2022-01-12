class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :message
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
