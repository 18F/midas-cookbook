default.midas.app_id = "midas"
default.midas.user = "midas"
default.midas.group = "midas"
default.midas.user_home = "/home/midas"
default.midas.deploy_dir = "/var/www/midas"
default.midas.git_repo = "https://github.com/18F/midas.git"
default.midas.git_branch = "deploy"  # create a branch on server with this name
default.midas.git_revision = "master" # branch, tag, sha to deploy
default.midas.nginx_conf_dir = "/etc/nginx/vhosts"
default.midas.nginx_default = "default.conf"
default.midas.nginx_conf_source = "tools/nginx/test-server.conf"
default.midas.app_host = "localhost:1337"
default.midas.environment = "production"
default.midas.system_email = "midas@midas.midas"

default.sails.postgresql_repo = "https://github.com/18F/sails-postgresql.git"
default.sails.postgresql_git_revision = "softdelete" # branch, tag, sha to deploy

default.midas.config_repo = nil
default.midas.config_revision = "master"
default.midas.config_name = "midas-config"
default.midas.config_dir = node.midas.user_home

default.midas.database.username = 'midas'
default.midas.database.password = 'midas'
default.midas.database.hostname = 'localhost'
default.midas.database.name = 'midas'

default.midas.email.username = ''
default.midas.email.password = ''
default.midas.email.hostname = 'smtp.mandrillapp.com'
default.midas.email.port = 587
default.midas.email.secure = false

default.midas.linkedin.client_id = 'NOTSET'
default.midas.linkedin.secret = 'NOTSET'

default.midas.myusa.client_id = 'NOTSET'
default.midas.myusa.secret = 'NOTSET'

