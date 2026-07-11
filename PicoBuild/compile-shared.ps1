param(
    [Parameter(Mandatory)][string]$ContainerName,
    [string]$SharedFolder = "Common"
)

$existing = docker ps -a --filter "name=^/${ContainerName}$" --format "{{.Names}}"
if ($existing -ne $ContainerName) {
    Write-Host "Creating container '$ContainerName'..." -ForegroundColor Cyan
    docker run `
        --name $ContainerName `
        -v ${PWD}:/usr/src/project `
        -v ${PWD}/../${SharedFolder}:/usr/src/${SharedFolder} `
        -v ${PSScriptRoot}:/usr/src/PicoBuild `
        -v /usr/src/project/build `
        pico-compiler-image `
        /bin/bash /usr/src/PicoBuild/in-docker-compiler.sh
} else {
    docker start -a $ContainerName
}
