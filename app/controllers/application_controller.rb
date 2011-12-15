class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    p corresponding_model_name
    respond_to do |format|
      format.xml  { render :xml => XmlExporter.to_xml( Kernel.const_get(corresponding_model_name) ) }
    end
  end
  
  private
    def corresponding_model_name
      self.class.to_s.sub(/Controller/, "").singularize
    end
end