# Self signed cert - not for production use
default.midas.ssl.cert = "-----BEGIN CERTIFICATE-----\nMIIEXjCCA0agAwIBAgIJAKTQjxIjgJchMA0GCSqGSIb3DQEBBQUAMHwxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJEQzETMBEGA1UEBxMKV2FzaGluZ3RvbjEoMCYGA1UE\nChMfR2VuZXJhbCBTZXJ2aWNlcyBBZG1pbmlzdHJhdGlvbjEMMAoGA1UECxMDMThG\nMRMwEQYDVQQDEwpjYXAuMThmLnVzMB4XDTE1MDExNzAwNTcxMFoXDTE2MDExNzAw\nNTcxMFowfDELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkRDMRMwEQYDVQQHEwpXYXNo\naW5ndG9uMSgwJgYDVQQKEx9HZW5lcmFsIFNlcnZpY2VzIEFkbWluaXN0cmF0aW9u\nMQwwCgYDVQQLEwMxOEYxEzARBgNVBAMTCmNhcC4xOGYudXMwggEiMA0GCSqGSIb3\nDQEBAQUAA4IBDwAwggEKAoIBAQC0Fkb9b9TmdZknjwOMnnLtFj1fHof16Gku0m/V\nBQHgtw2emnGbY+J2UhLBQIRsSN43QXawwUKh2LJVYiW9/TkHosZlG0hSsd+QIYAc\nc7V83OOycd0q9jecP2vkpi4X2Trx515/nixqWR+H/U5gdfgzaFVSSC2nx/2A3L5d\n4zChSa+gWFCXuwTfWQNHfqw3E6BXHzTfpn5yxOMKxH0ySjsPippoObmqB2WXHvBc\ndob1Ms8rvJ9BU6QqWy0F8ygRl2Hyvs2ztwtz1KT+Y0XXiAZU6w/+TJWotMtUPWWe\n3Ru8Svwy5owDjkNvss788knol49AdXat1k5hgdxCJOTdH7RbAgMBAAGjgeIwgd8w\nHQYDVR0OBBYEFN5MWrpnwJMVp8NLzjV5cbR/oMhJMIGvBgNVHSMEgacwgaSAFN5M\nWrpnwJMVp8NLzjV5cbR/oMhJoYGApH4wfDELMAkGA1UEBhMCVVMxCzAJBgNVBAgT\nAkRDMRMwEQYDVQQHEwpXYXNoaW5ndG9uMSgwJgYDVQQKEx9HZW5lcmFsIFNlcnZp\nY2VzIEFkbWluaXN0cmF0aW9uMQwwCgYDVQQLEwMxOEYxEzARBgNVBAMTCmNhcC4x\nOGYudXOCCQCk0I8SI4CXITAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IB\nAQB3tsLhnj9CgsypoWzs7Gthjs5nZTGB63XJeUbR7/BtSeHIXL3PrTr4dNs1RG44\nCrhnJwmDQBWzsDxc6Sqq6Kx9F/om0yEVB52mcA8Unz0/pJYaEODEAs0s+jHSMRQP\n5OclHxzYdlZV+IjKI+B4vnUlldPJQvH2fxUjD1PD2uFd0QKC/jczqVlR+WZwTF3d\n/5qqj6xPOtuvkqehExjbfBil9zmm6NgWhVLTAj4wUFDtpx7z37g3WJ+Oq3oVuPml\ndl+vu8G/VfCl9YMagXBiELw9iFk9ICVkczvOtHKxxGp4OAc/gZQ/dB1v07cccF35\nr52S7qdqMXEj6P52vNVLllQ6\n-----END CERTIFICATE-----"
default.midas.ssl.key = "-----BEGIN RSA PRIVATE KEY-----\nMIIEowIBAAKCAQEAtBZG/W/U5nWZJ48DjJ5y7RY9Xx6H9ehpLtJv1QUB4LcNnppx\nm2PidlISwUCEbEjeN0F2sMFCodiyVWIlvf05B6LGZRtIUrHfkCGAHHO1fNzjsnHd\nKvY3nD9r5KYuF9k68edef54salkfh/1OYHX4M2hVUkgtp8f9gNy+XeMwoUmvoFhQ\nl7sE31kDR36sNxOgVx8036Z+csTjCsR9Mko7D4qaaDm5qgdllx7wXHaG9TLPK7yf\nQVOkKlstBfMoEZdh8r7Ns7cLc9Sk/mNF14gGVOsP/kyVqLTLVD1lnt0bvEr8MuaM\nA45Db7LO/PJJ6JePQHV2rdZOYYHcQiTk3R+0WwIDAQABAoIBAEXbNmJtFProtyY/\nNbNAa3hIXjodj8P2CYceHj9Vl+rhVykk49jRIDGhmKDaNAQFKB3rCO17qis58cNp\nNRbDuXGa1La3pJBfa0dvl1ByGf57eN/ph094/w1fFK03QT4DB/h6NY/vfW8rby3D\nNrn4SPU4DZDDauJgk5d/CWFGFcEaOr2aIXSIMm8y976bYu89BVI2HYhpmpY5krif\nDsPYPSNjRTTvmCnrrTn/KXAGNqPmQMFsLlgL1N29WYZB8zNw1EvNOXbMakhNKxdt\naqiGpZtwyetCjfnskqux2HjGg5wUxFlXqUbJGYul8H+wO0x7AdkJiBhxThWXny7p\nLOVVWtECgYEA7txNZnPOYzlzkhW7q8XkuPQVH3xm2qsg9BFgWoymwLZoi3jQyc/4\njQ4wFc9EMAdq/y9u/BaVuWdYlGNCbOusNIP6nAGiG8sbfz5AZ2aqj3575Lm9Lhcq\nEepre3kPHpQimzkYctPpGHm4FxuzxJ245Wa5bFpg8IySecmta3HSw48CgYEAwQJY\n3bUOk+sp8vX+rmfMZK+Om4j/7UCetSuaPNcSgALjqJTaLFt6vp4ybeJVA5aV1qKR\n6hkOoQ21Fas3ApdJYASiGrxauwvML5fPjHi04XVGVNtDZ1y/09rClh4AIjqKsrkd\ne/LHOKYHUxAFrPDmsjAkO8UihncgMj/9jGf0bHUCgYBKzZs/toyv7lIPMdcwGC1k\n7quezKq5WFZdmQN/2ARw3a8n3pIkYYkJQ6QzcFF+aRRNDmHHeJszEPZgoiUvTy8C\n00IskSZfZeAanTg2KaTIg2fxXWmtgXufWLaIWIUvolykF+FcNJkPHS9VrUtDC9HX\npa/0CunI630DvvEccOz8aQKBgHCZx/KAYKLXPT/rV8uz7sCG0zHWOUjWvECB0ZfQ\n+ZAJH3wIa0gZjoCKlm0Y7/QJ9Byl926Vc71t28lqe8tdK4eC7Hegj2Y0OclCTelr\nuksWOhPjX2175MXaCE+/7OALO0ONT7AyMRvRcNB6tnTwjgZCo8Di/4NnGDd4sZkq\nRKTJAoGBAJ3bVA7L6v6TAoUR82P1eRErV1BXILOU6BM620jwyuP6DHVooCzi3wVF\niwa7wWIJ9Q8CuELLAzXYe3XvW3gJwToitsUl67JubDv/wuGlFkfN4d2x2I07k4Er\nkF2pgdl9m1q05ZuQ1Ci6zxVF3GvFO63i/gcS+Xxu/meclXINFFXM\n-----END RSA PRIVATE KEY-----"
