resource "google_container_cluster" "default" {
    name = var.cluster_name
    location = var.cluster_location

    initial_node_count = 1

    remove_default_node_pool = true
    network = var.network
    subnetwork = var.subnetwork
    resource_labels = var.resource_labels
}