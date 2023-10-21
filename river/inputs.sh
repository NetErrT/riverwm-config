#!/bin/bash

inputs=$(riverctl list-inputs)

for pointer in $(echo "$inputs" | grep -i pointer)
do
	riverctl input "$pointer" accel-profile none
	riverctl input "$pointer" left-handed enabled
done

for mouse in $(echo "$inputs" | grep -i mouse)
do
	riverctl input "$mouse" pointer-accel -0.2
done

for touchpad in $(echo "$inputs" | grep -i touchpad)
do
	riverctl input "$touchpad" drag enabled
	riverctl input "$touchpad" natural-scroll disabled
	riverctl input "$touchpad" tap enabled
	riverctl input "$touchpad" pointer-accel 0.1
done
