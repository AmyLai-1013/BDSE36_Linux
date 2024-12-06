#!/bin/bash

foo() {
    echo "Inside foo function"
    echo "local_var is: $local_var"
    echo "global_var is: $global_var“

    local local_var="changed by foo"
    global_var="changed by foo"
    declare local_var2="declared inside foo function without -g"
    declare -g local_var3="declared inside foo function with -g“

    echo "local_var is: $local_var"
    echo "global_var is: $global_var"
    echo "local_var2 is: $local_var2"
    echo "local_var3 is: $local_var3"
    echo -e '\n'
}

bar() {
    echo "Inside bar function"
    echo "local_var is: $local_var"
    echo "global_var is: $global_var"
    echo "local_var2 is: $local_var2"
    echo "local_var3 is: $local_var3"
    echo -e '\n'
}

echo "Before calling foo and bar"
local_var="defined in parent"
global_var="defined in parent"
echo "local_var is: $local_var"
echo "global_var is: $global_var"
echo "local_var2 is: $local_var2"
echo "local_var3 is: $local_var3"
echo -e '\n'

echo "Calling bar first"
bar

echo "Calling foo"
foo

echo "Calling bar again"
bar

echo "After calling foo"
echo "local_var is: $local_var"
echo "global_var is: $global_var"
echo "local_var2 is: $local_var2"
echo "local_var3 is: $local_var3"
echo -e '\n'
