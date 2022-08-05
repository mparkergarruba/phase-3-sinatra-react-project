class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
  end
  
  get "/sponsors" do
    Sponsor.all.to_json
  end

  get "/athletes" do
    Athlete.all.to_json
  end

  get "/deals" do 
    Deal.all.to_json(:include => [:athlete, :sponsor])
  end 

  post "/athletes" do
    Athlete.create(params).to_json
  end

  post "/deals" do
    Deal.create(params).to_json(:include => [:athlete, :sponsor])
  end

  patch "/deals/:id" do
    deal = Deal.find(params[:id])
    deal.update(params)
    deal.to_json(:include => [:athlete, :sponsor])
  end

  delete "/deals/:id" do
    deal = Deal.find(params[:id])
    deal.destroy
    deal.to_json
  end

end
