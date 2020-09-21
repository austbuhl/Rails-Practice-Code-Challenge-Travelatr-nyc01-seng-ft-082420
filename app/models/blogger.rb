class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def number_of_likes
        self.posts.sum do |p|
            p.likes 
        end
    end

    def destination_count
        self.destinations.sort_by { |destination| destination.count }
    end

end
