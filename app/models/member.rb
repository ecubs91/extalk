class Member < ActiveRecord::Base
   
   validates :language_id, presence: true
   has_many :reviews
   belongs_to :user
   belongs_to :gender
   belongs_to :language
   
   def gender_type
     ["Not Telling", "Male", "Female"][self.gender - 1]
   end
end
