require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/reloader'
require 'bundler/setup'   #ensures you're loading 
require 'rack-flash'      #the gemfile defined

enable :sessions                  #version of rack-flash 
use Rack::Flash, :sweep => true


set :database, 'sqlite3:ormpractice.sqlite3'

configure(:development){set :database, "sqlite3:microblog.sqlite3"}
 
set :sessions, true

def current_user     
 if session[:user_id]       
 	@current_user = User.find(session[:user_id])     
 end   
end

get '/' do 
	erb :home
end

post '/sign-in' do 
	puts params.inspect 
	@user = User.where(username: params[:login][:username]).first  
	if @user && @user.password == params[:login][:password]     
		session[:user_id] = @user.id     
		flash[:notice] = "You've been signed in successfully."  
		redirect "/feeds"  
	else     
		flash[:alert] = "There was a problem signing you in."   
	end   
	redirect "/" 
end


get "/feed" do
	erb :feeds
end

get '/profile' do 
	erb :profile
end

