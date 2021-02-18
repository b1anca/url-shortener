class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :origin
      t.string :shortened

      t.timestamps
    end
  end
end
