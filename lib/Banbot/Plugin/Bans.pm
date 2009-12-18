package Banbot::Plugin::Bans;

use Moses::Plugin;
use Data::Dumper;

use namespace::autoclean;

sub S_bot_addressed {
    my ( $self, $irc, $nickstring, $channels, $message ) = @_;
    if ( $$message eq 'showbans' ) {
        warn 'showbans';
        warn Data::Dumper->Dumper( $self->irc->channel_ban_list($$channels->[0]) )
    }
    return PCI_EAT_PLUGIN;
}

sub S_chan_mode {
    my ( $self, $irc, @args ) = @_;
    warn 'mode change';
    warn Data::Dumper->Dumper( \@args );
    warn Data::Dumper->Dumper( $self->irc->channel_ban_list(${$args[1]}) );
    return PCI_EAT_PLUGIN;
}

1;
__END__
