class Kontena::Cli::CloudCommand < Kontena::Command

  subcommand 'organization', 'Organization specific commands', load_subcommand('kontena/plugin/cloud/organization_command')
  subcommand 'region', 'Region specific commands', load_subcommand('kontena/plugin/cloud/region_command')

  def execute
  end
end
