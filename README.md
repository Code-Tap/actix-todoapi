##Todo API

1st Job, rename the dotenv file
```bash
mv dotenv .env
```
Build the release api
```bash
cargo check && cargo build --release
```
Finally bring up the API
```bash
docker-compose up -d
```

Future update:
Move the build process into a disposible docker layer reducing the whole project lauch into a single docker-compose command.

Test the api:
```bash
curl http://localhost:8080/
```
```bash
curl http://localhost:8080/todos/1/items
```
If you do this twice, you will see that it succeeds first time, and fails the 2nd as it is already present.
```bash
curl -X PUT http://localhost:8080/todos/2/3
```