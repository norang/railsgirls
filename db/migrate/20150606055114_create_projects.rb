class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :store
      t.string :code
      t.string :start
      t.string :time
      t.string :finish
      t.string :time

      t.timestamps
    end
  end
end
