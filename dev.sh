#/bin/bash
caddy run --adapter caddyfile --config  Caddyfile.dev &
npx livereload html -d -e 'js,mjs,html,css,json,frag,vert,glsl,raw,bin' &
