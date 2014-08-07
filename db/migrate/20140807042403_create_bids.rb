class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :candidateid
      t.integer :userid
      t.integer :bid

      t.timestamps
    end
		add_index :bids, [:candidateid, :userid]
  end
end
