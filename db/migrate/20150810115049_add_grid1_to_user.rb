class AddGrid1ToUser < ActiveRecord::Migration
  def change
    add_column :users, :grid1, :string
    add_column :users, :grid2, :string
    add_column :users, :grid3, :string
    add_column :users, :grid4, :string
    add_column :users, :grid5, :string
    add_column :users, :grid6, :string
    add_column :users, :grid7, :string
  end
end
