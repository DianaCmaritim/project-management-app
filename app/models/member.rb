class Member < ActiveRecord::Base

    # defining member relationship with other classes
    belongs_to :users
    belongs_to :projects

    end