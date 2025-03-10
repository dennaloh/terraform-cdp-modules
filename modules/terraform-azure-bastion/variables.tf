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

variable "azure_region" {
  type        = string
  description = "Region for the bastion host"

}

variable "bastion_resourcegroup_name" {
  type        = string
  description = "Bastion resource group name"

}

variable "tags" {
  type        = map(any)
  description = "Tags applied to provised resources"

  default = null
}

variable "use_static_public_ip" {
  type        = bool
  description = "Whether to assign a static public IP to the bastion host"

  default = false
}

variable "bastion_public_ip_name" {
  type        = string
  description = "Name of Public IP of bastion host"

}

variable "bastion_host_name" {
  type        = string
  description = "Name of bastion host"

}

variable "bastion_ipconfig_name" {
  type        = string
  description = "Name of IP configuration of bastion host"

}

variable "bastion_subnet_id" {
  type        = string
  description = "Subnet ID of bastion"

}