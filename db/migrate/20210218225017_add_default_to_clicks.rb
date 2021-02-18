class AddDefaultToClicks < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:urls, :clicks, 0)
  end
end
