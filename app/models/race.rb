class Race < ActiveRecord::Base
  enum status: [:started, :finished]
end
