FROM node:12-alpine
LABEL maintainer="Gildas Cherruel <gildas@breizh.org>"
LABEL version="1.0.0"

RUN npm install -g terser \
    && npm cache clean --force

USER node

ENTRYPOINT [ "terser" ]
CMD [ "--compress", "--mangle", "toplevel" ]
