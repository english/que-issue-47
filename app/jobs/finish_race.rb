class FinishRace < Que::Job
  def run(race_id)
    ActiveRecord::Base.transaction do
      Race.update(race_id, status: :finished)
      destroy
    end
  end
end
