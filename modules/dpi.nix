{
  # Make YouTube works in Russia
  services.zapret = {
    enable = true;
    params = [
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1"
      "--dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1"
    ];
    whitelist = [
      "youtube.com"
      "googlevideo.com"
      "ytimg.com"
      "youtu.be"
      "chess.com"
      # "nixos.org"
      # "search.nixos.org"
    ];
  };
}
