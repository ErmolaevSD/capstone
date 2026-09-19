#!/usr/bin/env bash
set -euo pipefail

INTERVAL=30
LOG="monitor.log"

while true; do
    {
        printf -- '--- %s ---\n' "$(date '+%Y-%m-%d %H:%M:%S')"
        free -h
        df -h
        uptime
        printf '\n'
    } >> "$LOG"

    sleep "$INTERVAL"
done

