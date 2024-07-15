# Store paths example

Load a Docker image built with Nix no matter which system you're on:

```shell
system=$(nix eval --impure --expr 'builtins.currentSystem' | tr -d '"')
docker load < $(fh resolve "DeterminateSystems/store-paths/*#dockerImages.${system}.server")
```
