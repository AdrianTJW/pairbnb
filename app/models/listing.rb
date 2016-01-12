class Listing < ActiveRecord::Base
	belongs_to :user
	validates_format_of :email, :with => /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/, multiline:true
	validates :title, presence: true
	validates :description, presence: true
	validates :location, presence: true
	validates :email, presence: true
end
