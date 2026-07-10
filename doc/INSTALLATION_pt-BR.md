<div align="center">
    <h2>Guia de Instalação</h2>
</div>

A instalação é bem simples. Os componentes básicos necessários são:

* Docker - 29.1.3
* Docker Compose - 2.40.3
* Git - 2.55.x

> [!TIP]
> Essas foram as versões que testei na minha máquina local. Não tenho certeza se outras versões funcionam, mas provavelmente sim.

### Passo a passo

* Primeiro, clone este repositório e entre na pasta do projeto.

```bash
git clone https://github.com/gabrielEFagundes/fcc-docker .

cd fcc-docker
```

* Crie um arquivo `.env` na raiz do repositório usando o arquivo `.env.example` como base.

```js
NVIDIA_NIM_API_KEY=sua_chave_de_api
```

* Em seguida, basta construir e iniciar os serviços definidos no `docker-compose`.

```bash
docker compose up -d --build
```

* Depois disso, tudo deverá estar funcionando corretamente. Basta executar o `fcc-claude` dentro do serviço `fcc-claude`.

```bash
docker compose exec -it fcc-claude fcc-claude
```

* Verifique se tudo está funcionando enviando uma mensagem para o Claude Code!

![alt text](/assets/claude-code-terminal.png) <sub>Ignore os caracteres estranhos; o meu Windows Terminal está com um problema de codificação.</sub>

### Solução de problemas

Caso encontre algum problema, abra uma issue descrevendo o erro e inclua um passo a passo para reproduzi-lo. Vou responder com a solução nos comentários da issue e também adicioná-la a esta seção da documentação.
