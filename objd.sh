 #!/bin/sh
 cd $(dirname $0)
 ./buildroot/output/host/bin/aarch64-buildroot-linux-gnu-objdump -S buildroot/output/target/lib/modules/6.12.27/updates/aesdchar.ko > objd.log
 cd -
