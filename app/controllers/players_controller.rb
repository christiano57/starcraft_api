class PlayersController < ApplicationController
	def show
		@player = Player.find_by(id: params[:id])
		matches = Match.all
		@player_matches = matches.where('winner_id = 2 OR loser_id = 2')
		@player_wins = matches.where(winner_id: 2)
		@player_win_percentage = @player_wins.length.to_f / @player_matches.length
	end

	private
  def player_params
  	params.require(:player).permit(:id)
  end
end
