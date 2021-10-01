# HubUSPInovação - utils

This repo aims to provide useful tools that support the operation of HubUSPInovação

The script `hubusp_up.sh` puts all parts running, which comprehends:
- the backend server
- the frontend server
- the reverse-proxy that acts as API Gateway

You can execute `sudo bash hubusp_up.sh`.

> note: it is necessary to run as root in order to have access to HTTPS settings used by the reverse-proxy
