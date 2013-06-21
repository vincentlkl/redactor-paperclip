class RedactorRails::BaseController < ApplicationController

  def index
    redactor_authentification!
    @redactors = controller_model.where(
        controller_model.new.respond_to?(RedactorRails.devise_user) ? { RedactorRails.devise_user_key => redactor_current_user.id } : { }
    )
    render :json => @redactors.to_json
  end

  def create
    redactor_authentification!
    @redactor = controller_model.new

    file = params[:file]
    @redactor.data = RedactorRails::Http.normalize_param(file, request)
    if @redactor.respond_to?(RedactorRails.devise_user)
      @redactor.send("#{RedactorRails.devise_user}=", redactor_current_user)
      @redactor.assetable = redactor_current_user
    end

    if @redactor.save
      render :text => { :filelink => @redactor.url }.to_json
    else
      render :nothing => true
    end
  end

  protected

  def controller_model
    self.class.to_s.sub('Controller', '').singularize.constantize
  end

  def redactor_authentification!
    redactor_authenticate_user! if controller_model.new.respond_to?(RedactorRails.devise_user)
  end
end
