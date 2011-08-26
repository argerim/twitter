class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all

  def get_twitter
    @statuses = [] #loga no twitter
    TweetStream::Client.new('argerimsf','mamaeteamo').sample do |status, client|
      @statuses << status #adiona a lista
      client.stop if @statuses.size >= 10 #adiona 10
    end
    twitters = @statuses.sort_by { rand }[0..4] #faz um random em cima dos 10
  end
end

