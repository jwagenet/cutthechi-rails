class AddCommitToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :commit, :integer
  end
end
