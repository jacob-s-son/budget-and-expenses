class ActiveRecord::Base
  
  def self.namespace_ref
    new.class.to_s.underscore.downcase.to_sym
  end
  
  def self.class_namespace
    OBJECT_URLS[self.namespace_ref].to_s
  end
  
  def object_path
    "#{self.class.class_namespace}/#{self.id}"
  end
end