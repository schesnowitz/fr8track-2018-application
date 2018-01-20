
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( css/app.min.css )
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')


Rails.application.config.assets.precompile += %w( driver_profile_show.js )


