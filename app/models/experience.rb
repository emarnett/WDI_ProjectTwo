class Experience
	include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :user

  field :title
  field :character
end