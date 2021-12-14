FROM rust:slim-buster AS junglee
ENV MDBOOK_VERSION ${MDBOOK_VERSION:-0.4.14}
ENV ARC="x86_64-unknown-linux-musl"

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    musl-tools
RUN rustup target add "${ARC}"
RUN cargo install mdbook --version "${MDBOOK_VERSION}" --target "${ARC}"

WORKDIR /workspaces/nick-notes-neatly

CMD [ "mdbook", "serve", "-p", "1010", "-n", "0.0.0.0" ]