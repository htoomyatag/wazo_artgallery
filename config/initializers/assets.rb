# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
	Rails.application.config.assets.precompile += %w( jquery.js )
    Rails.application.config.assets.precompile += %w( superfish.js )
	Rails.application.config.assets.precompile += %w( jquery.flexslider-min.js )
	Rails.application.config.assets.precompile += %w( jquery.kwicks-1.5.1.js )
	Rails.application.config.assets.precompile += %w( jquery.easing.1.3.js )	  
	Rails.application.config.assets.precompile += %w( touchTouch.jquery.js )
 	Rails.application.config.assets.precompile += %w( bootstrap.js )
  	Rails.application.config.assets.precompile += %w(jquery.preloader.js )

	Rails.application.config.assets.precompile += %w( bootstrap.css )
	Rails.application.config.assets.precompile += %w( backend_style.css )


	  Rails.application.config.assets.precompile += %w( responsive.css)
	  Rails.application.config.assets.precompile += %w( style.css)
	  Rails.application.config.assets.precompile += %w( touchTouch.css)
	  Rails.application.config.assets.precompile += %w( kwicks-slider.css)
	  Rails.application.config.assets.precompile += %w( holder.js )
	  Rails.application.config.assets.precompile += %w( bootstrap-dropdown.js )
	  	  Rails.application.config.assets.precompile += %w( jquery_ujs.js )
