module Acts
  module As
    module Memberable
      class Membership < ::ActiveRecord::Base
        self.table_name = "memberables"
        belongs_to :member, class_name: "::User", foreign_key: :user_id
        belongs_to :memberable, :polymorphic => true
      end
    end
  end
end