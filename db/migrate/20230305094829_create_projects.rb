class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :goals
      t.integer :timeframe
      t.string :status
      t.timestamps
    end
  end
end
