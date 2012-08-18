package Fun;
use strict;
use warnings;
# ABSTRACT: simple function signatures

use Devel::CallParser;
use XSLoader;

XSLoader::load(
    __PACKAGE__,
    exists $Fun::{VERSION} ? ${ $Fun::{VERSION} } : (),
);

use Exporter 'import';
our @EXPORT = our @EXPORT_OK = ('fun');

=head1 SYNOPSIS

=head1 DESCRIPTION

=cut

=head1 EXPORTS

=head2 fun

=cut

sub fun {
    my ($name, $code) = @_;
    my $caller = caller;
    no strict 'refs';
    *{ $caller . '::' . $name } = $code;
}

=head1 BUGS

No known bugs.

Please report any bugs through RT: email
C<bug-fun at rt.cpan.org>, or browse to
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Fun>.

=head1 SEE ALSO

L<signatures>, etc...

=head1 SUPPORT

You can find this documentation for this module with the perldoc command.

    perldoc Fun

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Fun>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Fun>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fun>

=item * Search CPAN

L<http://search.cpan.org/dist/Fun>

=back

=cut

1;
