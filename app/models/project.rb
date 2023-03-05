class Project < ActiveRecord::Base

    #defining project relationships with other classes
    has_many :members
    has_many :users, through: :members

    attribute :timestamps, :datetime

end