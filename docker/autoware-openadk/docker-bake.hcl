group "default" {
  targets = ["base", "devel", "prebuilt"]
}

// For docker/metadata-action
target "docker-metadata-action-base" {}
target "docker-metadata-action-devel" {}
target "docker-metadata-action-prebuilt" {}
target "docker-metadata-action-monolithic" {}
target "docker-metadata-action-main-perception" {}
target "docker-metadata-action-simulator" {}
target "docker-metadata-action-planning-control" {}

target "base" {
  inherits = ["docker-metadata-action-base"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "base"
}

target "devel" {
  inherits = ["docker-metadata-action-devel"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "devel"
}

target "prebuilt" {
  inherits = ["docker-metadata-action-prebuilt"]
  dockerfile = "docker/autoware-openadk/base/Dockerfile"
  target = "prebuilt"
}

target "runtime-monolithic" {
  inherits = ["docker-metadata-action-monolithic"]
  dockerfile = "docker/autoware-openadk/monolithic/Dockerfile"
  target = "monolithic"
}

target "runtime-main-perception" {
  inherits = ["docker-metadata-action-main-perception"]
  dockerfile = "docker/autoware-openadk/services/main-perception/Dockerfile"
  target = "main-perception"
}

target "runtime-planning-control" {
  inherits = ["docker-metadata-action-planning-control"]
  dockerfile = "docker/autoware-openadk/services/planning-control/Dockerfile"
  target = "planning-control"
}

target "simulator" {
  inherits = ["docker-metadata-action-planning-control"]
  dockerfile = "docker/autoware-openadk/services/planning-control/Dockerfile"
  target = "planning-control"
}