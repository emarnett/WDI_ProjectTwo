# CarrierWave.configure do |config|
#   config.storage = :file
#   config.root = Rails.root.join('tmp')
# end

# CarrierWave.configure do |config|

#   config.storage              = :grid_fs
#   config.grid_fs_access_url   = "/upload/grid"

# end

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider              => 'AWS',                        # required
#     :aws_access_key_id      => '',                        # required
#     :aws_secret_access_key  => '',                        # required
#     :region                => '',                  # optional, defaults to 'us-east-1'
#     # :host                  => 's3.example.com',            # optional, defaults to nil
#     # :endpoint              => 'https://s3.example.com:8080' # optional, defaults to nil
#   }
#   config.fog_directory  = "my-awesome-app-s3-directory-name"                    # required
#   config.fog_public    = true                                  # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end