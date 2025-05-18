class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor
  end

  def create
    actor = Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
  )
    render json: actor
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor
  end

  def update
    actor = Actor.find(params[:id])

    actor.update(
      first_name: params["first_name"] || actor.first_name,
      last_name: params["last_name"] || actor.last_name,
      known_for: params["known_for"] || actor.known_for
  )
  render json: actor
  end

  def destory
    render json:
  end


  def destroy
   actor = Actor.find(params[:id])
   actor.destory
   render json: "actor deleted"
  end
end
