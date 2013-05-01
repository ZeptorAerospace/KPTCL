class CreateTransformers < ActiveRecord::Migration
  def change
    create_table :transformers do |t|
      t.date :entry_date
      t.decimal :transformer_one
      t.decimal :transformer_two

      t.timestamps
    end
  end
end
