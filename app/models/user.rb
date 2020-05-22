class User < ApplicationRecord
    has_many: messages
    has_many: special_dates
    has_one partner_b, class_name: "User" foreign_key: "partner_a"
    belongs_to: partner_a, class_name: "User"
end
