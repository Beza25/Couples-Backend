class CreateSpecialDates < ActiveRecord::Migration[6.0]
  def change
    create_table :special_dates do |t|
      t.date :special_day
      t.integer :user_id
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
