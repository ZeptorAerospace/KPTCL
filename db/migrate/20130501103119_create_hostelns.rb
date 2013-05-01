class CreateHostelns < ActiveRecord::Migration
  def change
    create_table :hostelns do |t|
      t.decimal :transformer_one
      t.decimal :transformer_two
      t.date :entry_date

      t.timestamps
    end
  end
end
