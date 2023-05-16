class CreateProjectEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :project_events do |t|
      t.integer :project_id
      t.string :user_name
      t.text :comment
      t.jsonb :data_changes
      t.string :type

      t.timestamps
    end

    add_index :project_events, [:type, :project_id]
  end
end
