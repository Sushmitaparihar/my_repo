class User < ApplicationRecord
	has_one :profile
    has_many :contacts

    accepts_nested_attributes_for :profile, :contacts

end
