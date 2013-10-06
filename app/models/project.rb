class Project < ActiveRecord::Base
  has_many :tasks
  validates :title ,presence: { message: "必須入力項目！" }, length: {minimum: 3 ,message: "3文字以上入力しろ！"}
end
