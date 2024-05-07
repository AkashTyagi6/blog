class Article < ActiveRecord::Base

    has_many :comments
    resources :articles do
      resources :comments
    end

    

end
