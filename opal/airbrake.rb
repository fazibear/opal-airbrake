require 'vendor/airbrake'

class Airbrake
  include Native

  def initialize(options)
    options[:projectId] ||= options.delete(:project_id)
    options[:projectKey] ||= options.delete(:project_key)
    super `new window.airbrakeJs.Client(#{options.to_n})`
  end
end
