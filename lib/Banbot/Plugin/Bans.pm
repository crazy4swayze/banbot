package Banbot::Plugin::Bans;

use Moses::Plugin;
use Data::Dumper;

use namespace::autoclean;

sub S_chan_mode {
    my ( $self, $irc, @args ) = @_;
    warn Data::Dumper->Dumper( \@args );
    warn Data::Dumper->Dumper( $irc->channel_ban_list(${$args[1]}) )
}

1;
__END__
