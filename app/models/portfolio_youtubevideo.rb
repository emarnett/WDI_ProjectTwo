class PortfolioYoutubevideo
	include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :user

  field :portfolio_youtubevideo
end