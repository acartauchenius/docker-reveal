## Synopsis
Lightweight dockerized reveal.js presentations based on Alpine.

## Prereqs

docker, docker-compose

## Usage

Clone this (adjust `REVEAL_VERSION` inside docker file if so inclined), edit `presentations/index.html` to your liking, put assets into `presentations/lib`.
Optionally, put your own css into `presentations/css`.

Then run:

```
docker-compose up -d --build
```

and point your browser to `http://yourhost:8000` to view your presentation. 

More on reveal.js [here](https://https://github.com/hakimel/reveal.js)
