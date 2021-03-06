
requires 'Config::ENV', 0.12;
requires 'List::MoreUtils';
requires 'Module::Functions';
requires 'Path::Class';
requires 'RRDTool::Rawish', 0.032;
requires 'Scalar::Util';
requires 'Scope::Container::DBI', 0.09;
requires 'Try::Tiny';

# Web
requires 'Amon2';
requires 'Plack';
requires 'Plack::Middleware::ReverseProxy', 0.09;
requires 'Plack::Middleware::Log::Minimal';
requires 'Plack::Middleware::AxsLog';
requires 'Starlet', 0.19;

# Worker
requires 'DBI', 1.627;
requires 'Exporter::Lite';
requires 'JSON::XS';
requires 'LWP::UserAgent', 6.05;
requires 'Module::Load';
requires 'Net::SNMP', '6.0.1';
requires 'Net::Telnet';
requires 'Qudo', 0.0213;
requires 'TheSchwartz', 1.10;
requires 'TheSchwartz::Simple', 0.05;
requires 'Time::HiRes';

on 'test' => sub {
    requires 'Test::More', 0.98;
    requires 'Test::Fatal';
    requires 'Test::Mock::Guard';
    requires 'Test::Mock::LWP::Conditional';
    requires 'Test::mysqld', 0.17;
    requires 'TheSchwartz::Simple';
};

on 'configure' => sub {
};

on 'develop' => sub {
    # Profiler
    recommends 'Devel::KYTProf';
};
