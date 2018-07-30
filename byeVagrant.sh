#run this in the terminal in paw2paw dir by running bash byeVagrant.sh
bundle install;
rails webpacker:install;
rails webpacker:install:react;
rails db:migrate;
rails db:seed;