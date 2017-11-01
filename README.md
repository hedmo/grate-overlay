# grate-overlay
Gentoo overlay for the grate-driver projects. Add the grate-overlay to layman and enjoy!

    layman -f -o https://raw.githubusercontent.com/grate-driver/grate-overlay/master/overlay.xml -a grate-overlay

Add `-vdpau` to `/etc/portage/profile/use.mask`, otherwise portage will ignore vdpau useflag as it is masked by the default ARM profile.
