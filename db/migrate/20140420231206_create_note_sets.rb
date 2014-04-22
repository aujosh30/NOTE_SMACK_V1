class CreateNoteSets < ActiveRecord::Migration
  def change
    create_table :note_sets do |t|
      t.string :title
      t.string :description
      t.datetime :dateadded

      t.timestamps
    end
  end
end
