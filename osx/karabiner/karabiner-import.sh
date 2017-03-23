#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_controlV 1
/bin/echo -n .
$cli set option.emacsmode_controlY 1
/bin/echo -n .
$cli set option.emacsmode_ex_controlU 1
/bin/echo -n .
$cli set option.emacsmode_ex_controlW 1
/bin/echo -n .
$cli set option.emacsmode_optionBF 1
/bin/echo -n .
$cli set option.emacsmode_optionV 1
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
/bin/echo
