{
  # Make YouTube works in Russia
  services.zapret = {
    enable = true;
    params = [
      "--dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1"
      # "--dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap"
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
