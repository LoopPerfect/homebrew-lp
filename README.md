# homebrew-lp

A Homebrew tap for installing Buckaroo.

Cheers! 🍻

# To create a release Alias

```bash
mkdir -p Aliases
rm -f ./Aliases/buckaroo
ln -s ../buckaroo\@1.4.0.rb ./Aliases/buckaroo
```

# To get the hashes

```bash
wget https://github.com/LoopPerfect/buckaroo/releases/download/v3.0.2/buckaroo-macos
sha256sum ./buckaroo-macos
```

# To test before upload

```bash
brew install ./buckaroo\@1.5.0.rb
```
