class Project < ApplicationRecord
	has_many :project_events
	has_many :comments
	has_many :histories

	before_save :record_changes

  enum status: {
    pending: 1,
    active: 2,
    completed: 3
  }


  def record_changes
  	return true unless changed?

  	history = changes
  	history = self.histories.build
  	history.user_name = 'johnny doe'
  	history.data_changes = changes
  end
end
