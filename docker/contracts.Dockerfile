FROM ghcr.io/foundry-rs/foundry:latest

# Base image uses ENTRYPOINT ["/bin/sh", "-c"], which only passes CMD[0] to sh and
# drops anvil flags like --host. Override so port publishing works from the host.
EXPOSE 8545

ENTRYPOINT ["anvil"]
CMD ["--host", "0.0.0.0", "--port", "8545"]
