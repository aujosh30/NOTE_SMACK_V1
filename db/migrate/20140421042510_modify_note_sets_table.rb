class ModifyNoteSetsTable < ActiveRecord::Migration
  def change
      remove_column :note_sets, :dateadded, :datetime
  end
end
