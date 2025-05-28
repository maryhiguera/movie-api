class ActorsController < ApplicationController
  def index
    @actor = Actor.all
    render :index
  end

  def create
    @actor = Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"]
  )
    if @actor.valid?
      render :show
    else
      render json: { errors: @actor.errors.full_message }
    end
  end

  def show
    @actor = Actor.find(params[:id])
    render :show
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.update(
      first_name: params["first_name"] || actor.first_name,
      last_name: params["last_name"] || actor.last_name,
      known_for: params["known_for"] || actor.known_for
  )
   if @actor.valid?
      render :show
   else
      render json: { errors: @actor.errors.full_message }
   end
  end

  def destroy
   @actor = Actor.find(params[:id])
   @actor.destroy
   render json: "actor deleted"
  end
end
