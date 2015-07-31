class Language < ActiveRecord::Base
   default_scope {order(:name)}
   has_many :members
end
