FROM python:3.9.1

RUN apt-get update && apt install python3-pip libbz2-dev zlib1g-dev -y
RUN git clone https://github.com/ydkhatri/mac_apt 
RUN pip3 install biplist construct==2.9.45 xlsxwriter plistutils kaitaistruct lz4 pytsk3==20170802 libvmdk-python==20181227 pycryptodome cryptography pybindgen==0.21.0 pillow pyliblzfse nska_deserialize mac_apt/other_dependencies/pyaff4-0.31-yk.zip
RUN wget https://github.com/libyal/libewf-legacy/releases/download/20140811/libewf-20140811.tar.gz && tar xzf libewf-20140811.tar.gz
RUN cd libewf-20140811 && python setup.py build && python setup.py install
CMD python mac_apt/mac_apt.py -h
