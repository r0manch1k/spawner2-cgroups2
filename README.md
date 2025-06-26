# spawner2

Crossplatform sandbox for running user submitted code. Designed as a part of [CATS](https://github.com/klenin/cats-judge) contest control system.

### Building
```
git clone git@github.com:klenin/spawner2.git
cd spawner2
cargo build
```

### Installation on UNIX
if using cgroupsv1, default cgroupsv2:
In order for `spawner2` to work on UNIX you need to run `create_cgroups.sh`  every time after system startup.

### DOCKER run
in order to run via docker you need to execute cmd
```
docker run -it --privileged --cgroupns=host --rm -v <path to file in your system>:/mnt/spawner2 docker-sp ./target/release/sp <args> </mnt/spawner2/<your_app>>
```
you can change /mnt/spawner2 if you want to mount into another location in docker
### Tests
Use following command to run tests:
```
cargo test -- --test-threads=1
```
