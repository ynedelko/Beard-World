class CreateBeards < ActiveRecord::Migration
  def change
    create_table :beards do |t|
      t.column :name, :string
      t.column :rating, :integer
      t.column :image_url, :string

      t.timestamps
    end
  end
end
