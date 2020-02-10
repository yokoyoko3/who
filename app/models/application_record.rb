class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # include Kaminari::PageScopeMethods
  # included do
  #   scope :paginate, ->(params) { page(params[:page]).per(5) }
  # end
end
