class User < ActiveRecord::Base

    #defining user relationships with other classes
    has_many :members
    has_many :projects, through: :members

end