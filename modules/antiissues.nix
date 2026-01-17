{pkgs, ...}: {
  # Fix for systemd-sleep freezing user sessions (can cause Waybar/UI freezes)
  systemd.services.systemd-suspend.environment.SYSTEMD_SLEEP_FREEZE_USER_SESSIONS = "false";

  # Automatically reload touchpad module on resume
  powerManagement.resumeCommands = ''
    echo "$(date): Reloading input modules on resume" >> /tmp/resume-debug.log
    ${pkgs.kmod}/bin/modprobe -r psmouse
    ${pkgs.kmod}/bin/modprobe psmouse
  '';
}
