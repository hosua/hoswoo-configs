#!/bin/bash
echo 'Updating sysclock'
sudo ntpd -qg
echo 'Updating hwclock to systime'
sudo hwclock --systohc
