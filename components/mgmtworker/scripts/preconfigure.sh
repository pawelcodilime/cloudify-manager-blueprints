#!/bin/bash -e
. $(ctx download-resource "components/utils")

ctx source instance runtime-properties rest_protocol $(ctx target instance runtime-properties rest_protocol)