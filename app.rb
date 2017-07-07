require 'sinatra'

get '/' do
  "hack your life!"
end


get '/likelion/:name' do
  a = params[:name].to_i
  "#{a ** 3}"
end


get '/view' do
  # html을 넣으려면 하드코딩으로 "" 사이에 넣으면 됨
  # "<!DOCTYPE HTML>"

  # html일 경우
  send_file "index.html"
end

get '/views' do
  erb :index
end
