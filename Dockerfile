FROM node:22-alpine
LABEL org.opencontainers.image.title="terser"
LABEL org.opencontainers.image.description="Javascript manger and compressor toolkit for ES6+"
LABEL org.opencontainers.image.authors="Gildas Cherruel <gildas.cherruel@genesys.com>"
LABEL org.opencontainers.image.version="1.0.2"
LABEL org.opencontainers.image.licenses="MIT"

RUN npm install -g terser \
    && npm cache clean --force

USER node

ENTRYPOINT [ "terser" ]
CMD [ "--compress", "--mangle", "toplevel" ]
