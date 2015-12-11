class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.datetime :end_date
      t.float :reserve_price
      t.string :state
      t.references :user

      t.timestamps null: false
    end
  end
end
