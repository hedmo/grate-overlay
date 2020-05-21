# grate-overlay
Gentoo overlay for the grate-driver projects. Add the grate-overlay to layman and enjoy!

    layman -f -o https://raw.githubusercontent.com/grate-driver/grate-overlay/master/overlay.xml -a grate-overlay

The tegra mesa component now depends on nouveau for vdpau. Add `-vdpau` and `-video_cards_nouveau` to `/etc/portage/profile/use.mask`, otherwise portage will ignore them as they are masked by the default ARM profile.

A profile has been added for enlightenment. Users can activate it via eselect profile. However, due the reliance on portage "release's", and how they may be updated independently of this overlay, it is recommended to create a custom custom profile in /etc/portage/profile, including components from gentoo and this overlay. This is documented in `man 5 portage`.

GL support is lacking, so anything wayland will use the software render.
