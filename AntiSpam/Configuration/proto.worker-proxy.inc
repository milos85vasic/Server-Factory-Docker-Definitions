bind_socket = "*:{{SERVICE.ANTI_SPAM.PORTS.PROXY}}";
milter = yes;
timeout = 120s;
upstream "scan" {
  default = yes;
  self_scan = yes;
}