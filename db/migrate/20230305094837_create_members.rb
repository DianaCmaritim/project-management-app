class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :user_id
      t.integer :project_id
    end
  end
end
