
class QueriesController < ApplicationController
skip_before_action :verify_authenticity_token


  def index
    @track = RSpotify::Track.find(Query.last.song_id)
  end

  def new
    @query = Query.new(song_id: params[:song_id])
  end

  def create
    @query = Query.new(song_id: params[:song_id])
    if @query.save
      redirect_to '/queries'
    else
      flash[:error] = 'An error occured!'
      redirect_to '/'
    end
  end

end