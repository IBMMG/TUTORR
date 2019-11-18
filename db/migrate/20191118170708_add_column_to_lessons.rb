class AddColumnToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :name, :string
    add_column :lessons, :description, :string
    add_column :lessons, :price, :decimal
    add_column :lessons, :location, :string
    add_reference :lessons, :user_tutor, foreign_key: { to_table: :users }
  end
end
