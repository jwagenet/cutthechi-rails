class Bid < ActiveRecord::Base
	belongs_to :user
	belongs_to :candidate
	validates :user_id, presence: true
	validates :user_id, presence: true
end
