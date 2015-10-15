require 'sinatra'
require 'sinatra/reloader'
require 'rss'


get '/' do
  @rss = RSS::Parser.parse("http://blog.livedoor.jp/itsoku/index.rdf")
  erb :index
end
