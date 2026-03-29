# Homebrew Tap for ARO

Official Homebrew tap for the [ARO programming language](https://github.com/KrisSimon/aro).

## What is ARO?

ARO is a domain-specific language for expressing business logic using natural language syntax. Write features as Action-Result-Object statements that are both human-readable and executable.

## Installation

```bash
brew tap arolang/aro
brew install aro
```

Verify installation:

```bash
aro --version
```

## Quick Start

Create a simple ARO program:

```bash
echo '(Application-Start: Hello World) {
    <Log> "Hello from ARO!" to the <console>.
    <Return> an <OK: status> for the <application>.
}' > hello.aro
```

Run it:

```bash
aro run hello.aro
```

## Formulae

- **aro** - ARO language compiler and runtime (v0.1.0-alpha.2)

## Requirements

- macOS (Apple Silicon / ARM64)
- Homebrew 3.0+

## Documentation

- [ARO Language Guide](https://github.com/KrisSimon/aro)
- [Examples](https://github.com/KrisSimon/aro/tree/main/Examples)
- [Language Specification](https://github.com/KrisSimon/aro/tree/main/Proposals)

## Updating

To update to the latest version:

```bash
brew update
brew upgrade aro
```

## Support

- [GitHub Issues](https://github.com/KrisSimon/aro/issues)
- [Discussions](https://github.com/KrisSimon/aro/discussions)

## License

The ARO formula is licensed under MIT. See the [ARO project](https://github.com/KrisSimon/aro) for language license details.
