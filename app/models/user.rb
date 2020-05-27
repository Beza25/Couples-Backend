class User < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :special_dates, dependent: :destroy
    # partner_a has one partner_b
    # parter_b has onew partner_b
    has_one :partner, class_name: "User", foreign_key: "partner_id"
    # has_one :partner_a, class_name: "User"
end
