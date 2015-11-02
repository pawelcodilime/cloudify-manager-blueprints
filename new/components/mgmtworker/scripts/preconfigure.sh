#!/bin/bash -e
. $(ctx download-resource "components/utils")

ctx source instance runtime-properties rest_port $(ctx target instance runtime-properties rest_port)
ctx source instance runtime-properties rest_protocol $(ctx target instance runtime-properties rest_protocol)
ctx source instance runtime-properties security_enabled $(ctx target instance runtime-properties security_enabled)
ctx source instance runtime-properties ssl_enabled $(ctx target instance runtime-properties ssl_enabled)
ctx source instance runtime-properties cloudify_username $(ctx target instance runtime-properties cloudify_username)
ctx source instance runtime-properties cloudify_password $(ctx target instance runtime-properties cloudify_password)
ctx source instance runtime-properties verify_certificate $(ctx target instance runtime-properties verify_certificate)
ctx source instance runtime-properties local_manager_cert_path $(ctx target instance runtime-properties local_manager_cert_path)