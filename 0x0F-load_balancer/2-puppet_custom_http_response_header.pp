#!/usr/bin/env bash
# configuration with puppet

exec {	'http header':
	command => 'sudo apt-get update -y;
	sudo apt-get install nginx' 
}
