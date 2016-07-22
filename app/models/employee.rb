class Employee < ApplicationRecord
  belongs_to :boss, class_name: "Employee"
  has_many :subordinates, class_name: "Employee", foreign_key: "boss_id"
end
