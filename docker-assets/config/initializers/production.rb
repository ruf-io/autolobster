class << Rails.application
  def domain
    ENV["LOBSTER_HOSTNAME"]
  end

  def name
    ENV["LOBSTER_SITE_NAME"]
  end

  def allow_invitation_requests?
    true
  end

  def allow_new_users_to_invite?
    true
  end
  
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain
