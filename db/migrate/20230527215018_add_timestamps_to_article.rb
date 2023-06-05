class AddTimestampsToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_at, :datetype
    add_column :articles, :updated_at, :datetype
  end
end
