class CreateArtSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :art_subs do |t|
    	t.string :title
    	t.text :description
    	t.decimal :cost
    	t.integer :user_id
      t.timestamps
    end
    add_index :art_subs, :user_id
  end
end
