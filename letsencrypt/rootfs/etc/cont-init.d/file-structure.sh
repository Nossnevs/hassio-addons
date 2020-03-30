#!/usr/bin/with-contenv bashio
# ==============================================================================
# Init folder & structures
# ==============================================================================
mkdir -p /data/workdir
mkdir -p /data/letsencrypt

# Setup Let's encrypt config
echo -e "dns_cloudxns_api_key = $(bashio::config 'dns.cloudxns_api_key')\n" \
      "dns_cloudxns_secret_key = $(bashio::config 'dns.cloudxns_secret_key')\n" \
      "dns_digitalocean_token = $(bashio::config 'dns.digitalocean_token')\n" \
      "dns_dnsimple_token = $(bashio::config 'dns.dnsimple_token')\n" \
      "dns_dnsmadeeasy_api_key = $(bashio::config 'dns.dnsmadeeasy_api_key')\n" \
      "dns_dnsmadeeasy_secret_key = $(bashio::config 'dns.dnsmadeeasy_secret_key')\n" \
      "dns_gehirn_api_token = $(bashio::config 'dns.gehirn_api_token')\n" \
      "dns_gehirn_api_secret = $(bashio::config 'dns.gehirn_api_secret')\n" \
      "dns_linode_key = $(bashio::config 'dns.linode_key')\n" \
      "dns_linode_version = $(bashio::config 'dns.linode_version')\n" \
      "dns_luadns_email = $(bashio::config 'dns.luadns_email')\n" \
      "dns_luadns_token = $(bashio::config 'dns.luadns_token')\n" \
      "certbot_dns_netcup:dns_netcup_customer_id = $(bashio::config 'dns.netcup_customer_id')\n" \
      "certbot_dns_netcup:dns_netcup_api_key = $(bashio::config 'dns.netcup_api_key')\n" \
      "certbot_dns_netcup:dns_netcup_api_password = $(bashio::config 'dns.netcup_api_password')\n" \
      "dns_nsone_api_key = $(bashio::config 'dns.nsone_api_key')\n" \
      "dns_ovh_endpoint = $(bashio::config 'dns.ovh_endpoint')\n" \
      "dns_ovh_application_key = $(bashio::config 'dns.ovh_application_key')\n" \
      "dns_ovh_application_secret = $(bashio::config 'dns.ovh_application_secret')\n" \
      "dns_ovh_consumer_key = $(bashio::config 'dns.ovh_consumer_key')\n" \
      "dns_rfc2136_server = $(bashio::config 'dns.rfc2136_server')\n" \
      "dns_rfc2136_port = $(bashio::config 'dns.rfc2136_port')\n" \
      "dns_rfc2136_name = $(bashio::config 'dns.rfc2136_name')\n" \
      "dns_rfc2136_secret = $(bashio::config 'dns.rfc2136_secret')\n" \
      "dns_rfc2136_algorithm = $(bashio::config 'dns.rfc2136_algorithm')\n" \
      "aws_access_key_id = $(bashio::config 'dns.aws_access_key_id')\n" \
      "aws_secret_access_key = $(bashio::config 'dns.aws_secret_access_key')\n" \
      "dns_sakuracloud_api_token = $(bashio::config 'dns.sakuracloud_api_token')\n" \
      "dns_sakuracloud_api_secret = $(bashio::config 'dns.sakuracloud_api_secret')" > /data/dnsapikey

chmod 600 /data/dnsapikey