## Providers

| Name | Version |
|------|---------|
| http | n/a |
| azurerm | >=1.38.0 >=1.38.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| locations | Identity: A list of locations to install clusters and some details to facilitate the install | `any` | n/a | yes |
| av\_zone | Identity: A list of availability zones to use. Make sure they're valid for this location. | `any` | n/a | yes |
| cluster-base-resource-group | Identity: Resource group where the DNS lives. | `any` | n/a | yes |
| cluster-base-domain | Identity: A base domain name you own. Helpful if it's managed by a zone file in Azure. | `any` | n/a | yes |
| subnet-count | Network: The number of subnets to spin up | `number` | `2` | no |
| username | Demo: The username to use for the cluster adminstrator | `any` | n/a | yes |
| password | Demo: The password to use as the cluster administrator | `any` | n/a | yes |
| demodb-name | Demo: The name of a demo database to create after cluster setup. | `any` | n/a | yes |
| node-size | Provisioning: The Size of the VM to run for nodes. | `string` | `"Standard_DS4_v2"` | no |
| node-count | Provisioning: The number of nodes to spin up | `number` | `3` | no |
| ssh-user | Provisioning: The SSH user used to deploy software to the nodes | `string` | `"redislabs"` | no |
| ssh-key | Provisioning: The SSH public key path used to deploy software to the nodes | `string` | `"~/.ssh/id_rsa_azure.pub"` | no |
| re-download-url | Provisioning: The download link for the redis enterprise software | `any` | n/a | yes |
| cost\_center | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| business\_unit | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| owner | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| platform\_application | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| compliance\_data\_profile | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| data\_sovereignty\_location | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| environment | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| redis\_cluster-useast2 | n/a |
| redis\_cluster-uswest2 | n/a |

