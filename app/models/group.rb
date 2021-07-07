class Group < ApplicationRecord
    has_many :group_users,dependent: :destroy
    #groupはたくさんのユーザーを持つそれは、groupusersを通じて参照できる？ってこと？
    has_many :users,through: :group_users,dependent: :destroy
    validates :name, presence: true, uniqueness: true
end
