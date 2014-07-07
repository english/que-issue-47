class RacesController < ApplicationController
  def index
    @races = Race.order(id: :desc)
  end

  def create
    race = Race.create!(status: :started)
    FinishRace.enqueue(race.id, run_at: 5.seconds.from_now)
    redirect_to races_path
  end
end
