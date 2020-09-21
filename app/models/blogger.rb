class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def number_of_likes
        self.posts.sum do |p|
            p.likes 
        end
    end
end
