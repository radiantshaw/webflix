class CreateStreams < ActiveRecord::Migration[5.2]
  def change
    create_table :streams do |t|
      t.string :key
      t.string :file
      
      t.timestamps
    end
  end
end
