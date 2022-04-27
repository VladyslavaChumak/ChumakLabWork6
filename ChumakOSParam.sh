echo -n 'Введіть назву параметру: '
read par_name
case $par_name in
        MemFree)
                mem_free=$(grep MemFree /proc/meminfo)
                echo "$mem_free"
                echo 'MemFree - невикористаний обсяг пам`яті і доступний для негайного виділення процесам';;
        cpu_family)
                cpuFamily=$(grep family /proc/cpuinfo)
                echo "$cpuFamily"
                echo 'Cpu family - сімейство процесорів';;
        *)
                echo 'Такої команди не знайдено';;
esac