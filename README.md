# Asn1Example

`MyModule` ASN.1 모듈을 Elixir에서 실행해보기 위한 샘플 프로젝트입니다.

## Run

Erlang/OTP와 Elixir가 미리 설치되어 있어야 합니다.

```bash
$ cd asn1/
$ ./compile_asn1.sh
```

`MyModule.hrl`과 `MyModule.erl`이 생성되었는지 확인한 다음, `cd ..` 명령으로 프로젝틀 홈 디렉토리로 이동합니다.

그 후 elixir 프로젝트를 컴파일하고 실행합니다.

```bash
$ mix compile
$ iex -S mix
```

`iex` 내부에서 다음과 같이 실행합니다.

```elixir
iex> Asn1Example.encode_my_sequence(1, "John Doe")
[1, 1, 8, 74, 111, 104, 110, 32, 68, 111, 101]
```