App with yaml_vault
===

This is a sample android project to store app secrets in a file (secrets.yml) with encrypted by [yaml_vault](https://github.com/joker1007/yaml_vault).

# Edit secrets

Set passphrase to env 

Run following command.
`YAML_VAULT_PASSPHRASE` is the passphrase for decrypt secrets.

```sh
YAML_VAULT_PASSPHRASE=hoge bundle exec fastlane android edit-secrets
```

default editor vim will be launched and you can edit secrets.
Secrets is saved when you exit vim.

_If you loved to use VSCode, use following command._

```sh
EDITOR="code --wait" YAML_VAULT_PASSPHRASE=hoge bundle exec fastlane android edit-secrets
```

VSCode will be launched and you can edit secrets.
Secrets is saved when you close the editor tab

# Using secrets

Run following command to bundle android app.
Singing key is decrypted using yaml_vault and placed file at appropriate location.

```sh
YAML_VAULT_PASSPHRASE=hoge bundle exec fastlane android build-release
```

# License

```
Copyright 2023 tomorrowkey

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
