#! /bin/bash

# This script was developed to simplify writing blogs

generateBlogFile() {
  fileLocation=blog/$1.md

  if [ "$2" = true ]; then
    fileLocation=blog/$1/index.md
  fi

  # TODO 拆解字符串

  cat >> $fileLocation <<EOF
---
slug: $1
title: 
authors: wisszeix
tags: []
---
EOF
}

current_date=$(date +%F)

read -p $'input blog title \n NOTE: Use symbol-splicing between words. e.g.: this-is-my-blog-name\n' title
blog_title=${current_date}-${title}

kinds=("simple" "complex")
# ps3 select tip
PS3="blog type: "
select kind in "${kinds[@]}"; do
  case $kind in
  "simple")
    echo "creating ${blog_title} blog"
    generateBlogFile $blog_title

    break
    ;;
  "complex")
    echo "creating blog/$blog_title directory with a index.md"
    mkdir "blog/${blog_title}"
    generateBlogFile "$blog_title" true
    break
    ;;
  *)
    echo "Wrong blog type ${REPLY}, please select again"
    ;;
  esac
done
echo "done! enjoy writing!"
