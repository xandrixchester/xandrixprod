class Artist::ArtsController < ApplicationController
	before_action :authenticate_user!

	def new
		@art = Art.new
	end

	def create
    @art = current_user.arts.create(art_params)
    redirect_to artist_art_path(@art)
  end

  def show
  	@art = Art.find(params[:id])
  end

  private

  def art_params
    params.require(:art).permit(:title, :description, :cost)
  end

end
