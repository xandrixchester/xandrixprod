class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
    	t.string :title
    	t.string :description
    	t.decimal :cost
    	t.integer :user_id

      t.timestamps 
    end
    add_index :arts, :user_id
  end
end
