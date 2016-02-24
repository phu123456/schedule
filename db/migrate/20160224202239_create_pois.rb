class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.text :subj
      t.text :instruc
      t.text :tm
      t.text :rm

      t.timestamps null: false
    end
  end
end
