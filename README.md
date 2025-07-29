# OpenTelemetry Bug Example

Code example to support the following issues raised in the PHP OpenTelemetry project.
- https://github.com/open-telemetry/opentelemetry-php/issues/1661
- https://github.com/open-telemetry/opentelemetry-php/issues/1673

There is a GitHub action and a Dockerfile for local running.

````bash
docker build -t otel-bug-example .
docker run --rm -it --env=OTEL_PHP_AUTOLOAD_ENABLED=true otel-bug-example composer install
````

Output is the following:

````bash
Installing dependencies from lock file (including require-dev)
Verifying lock file contents can be installed on current platform.
Nothing to install, update or remove
Generating autoload files
> App\ComposerScripts::postAutoloadDump
Fatal error: Declaration of Psr\Log\AbstractLogger::emergency(Stringable|string $message, array $context = []): void must be compatible with Psr\Log\LoggerInterface::emergency($message, array $context = []) in /app/vendor/psr/log/src/LoggerTrait.php on line 18
````