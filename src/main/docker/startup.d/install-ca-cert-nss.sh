#!/bin/bash
#
# Copyright 2022-2023 Open Text.
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
#


MESOS_SANDBOX=${SSL_CA_CRT_DIR:-$MESOS_SANDBOX}

echo "Make /etc/pki/nssdb..."
mkdir /etc/pki/nssdb

echo "init nssdb..."
certutil -N --empty-password -d /etc/pki/nssdb/

echo "Contents of cert folder..."
ls -l $MESOS_SANDBOX/$SSL_CA_CRT

# echo "Adding CA cert into NSS database on openSUSE"
# certutil -A -n test-cert -t "u,u,u" -d /etc/pki/nssdb/ -i $MESOS_SANDBOX/$SSL_CA_CRT
