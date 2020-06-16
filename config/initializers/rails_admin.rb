RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  config.authorize_with do
    unless current_user.admin?
      flash[:alert] = 'Sorry, no admin access for you.'
      redirect_to main_app.root_path
    end
  end
  config.included_models = [ "User", "Event", "Post", "Position" ]
  config.model 'User' do
    import do
      mapping_key :race_number
      field :first_name
      field :last_name
      field :email
      field :race_number
      field :password
    end
  end
  config.model 'Position' do
    import do
      field :user
      field :event
      field :point
      field :place
      field :time
    end
  end
  config.model 'Event' do
    import do
      mapping_key :title
    end
  end
  config.actions do
    all
    import
  end
end