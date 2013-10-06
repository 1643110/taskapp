class Task < ActiveRecord::Base
  belongs_to :project
  validates :title ,presence: { message: "必須入力項目！" }
end
