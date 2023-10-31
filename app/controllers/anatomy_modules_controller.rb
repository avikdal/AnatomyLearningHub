class AnatomyModulesController < ApplicationController
    before_action :set_anatomy_module, only: [:show]

    # GET /anatomy_modules
    def index
      anatomy_modules = AnatomyModule.all
      render json: anatomy_modules
    end
  
    # GET /anatomy_modules/1
    def show
      render json: @anatomy_module
    end
  
    private
  
    def set_anatomy_module
      @anatomy_module = AnatomyModule.find(params[:id])
    end
    
end
