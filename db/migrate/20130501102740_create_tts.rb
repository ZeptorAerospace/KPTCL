class CreateTts < ActiveRecord::Migration
  def change
    create_table :tts do |t|
      t.decimal :transformer_one
      t.decimal :transformer_two
      t.date :entry_date

      t.timestamps
    end
  end
end
