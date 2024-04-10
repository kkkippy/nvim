# Configuração apropriada
Para que você consiga utilizar minha configuração do NeoVim, é importante configurá-lo apropriadamente, desde os
LSPs aos Plugins que nele utilizo.

## Instalação do LSP
Para realizar a instalação dos LSPs, no qual são responsáveis por permitir o autocompletar e análise do código à medida que se desenvolve, é necessário instalar o [gerenciador de plugins do Vim](https://github.com/junegunn/vim-plug).

Após isso, abra seu NeoVim (ignore os possíveis erros que aparecerão ao iniciá-lo) e use o comando `:PlugInstall`, isso fará com que todos os plugins que utilizo sejam instalados na sua máquina.

Depois de instalar os plugins, será necessário instalar os LSPs. Como estou utilizando Arch Linux e uso somente o C++ (por enquanto), então preciso instalar apenas o `clangd`, da seguinte forma:
```bash
sudo pacman -S clang
```

Além disso, pode ser que você precise do LSP da linguagem de programação Lua. Neste caso, você pode instalar utilizando:
```bash
sudo pacman -S lua-language-server
```

Eu pretendo adicionar mais LSPs e tornar minha configuração mais dinâmica e autônoma.

Você pode encontrar os plugins instalados em `~/.local/share/nvim/plugged`.


#### Tendo problemas na instalação dos LSPs?
> Caso você tenha problemas na instalação dos LSPs, procure soluções na internet referente ao seu terminal e/ou gerenciador de pacotes.

## E agora?

Após a conclusão de todos os passos, você estará pronto para utilizar seu NeoVim!

Só lembrando: Eu sou iniciante tanto no Linux quanto no NeoVim, ainda tenho muito a aprender. Minha configuração é limitada pois eu utilizo apenas o que é necessário, e eu rejeito o uso de distribuições do NeoVim, pois quero fazer a minha própria configuração.
