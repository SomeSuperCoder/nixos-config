{
  networking = {
    nameservers = ["127.0.0.1" "::1"];
    networkmanager.dns = "none";
  };

  services.dnscrypt-proxy = {
    enable = true;
    settings = {
      ipv6_servers = true;
      server_names = ["scaleway-fr" "google" "yandex" "cloudflare"];
      listen_addresses = ["127.0.0.1:53" "[::1]:53"];
    };
  };

  # Make YouTube works in Russia
  services.zapret = {
    enable = true;
    params = [
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1"
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1"
      "--dpi-desync=fake --dpi-desync-ttl=9 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid"
    ];
    whitelist = [
      "youtube.com"
      "googlevideo.com"
      "ytimg.com"
      "youtu.be"
      "chess.com"
    ];
  };
}
