class AddStudentIdToMarks < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :student_id, :integer
    add_index :marks, :student_id
  end
end
