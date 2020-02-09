FROM ubuntu:latest

LABEL com.github.actions.name="CppCheck"
LABEL com.github.actions.description="Lint your code with CppCheck"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="gray-dark"

LABEL repository="https://github.com/pouralijan/CppCheck"
LABEL maintainer="Hasasan Pouralijana <pouralijan@gmail.com>"

WORKDIR /
RUN apt-get update
RUN apt-get -qq -y install curl
RUN apt-get -y -qq install clang-tidy cmake jq clang cppcheck

ADD cpp_checker.sh /cpp_checker.sh
COPY . .
CMD ["bash", "/cpp_checker.sh"]
