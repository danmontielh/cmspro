class ChangeContentToTextInArticles < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :content, :text
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
