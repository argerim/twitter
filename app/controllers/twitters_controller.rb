class TwittersController < ApplicationController
  respond_to :html

  def index
    #adiciona 5 random no banco
    get_twitter.each do |twitter|
      User.create(:screen_name => "#{twitter.user.screen_name}", :text => "#{twitter.text}")
    end
    @users = User.limit(5) #pega um limite de 5
  end
end

