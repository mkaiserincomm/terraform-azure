## Providers

| Name | Version |
|------|---------|
| azurerm.azurerm\_vs | >=1.38.0 >=1.38.0 |
| null | n/a |
| azurerm | >=1.38.0 >=1.38.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| location | Identity: The location where resources will be created | `string` | `"west2us"` | no |
| cluster-name | Identity: The domain name for the cluster (in front of the cluster-base-domain). | `string` | `"redisentpoc"` | no |
| cluster-base-domain | Identity: A base domain name you own. Helpful if it's managed by a zone file in Azure. | `string` | `"azure.redis.life"` | no |
| cluster-base-resource-group | Identity: The resource group that contains the zone file for the cluster-base-domain. | `any` | n/a | yes |
| cluster-resource-group | Identity: Resource group for the cluster. | `any` | n/a | yes |
| av\_zone | Network: A list of availability zones to use. Make sure they're valid for this location. | `list` | <pre>[<br>  "1",<br>  "2"<br>]</pre> | no |
| net-cidr | Network: The CIDR blocks to be used in the network | `list` | <pre>[<br>  "10.0.1.0/24"<br>]</pre> | no |
| subnet-count | Networking: The number of subnets to spin up | `number` | `1` | no |
| net-name | Network: The name to be associated with the network | `string` | `"redisentpoc"` | no |
| username | Demo: The username to use for the cluster adminstrator | `any` | n/a | yes |
| password | Demo: The password to use as the cluster administrator | `any` | n/a | yes |
| demodb-name | Demo: The name of a demo database to create after cluster setup. | `any` | n/a | yes |
| node-size | Provisioning: The Size of the VM to run for nodes. | `string` | `"Standard_DS_v2"` | no |
| node-publisher | Provisioning: The owner of the image | `string` | `"RedHat"` | no |
| node-offer | Provisioning: The type of the image | `string` | `"RHEL"` | no |
| node-sku | Provisioning: The SKU of the image | `string` | `"7-RAW"` | no |
| node-version | Provisioning: The version of the image | `string` | `"latest"` | no |
| ssh-user | Provisioning: The SSH user used to deploy software to the nodes | `string` | `"redislabs"` | no |
| ssh-key | Provisioning: The SSH public key path used to deploy software to the nodes | `string` | `"~/.ssh/id_rsa_azure.pub"` | no |
| ssh-allowip | Provisioning: IP Addresses from which to allow SSH traffic | `any` | n/a | yes |
| node-count | Provisioning: The number of nodes to spin up | `number` | `3` | no |
| re-download-url | Provisioning: The download link for the redis enterprise software | `any` | n/a | yes |
| cost\_center | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| business\_unit | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| owner | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| platform\_application | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| compliance\_data\_profile | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| data\_sovereignty\_location | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| environment | Tag: Required by InComm Cloud Governance | `string` | n/a | yes |
| client-count | n/a | `string` | `2` | no |

## Outputs

| Name | Description |
|------|-------------|
| node-ssh | n/a |
| ui-links | n/a |
| network\_id | n/a |
| public-ip | n/a |

