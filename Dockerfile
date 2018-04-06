FROM swiftdocker/swift
ADD . /SwiftyServer
WORKDIR /SwiftyServer
RUN swift build --configuration release
EXPOSE 80
ENTRYPOINT [".build/release/SwiftyServer"]