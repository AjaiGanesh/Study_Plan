class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.string :marks

      t.timestamps
    end
  end
end
