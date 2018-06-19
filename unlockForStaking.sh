#!/bin/bash

# pivx-cli docs:
# https://pivx.freshdesk.com/support/solutions/articles/30000020865-debug-console-command-line

set -e

read -s -p 'wallet passphrase: ' passphrase 

timeout=999999999 #300 years
anonymizeonly=true
./pivx-cli walletpassphrase $passphrase $timeout $anonymizeonly 

exit 0
