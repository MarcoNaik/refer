module Refer
  module Model
    extend ActiveSupport::Concern

    included do
      has_many :referrals, inverse_of: :referrer, class_name: "Refer::Referral"
      has_one :referral, inverse_of: :referee, class_name: "Refer::Referral"
      delegate :referrer, to: :referral
    end
  end
end
