class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :title,presence: true,length:{minimum: 5}
	validates :body,presence: true
	validates :package,presence: true
	has_many :impressions, :as=>:impressionable
	is_impressionable
def impression_count
	impressions.size
end

end
