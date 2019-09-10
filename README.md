# redis-enterprise-azure-terraform

Public Azure Instance setup

Use this to quickly set up a Redis Enterprise environment on Microsoft Azure.

By default, this will set up a single 3, 5 or 7 node cluster with Redis-on-Flash enabled via a RAID-1 pair of SSD data disks. This cluster will have nodes in two Availability Zones, guaranteeing that all of your databases will survive a complete AZ failure.
You can also use this to set up two clusters in two separate Azure regions; these two clusters can then be connected as part of an Active-Active set for CRDB databases. Or, you can use them for Active-Passive failover using "replica-of".

## Step One: Prepare your inputs

Pick one of the example tfvars to use (small is... smaller, and perf-test is for running performance tests. Example is generically pretty good.)

```BASH
cp example.tfvars mysettings.tfvars
terraform init
```

Make sure to update the variables in mysettings.tfvars, especially `password` and `cluster-base-domain`. It's simplest if you have a spare domain name for demos, as this recipe will set up a complete zone file, but you can use a delegated subzone instead. If you host DNS for the base domain in Azure, specify the resource group that the zone file is in with `cluster-base-resource-group` and this will add A and NS records to that zone file (instead of setting up a complete zone).

Make sure that you're using an ssh key without a passphrase. (If necessary, create a new SSH key using `ssh-keygen` and change the `ssh-key` variable to match.)

## Step Two: Apply

```BASH
terraform apply --parallelism=20 -var-file="mysettings.tfvars"
```

Once the apply has finished, you might need to add NS records (either for the domain or delegated subzone) to your upstream DNS.

## Step Three: Log in

You can use the web address of any of the nodes (in the terraform output) to access the web interface. If you set the `demodb-name` variable, then you can try connecting to that database immediately:

```BASH
redis-cli -h "YOURDBADDRESS" -p PORTNUMBER -a PASSWORD
```