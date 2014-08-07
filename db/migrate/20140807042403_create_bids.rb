class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :candidate_id
      t.integer :user_id
      t.integer :bid

      t.timestamps
    end
		add_index :bids, [:candidate_id, :user_id]
  end
end
