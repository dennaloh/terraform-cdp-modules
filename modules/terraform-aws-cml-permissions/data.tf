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

data "aws_iam_role" "xaccount_role" {

  name = var.xaccount_role_name

  lifecycle {
    postcondition {
      condition     = provider::assert::regex(".*backup.amazonaws.com.*", self.assume_role_policy)
      error_message = "${var.xaccount_role_name} role must have AWS backup.amazonaws.com "
    }
  }
}

# HTTP get request to download policy documents
# ..CML Backup Policy
data "http" "cml_backup_policy_doc" {
  url = "https://docs.cloudera.com/machine-learning/cloud/cml-backup-policy.json"
}

# ..CML Restore Policy
data "http" "cml_restore_policy_doc" {
  url = "https://docs.cloudera.com/machine-learning/cloud/cml-restore-policy.json"
}
