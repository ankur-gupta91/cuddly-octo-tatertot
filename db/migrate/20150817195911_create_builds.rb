class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :type
      t.integer :buildid
      t.string :directory
      t.integer :failures

      t.timestamps null: false
    end
  end
end
