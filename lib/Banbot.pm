package Banbot;
use Moses;

use Module::Pluggable (
    search_path => ['Banbot::Plugin'],
    sub_name    => 'plugin_classes',
);

owner    'go|dfish!goldfish@Redbrick.dcu.ie';
nickname 'banbot';
server   'irc.redbrick.dcu.ie';
channels '#moses';

sub custom_plugins {
    return { 
        map { $_ => $_ } $_[0]->plugin_classes 
    }
}

no Moses;
1;
__END__
