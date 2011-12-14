class ActiveRecord::Base
  
  def self.namespace_ref
    self.to_s.underscore.downcase.to_sym
  end
  
  def self.class_namespace
    OBJECT_URLS[namespace_ref].to_s
  end
  
  def object_path
    "#{self.class.class_namespace}/#{id}"
  end
end