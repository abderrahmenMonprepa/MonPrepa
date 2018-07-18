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
Rails.application.config.assets.precompile += %w( popper.min.js bootstrap_elegent.js jquery.sparkline.min.js
 c3.min.js d3.min.js custom.js dashboard1.js jquery.toast.js morris.js perfect-scrollbar.jquery.min.js 

 jquery-2.2.4.min.js bootstrap.min.js wow.min.js waypoints.min.js owl.carousel.min.js 
 nivo-lightbox.min.js modernizr.custom.js jquery.validate.min.js jquery.counterup.min.js
 jquery.countdown.min.js jquery.ajaxchimp.min.js prepa_custom.js bootstrap-dialog.min.js
 jquery.easing.min.js register-init.js jquery.dataTables.min.js bootstrap_dialog4.js

 raphael-min.js sidebarmenu.js waves.js c3.min.css cryptocoins.css dashboard1.css flag-icon.min.css 
 font-awesome.min.css jquery.toast.css materialdesignicons.min.css morris.css simple-line-icons.css
 style.css themify-icons.css weather-icons.min.css

 bootstrap.min.css font-awesome.css themify-icons.css animate.css theme.css responsive.css
 owl.carousel.css nivo-lightbox.css owl.theme.css default.css bootstrap-dialog.min.css bootstrap_dialog4.css)
