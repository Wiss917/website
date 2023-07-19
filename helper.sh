#! /bin/bash

# This script was developed to simplify writing blogs

current_date=$(date +%F)

# $1 blog name $2 create dir instead of single file
createBlog() {
  fileLocation=blog/$current_date-$1.md

  if [ "$2" = true ]; then
    fileLocation=blog/$current_date-$1/index.md
  fi

  # split the title and convert to post title
  post_title=""

  # if bash version < 4, the convert code cannot work
  # IFS="-" read -ra words <<<"$1"
  # for i in "${words[@]}"; do
  #   post_title+=${(C)$i}
  # done

  cat >>$fileLocation <<EOF
---
slug: $1
title: $post_title
authors: wisszeix
tags: []
---
EOF
}

read -p $'input blog title \n NOTE: Use symbol-splicing between words. e.g.: this-is-my-blog-name\n' title

kinds=("simple" "complex")
# ps3 select tip
PS3="blog type: "
select kind in "${kinds[@]}"; do
  case $kind in
  "simple")
    echo creating $title blog
    createBlog $title

    break
    ;;
  "complex")
    echo creating blog/$title directory with a index.md
    mkdir blog/$current_date-$title
    createBlog $title true
    break
    ;;
  *)
    echo "Wrong blog type ${REPLY}, please select again"
    ;;
  esac
done
echo "done! enjoy writing!"
