module Acts
  module As
    module Memberable
      module Common
	  	def acts_as_memberable(object_name = "members")
	  	  memberable object_name
	  	end

	  	private

	  	def memberable(tag_types)
	  	  class_eval do
	  	  	has_many :memberships, :as => :memberable, :class_name => "Acts::As::Memberable::Membership"
  			has_many :members, :through => :memberships
	        define_methods_block tag_types
	      end
	  	end

	  	def define_methods_block(tag_types)
  		#   tag_type = tag_types.to_s.singularize

    #       define_method "update_#{tag_type}".to_sym do |args|
    #         eval %{
    #           self.#{tag_types}.create(content: args[:content], variables: args[:variables])
    #           self.#{tag_types}.first.delete if self.#{tag_types}.size > 5
    #         }
		  # end
	  	end
      end
    end
  end
end