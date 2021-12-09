# GitHub Actions Exercise

An exercise for 'DevOps and SRE' on HTW Berlin

## Build the Container

```bash
docker build . -t my-app
```

## Run the Container

```bash
docker run -p 8080:8080 my-app
```

## Execute Tests

```bash
docker run --rm -v "$PWD":/usr/src/my-app -w /usr/src/my-app golang:1.13 go test -v
```

![fancyimage](https://user-images.githubusercontent.com/47228718/141508322-601c96f7-6623-4c0b-a184-2156ded92b77.png)
