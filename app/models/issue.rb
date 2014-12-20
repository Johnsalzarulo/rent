class Issue < ActiveRecord::Base
	belongs_to :property


  scope :new_task, -> { where status: 'New' }
  scope :in_progress, -> { where status: 'In Progress' }
  scope :complete, -> { where status: 'Complete' }
  scope :archive, -> { where status: 'Archive' }
  scope :not_complete, -> { where status: 'In Progress' }


end
