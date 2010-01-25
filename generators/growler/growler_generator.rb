class GrowlerGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file 'growler.css',
              'public/stylesheets/growler.css',
              :chmod => 0644,
              :collision => :force
      m.file 'growler.js',
              'public/javascripts/growler.js',
              :chmod => 0644,
              :collision => :force
      m.file 'growler_plugin.js',
              'public/javascripts/growler_plugin.js',
              :chmod => 0644,
              :collision => :force
    end
  end
end
