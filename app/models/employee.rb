class Employee < ApplicationRecord
	belongs_to :department, optional:true
	belongs_to :project , optional:true
end