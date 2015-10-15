class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :user, :string
      t.column :text, :string
      t.column :beard_id, :integer

      t.timestamps
    end
  end
end
