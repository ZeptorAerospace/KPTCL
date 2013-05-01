class CreateHostelas < ActiveRecord::Migration
  def change
    create_table :hostelas do |t|
      t.decimal :transformer_one
      t.decimal :transformer_two
      t.decimal :transformer_three
      t.date :entry_date

      t.timestamps
    end
  end
end
