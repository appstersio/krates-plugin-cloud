class Kontena::Plugin::Cloud::Organization::ListCommand < Kontena::Command
  include Kontena::Cli::Common
  include Kontena::Cli::TableGenerator::Helper

  requires_current_account_token

  def execute
    organizations = cloud_client.get('/organizations')['data']
    print_table(organizations) do |row|
      row.merge!(row['attributes'])
      row['name'] = row['name']
      row['role'] = row['owner'] ? pastel.cyan('owner') : 'member'
    end
  end

  def fields
    {
      name: 'name',
      'your role': 'role'
    }
  end
end
