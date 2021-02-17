#Simple Jupyter Notebook with Bash Kernel

## Manually
	git clone https://github.com/ApfelPresse/jupyter-bash-kernel.git
	cd jupyter-bash-kernel
	docker build -t jupyter .
	docker run -it -p 9000:8888 jupyter
	
## Dockerhub
	