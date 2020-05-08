class AddAuthortoPage < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :author_id, :integer, foreign_key: true
  end
end
