class RedirectSpecController < ApplicationController

  def action_with_no_redirect
    render :text => "this is just here to keep this causing a failure"
  end
  
  def action_with_redirect_to_somewhere
    redirect_to :action => 'somewhere'
  end
  
  def somewhere
    render :text => "this is just here to keep this causing a failure"
  end
  
  def action_with_redirect_to_rspec_site
    redirect_to "http://rspec.rubyforge.org"
  end
end