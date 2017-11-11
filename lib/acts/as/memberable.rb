require "acts/as/memberable/version"
require "acts/as/memberable/member"
require "acts/as/memberable/membership"
require "acts/as/memberable/common"
require "active_record"

module Acts
  module As
    module Memberable
    end
  end
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Acts::As::Memberable::Common
end
