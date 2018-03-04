package Api::App::Controller::Bar;
use Moose;
use 5.16.0;
use Carp;

with 'Api::App::Controller';

sub GET_index {
    my $self = shift;
    my $env = shift;

    return [200, ['Content-Type' => 'text/plain'], ['Bar:'.$self->model->freeze]];
}

__PACKAGE__->meta->make_immutable;

1;
