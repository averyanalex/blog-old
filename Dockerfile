FROM klakegg/hugo:ext-onbuild AS hugo

FROM nginx:stable
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=hugo /target /usr/share/nginx/html
