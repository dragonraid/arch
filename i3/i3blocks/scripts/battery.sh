#!/usr/bin/env bash

acpi_output=$(acpi -b | tr -d ',')

IFS=' ' read -r -a acpi_array <<< "$acpi_output"
icon=''
# if [[ "${acpi_array[2]}" == "Charging" ]]; then
#     icon=
# elif [[ "${acpi_array[4]}" == "discharging" ]]; then
#     icon=
# else 
#     icon=
# fi

echo ${acpi_array[3]} $icon
