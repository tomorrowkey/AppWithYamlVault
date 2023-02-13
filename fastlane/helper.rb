module Helper
  def project_root_path
    File.join(Dir.pwd, File.basename(Dir.pwd) == 'fastlane' ? '..' : '')
  end

  def yaml_vault
    @yaml_vault ||= YamlVault::Main.from_file(
      "#{project_root_path}/secrets.yml",
      [['$']],
      passphrase: ENV['YAML_VAULT_PASSPHRASE'],
    ).decrypt_hash
  end
end
include Helper
