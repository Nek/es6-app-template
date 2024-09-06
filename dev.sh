#/bin/bash
caddy run --config  Caddyfile &
npx livereload html -d -e 'js,mjs,html,css,json,frag,vert,glsl,raw,bin' &
