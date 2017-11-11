module Acts
  module As
    module Memberable
      class Member < ::ActiveRecord::Base
        has_many :memberable, :dependent => :destroy, :class_name => "Acts::As::Memberable::Membership"
        has_many :members, :through => :memberable, :source => :memberable
	  end
    end
  end
end