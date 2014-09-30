class Deal < ActiveRecord::Base
	has_many :statuses
	has_many :status_updates

	accepts_nested_attributes_for :statuses
end
