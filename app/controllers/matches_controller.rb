class MatchesController < ApplicationController
	def index
		matches = Match.all
		render json: matches.to_json(:include => :winner)
	end

	def faction_index
		matches = Match.where("winner_faction = 'protoss' OR loser_faction = 'protoss'")
		render json: matches.to_json(:include => [:winner, :loser])
	end

private
  def tournament_params
  	params.require(:match).permit(:faction)
  end
end
