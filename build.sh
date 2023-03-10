git clone https://github.com/matttaylorgithub/LBG-Python.git
cd LBG-Python 
sudo docker build -t mkct75/lbgpython:1 .
sudo docker run -d -P mkct75/lbgpython:1
