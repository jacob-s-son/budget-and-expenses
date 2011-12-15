class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    respond_to do |format|
      format.xml  { render :xml => XmlExporter.to_xml(corresponding_model_name) }
    end
  end
  
  private
    def corresponding_model_name
      self.class_name.sub(/Controller/, "").singularize
    end
end
