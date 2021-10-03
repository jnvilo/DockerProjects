#!/bin/bash
repos_base_dir="/data/repos/rocky/"

if [[ -d "$repos_base_dir" ]] ; then
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
  rsync -avzqlH --delete --delay-updates rsync://mirrors.vinters.com/rocky/8.4  "$repos_base_dir/"
fi



