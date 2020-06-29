class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string #когда добавлял null: false, не давал сделать миграцию. SQLite3::ConstraintException: NOT NULL constraint failed: users.email

    add_column :users, :password, :string 
  end
end
