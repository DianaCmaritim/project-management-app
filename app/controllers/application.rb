class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # defining a method to access all projects
  get '/projects' do
    projects = Project.all
    projects.to_json
  end

  # defining a method to access all members
  get '/members' do
    members = Member.all
    members.to_json
  end

  # defining a method to access all users
  get '/users' do
    users = User.all
    users.to_json
  end

  # defining a delete path for destroying individual projects
  delete '/projects/:id' do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end

  # defining a post path for adding a new project
  post '/projects' do
    project = Project.create(
      title: params[:title],
      goals: params[:goals],
      timeframe: params[:timeframe],
      status: params[:status],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    project.to_json
  end

  # defining an update path for updating the status of individual projects
  patch '/projects/:id' do
    project = Project.find(params[:id])
    project.update(
      status: params[:status]
    )
    project.to_json
  end

  # defining a delete path for destroying individual members
  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

  # defining a post path for adding a new member
  post '/members' do
    member = Member.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    member.to_json
  end

  # defining an update path for updating the email of individual members
  patch '/members/:id' do
    member = Member.find(params[:id])
    member.update(
      email: params[:email]
    )
    member.to_json
  end

  # defining a delete path for destroying individual users
  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  # defining a post path for adding a new user
  post '/users' do
    user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    user.to_json
  end

  # defining an update path for updating the password of individual users
  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      password: params[:password]
    )
    user.to_json
  end
end
