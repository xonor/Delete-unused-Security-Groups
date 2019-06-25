# Delete-unused-Security-Groups
How to delete unused/unassociated/unassigned Amazon Web Service (AWS) Security Groups using Bash and the AWS CLI.


This is notoriously difficult due to the nature of a one-to-many relationship of Security Groups.

It's a bit of a hack but you could simply run a for-loop to list all Security Groups and delete each one.
This will delete all Security Groups that are not in use and throw an error for the ones that can't be deleted.

Some errors to expect:
- DependencyViolation (The Security Group is associated with a resource, can not be deleted)
- CannotDelete (The Security Group is the default for a VPC, can not be deleted)
