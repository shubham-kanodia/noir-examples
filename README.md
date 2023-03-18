# Noir Example Circuits

This repo contains these sample [Noir](https://github.com/noir-lang) circuits to get you started:

1. [Factorisation](factorisation/src/main.nr)
2. [Verify element at an index](index_of/src/main.nr)
3. [Sudoku](sudoku/src/main.nr)

## Setup

1. Setup Nargo, the package manager for Noir. You can find the installation instructions [here](https://noir-lang.org/getting_started/nargo/installation.html)

## Noir Commands

1. Creating new project

```bash
nargo new PROJECT_NAME
```

2. Generating the Prover and Verifier toml files based on inputs

```bash
nargo check
```

3. Generate proof. The proof is stored in proofs/ directory

```bash
nargo prove p1
```

## Resources
1. [Noir Documentation](https://noir-lang.org/index.html)
2. [Curated list of Noir resources](https://github.com/noir-lang/awesome-noir)