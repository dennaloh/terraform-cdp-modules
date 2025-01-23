# Copyright 2025 Cloudera, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provider "aws" {
  region = var.aws_region
}

module "ex01_network_vpc" {
  source = "../.."

  vpc_name = "${var.env_prefix}-network-vpc"
  vpc_cidr = var.vpc_cidr

  subnet_name_prefix      = var.env_prefix
  nat_gateway_name_prefix = var.env_prefix
  route_table_name_prefix = var.env_prefix

  tags = var.env_tags

}
