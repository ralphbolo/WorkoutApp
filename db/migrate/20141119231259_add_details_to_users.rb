class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :goal, :text
  end
end
