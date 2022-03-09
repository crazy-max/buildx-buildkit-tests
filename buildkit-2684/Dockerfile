FROM baseapp AS build
RUN echo "foo is $FOO" > /foo
FROM busybox
COPY --from=build /foo /
