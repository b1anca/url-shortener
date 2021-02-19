class RenameShortenedFromUrls < ActiveRecord::Migration[6.1]
  def change
    rename_column :urls, :shortened, :short_url
  end
end
