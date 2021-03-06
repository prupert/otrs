# --
# Copyright (C) 2001-2018 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Ticket::CustomExample;

use strict;
use warnings;

our $ObjectManagerDisabled = 1;

# disable redefine warnings in this scope
{
    no warnings 'redefine';    ## no critic

    # as example redefine the TicketXXX() of Kernel::System::Ticket
    sub Kernel::System::Ticket::TicketXXX {
        my ( $Self, %Param ) = @_;

        # do some new stuff

        return 1;
    }

    # reset all warnings
}

1;
