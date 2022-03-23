FROM julia:1.7.2-bullseye

# Oscar needds a C compiler present
RUN apt-get update && apt-get install -y build-essential

# Add Oscar
COPY ./env /root/.julia/environments/env
RUN julia --project=/root/.julia/environments/env --print "using Pkg; Pkg.instantiate(; verbose=true)"

WORKDIR /data

ENTRYPOINT [ "julia", "--project=/root/.julia/environments/env" ]