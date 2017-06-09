class CreateWeddings < ActiveRecord::Migration[5.0]
  def change
    create_table :weddings do |t|
      t.string :wedding_date
      t.string :couple_name

      t.timestamps

    end
  end
end
