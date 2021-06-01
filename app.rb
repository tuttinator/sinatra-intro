require 'sinatra'

get '/' do
  'Hello world!'
end

get '/now' do
  code = "<%= Time.now %>"
  erb code
end

get '/template' do
  erb :index, locals: { foo: 'bar' }
end


post '/oauth' do
  # params = { key: 'value' }
  # params[:key]

  #request.body.rewind  # in case someone already read it
  data = JSON.parse request.body.read

  "Hello #{data['name']}!"
end

