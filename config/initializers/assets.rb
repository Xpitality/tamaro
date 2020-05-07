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

# Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)$/
# Rails.application.config.assets.precompile << %r{material-design-icons-iconfont/dist/fonts/[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$}
Rails.application.config.assets.precompile << ["material-design-icons-iconfont/dist/fonts/*.svg", "material-design-icons-iconfont/dist/fonts/*.eot", "material-design-icons-iconfont/dist/fonts/*.woff", "material-design-icons-iconfont/dist/fonts/*.ttf"]