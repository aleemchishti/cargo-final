class Order < ApplicationRecord
	validates :sender_name, :receiver_name, :weight_capacity, :from, :to, presence: true 
	validates :contact,presence: true,
            numericality: true,
            length: { :minimum => 4, :maximum => 15 }
end
