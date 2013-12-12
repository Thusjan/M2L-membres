require 'sinatra'
require 'sinatra/activerecord'
require 'haml'

set :database, 'sqlite3:///member.db'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

class Member < ActiveRecord::Base
end

get '/' do
  @title ="Accueil"
  haml :index, :layout_engine => :erb
end


get '/members' do
  @title = "foobar"
  @members = Member.all
  erb :members
end

get '/members/new' do
  erb :new_member
end

get '/members/:id' do
  @title = "foobar"
  @member = Member.find(params[:id])
  erb :member
end

get '/members.json' do
  @title = "foobar"
  erb :'members.json', layout: false
end

post '/members' do
  @member = Member.new

  @member.nom = params[:nom]
  @member.prenom = params[:prenom]
  @member.adresse = params[:adresse]
  @member.email = params[:email]
  @member.tel = params[:tel]

  @member.save

  erb :thanks
end

get '/members/destroy/:id' do
  @member = Member.find(params[:id])
  @member.destroy
  
  @members = Member.all
  haml :index
end
