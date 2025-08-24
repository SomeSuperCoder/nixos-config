{
    services.hypridle = {
	enable = true;
	settings = {
	    general = {
		ignore_dbus_inhibit = false;
		lock_cmd = "hyprlock & systemctl suspend";
	    };

	    listener = [
	    {
		timeout = 300;
		on-timeout = "hyprlock & systemctl suspend";
	    }
	    ];
	};
    };
}
