class AddCodeSchoolToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :code_school, foreign_key: true
  end
end
