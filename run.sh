#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)

puppet apply --modulepath $DIRECTORY/modules --templatedir $DIRECTORY/templates $DIRECTORY/manifests/site.pp --show_diff
