# Dotfiles 🌙

> Repositório pessoal de configurações gerenciado com [GNU Stow](https://www.gnu.org/software/stow/)

## 📖 Sobre

Este repositório contém meus **dotfiles** — arquivos de configuração que personalizam meu ambiente de desenvolvimento e uso diário.  
O gerenciamento é feito com **GNU Stow**, permitindo organizar e aplicar configurações de forma modular e simples.

## ⚡ Estrutura

```bash
dotfiles/
├── ghostty/        # Configurações do Ghostty (Teminal)
├── git/            # Configurações do Git (Versionamento de codigo)
├── helix/          # Configurações do Helix (Editor de codigo via terminal)
├── niri/           # Configurações do Niri (Gerenciador de Janelas)
├── ruff/           # Configurações do Ruff (Formatador Python)
├── starship/       # Configurações do Startship (Prompt do terminal)
├── yazi/           # Configurações do Yazi (Explorador de arquivos via terminal)
├── zsh/            # Configurações do ZSH (Shell)
└── README.md
```

Cada diretório representa um conjunto de configurações que pode ser "stowado" individualmente.

## 🚀 Instalação

Clone o repositório para o seu `$HOME` (ou outro diretório de preferência):

```bash
git clone https://github.com/pedro-meinen/dotfiles.git
cd dotfiles
```

## 🛠️ Uso com GNU Stow

Para aplicar as configurações, use o comando:

```bash
stow zsh
stow helix
stow ghostty
stow git
```

Isso criará links simbólicos dos arquivos dentro de `~/dotfiles` para o seu `$HOME`.

### 🔄 Remover configurações

Se quiser desfazer:
```bash
stow -D zsh
```

## 📦 Dependências
- [GNU Stow](https://www.gnu.org/software/stow/)  
- Ferramentas que você utiliza (ex.: `zsh`, `helix`, `git`, etc.)
