<div align="center">
    <h2>Installation Guide</h2>
</div>

The installation is rather simple, the basic components you need are:

- Docker - 29.1.3
- Docker Compose - 2.40.3
- Git - 2.55.x

> [!TIP]
> Those were the versions I tested on my local machine, not sure if other versions work, probably they do.

### Step by Step

- First, clone this repository and enter the repository's folder.

```bash
git clone https://github.com/gabrielEFagundes/fcc-docker .

cd fcc-docker
```

- You need to create a `.env` file inside the repository's folder, use the [.env.example](/.env.example) as a base to create your `.env`.

```js
NVIDIA_NIM_API_KEY=your_api_key
```

- Then simply build the `docker-compose` file.

```bash
docker compose up -d --build
```

- After that, everything should be running correctly, just run fcc-claude inside the fcc-claude service.

```bash
docker compose exec -it fcc-claude fcc-claude
```

- Check if everything is working by sending a message to claude code!

![alt text](/assets/claude-code-terminal.png)

<div align="center"><sub>Figure 1: Don't mind my weird unicodes, my windows terminal is odd.</sub></div>

### Troubleshooting

Open an issue relating your problem and a step-by-step on how to replicate it, I'll add the solution as a comment for you and also in here!
