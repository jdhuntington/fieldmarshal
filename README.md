# fieldmarshal

### Functionality
Field Marshal is a simple tool to manage EC2 instances for a single
user or across a team.  The main functionality revolves around
shared naming for instances across a team so they can be accessed
by a common name.  

### Running
Simple running 'ec2' will list the options available.  E.g.

Usage: ec2 [command]
	Commands:
	  - list 	--> List instances
	  - name	--> Set a name or get the instance ID for a name
	  - ssh		--> Connect to the instance over ssh
	  - scp		--> Copy a file to or from the instance using scp
	  - http	--> Connect to port 80 on the instance in a web browser
	  - config	--> Edit existing or a create new configuration file

Setting up the tool for the first time involves installing the
amazon_sdb and right_aws gems, then running "ec2 config" to setup
the configuration file.