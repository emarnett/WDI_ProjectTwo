class Recommendation
	include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :id
  field :profile_name
  field :comment

  validates :user, presence: true

end
