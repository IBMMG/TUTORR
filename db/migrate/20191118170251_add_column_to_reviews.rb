class AddColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :comment, :string
    add_column :reviews, :stars, :integer
    add_reference :reviews, :booking, foreign_key: true
  end
end
