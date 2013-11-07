class PortfolioImage
	include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :user

  mount_uploader :portfolio_image, PortfolioImageUploader

  field :portfolio_image
  field :name
end