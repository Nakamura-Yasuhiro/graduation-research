# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( top.scss )
Rails.application.config.assets.precompile += %w( top.js )
Rails.application.config.assets.precompile += %w( introduction.scss )
Rails.application.config.assets.precompile += %w( introduction.js )
Rails.application.config.assets.precompile += %w( posts.scss )
Rails.application.config.assets.precompile += %w( posts.js )
Rails.application.config.assets.precompile += %w( service.scss )
Rails.application.config.assets.precompile += %w( service.js )
Rails.application.config.assets.precompile += %w( plan.scss )
Rails.application.config.assets.precompile += %w( plan.js )
Rails.application.config.assets.precompile += %w( users.scss )
Rails.application.config.assets.precompile += %w( users.js )
Rails.application.config.assets.precompile += %w( name.scss )
Rails.application.config.assets.precompile += %w( name.js )
Rails.application.config.assets.precompile += %w( help.scss )
Rails.application.config.assets.precompile += %w( help.js )
Rails.application.config.assets.precompile += %w( movie.scss )
Rails.application.config.assets.precompile += %w( movie.js )
Rails.application.config.assets.precompile += %w( normalize.scss )



