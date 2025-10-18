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
      # "--dpi-desync=fake,fakedsplit --dpi-desync-ttl=11 --dpi-desync-split-pos=method+2 --dpi-desync-fake-http=0x00000000" # http shadcn
      # "--dpi-desync=fake --dpi-desync-ttl=6 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
      # "--dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
      "--dpi-desync=fake --dpi-desync-fooling=ts --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
      "--dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-http=0x00000000"
      "--dpi-desync=fake --dpi-desync-ttl=9 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid"
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1"
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1"
      "--dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=method+2"
      "--dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
    ];
    whitelist = [
      "youtube.com"
      "googlevideo.com"
      "ytimg.com"
      "youtu.be"
      "chess.com"
      "serveo.net"
      "search.nixos.org"
      "docs.telegram-mini-apps.com"
      "proxyorb.com"
      "ui.shadcn.com"
      "shadcn.com"
      "nixos.org"
    ];
  };
}
