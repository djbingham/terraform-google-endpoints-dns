/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project" {
  description = "Project to create the Cloud Endpoint service in. If not given, the default provider is used."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of the cloud endpoints service. This will create a DNS record in the form of: NAME.endpoints.PROJECT.cloud.goog"
  type        = string
}

variable "external_ip" {
  description = "External IP the endpoint will point to."
  type        = string
}

variable "ensure_undelete" {
  description = "Run gcloud command before creating cloud endpoint to force undelete of service endpoint. If endpoint has recently been deleted, it cannot be re-created without first undeleting it."
  type        = bool
  default     = true
}

variable "skip_gcloud_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud is already available outside the module)."
  type        = bool
  default     = true
}

variable "gcloud_cache_path" {
  description = "Path to the local folder to use as a cache for the gcloud module."
  type        = string
  default     = null
}

variable "use_tf_google_credentials_env_var" {
  description = "Use `GOOGLE_CREDENTIALS` environment variable to run `gcloud auth activate-service-account` with."
  type        = bool
  default     = false
}
