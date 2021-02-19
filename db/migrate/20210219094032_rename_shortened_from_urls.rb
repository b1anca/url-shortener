class RenameShortenedFromUrls < ActiveRecord::Migration[6.1]
  def change
    rename_column :urls, :shortened, :slug
  end
end
