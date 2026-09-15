# Make Fish the default interactive shell for CarsonDEB desktop sessions.
if command -v fish >/dev/null 2>&1 && [ -t 1 ] && [ -z "${CARSONDEB_FISH_STARTED:-}" ]; then
    export CARSONDEB_FISH_STARTED=1
    exec fish
fi
