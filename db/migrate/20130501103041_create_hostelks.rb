class CreateHostelks < ActiveRecord::Migration
  def change
    create_table :hostelks do |t|
      t.decimal :transformer_one
      t.decimal :transformer_two
      t.date :entry_date

      t.timestamps
    end
  end
end
