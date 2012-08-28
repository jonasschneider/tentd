module TentServer
  module Model
    class Permission
      include DataMapper::Resource

      storage_names[:default] = "permissions"

      belongs_to :post, 'TentServer::Model::Post'
      belongs_to :profile_info, 'TentServer::Model::ProfileInfo'
      belongs_to :group, 'TentServer::Model::Group'
      belongs_to :following, 'TentServer::Model::Following'
      belongs_to :follower_view, 'TentServer::Model::Follower', :key => true
      belongs_to :follower_access, 'TentServer::Model::Follower', :key => true
      belongs_to :app_authorization, 'TentServer::Model::AppAuthorization'

      property :id, Serial
      property :visible, Boolean
    end
  end
end
