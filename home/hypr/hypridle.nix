{
    services.hypridle = {
	enable = true;
	settings = {
	    general = {
		ignore_dbus_inhibit = false;
		lock_cmd = "hyprlock & sleep 0.5 && systemctl suspend";
	    };

	    listener = [
	    {
		timeout = 300;
		on-timeout = "hyprlock & sleep 0.5 && systemctl suspend";
	    }
	    ];
	};
    };
}
