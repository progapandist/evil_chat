class ComponentGenerator < Rails::Generators::Base
  argument :component, required: true, desc: "Component name, e.g: button"

  def create_view_file
    create_file "#{component_path}" + "_#{component_name}.html.erb"
  end

  def create_css_file
    create_file "#{component_path}" + "#{component_name}.css"
  end

  def create_js_file
    create_file "#{component_path}" + "#{component_name}.js"
  end

  protected

  def component_name
    component.underscore
  end

  def component_path
   "frontend/components/#{component_name}/"
  end
end
