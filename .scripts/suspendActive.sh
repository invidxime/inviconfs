#!/bin/bash


title=$(hyprctl activewindow | grep title:)
title=${title/title:/}

pid=$(hyprctl activewindow | grep pid:)
pid=${pid/pid:/}
suspended=$(ps -o s= -p $pid)

if [[ "$suspended" != "T" ]] 
then	
	kill -STOP $pid
	notify-send "$title" "has been suspended"
else
	kill -CONT $pid
	notify-send "$title" "has been resumed" 

fi
