class AddClicksToUrl < ActiveRecord::Migration[6.1]
  def change
    add_column :urls, :clicks, :integer
  end
end
