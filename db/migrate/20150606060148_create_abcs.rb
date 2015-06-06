class CreateAbcs < ActiveRecord::Migration
  def change
    create_table :abcs do |t|
      t.string :name
      t.text :time
      t.string :start

      t.timestamps
    end
  end
end
