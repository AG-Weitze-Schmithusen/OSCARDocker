# OSCAR Docker Repository

This Docker file contains a recent version of the software in the OSCAR project:

## Usage

1. Make sure that Docker is installed
2. Create a directory to hold your Julia scripts:
    ```
    mkdir data
    ```
3. Run
    ```
    docker run -v "$(pwd)/data:/data" -it oscarsystem/oscar:latest
    ```
4. This will open a Julia prompt. Now you can load Oscar:
    ```
    using Oscar
    ```

## Usage with JupyterLab

With JupyterLab, you can run Oscar inside a Web server.

```
docker run -p 8888:8888 -v "$(pwd)/data:/data" oscarsystem/oscar-jupyter:latest
```

You will see instructions on what URL to open in your browser.
