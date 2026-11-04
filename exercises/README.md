<<<<<<< HEAD

## Exercise Starter Code
The current folder conatins the following starter code for the classroom exercises:
```bash
.
├── Vagrantfile        # Vagrant exercise
├── go-helloworld      # Docker and Kubernetes exercise
│   ├── README.md
│   └── main.go
├── manifests
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── namespace.yaml
│   └── service.yaml
└── python-helloworld  # Docker walkthrough code  eere
    ├── app.py
    └── requirements.txt
```


**Note**: the specified `config.vm.box_version` in the Vagrantfile updates with time. You will have to change it from `212` shown in the demo video above to a newer version. When a particular version used in Vagrantfile becomes deprecated, the command prompt will show you all available newer versions.

**Note on VirtualBox 7.1 + Vagrant compatibility**: The Vagrantfile works on both Vagrant 2.2.10+/VirtualBox 6.1.x and Vagrant 2.4.x/VirtualBox 7.1.x. However, official Vagrant support for VirtualBox 7.1 was added in **Vagrant 2.4.2**. If you are running Vagrant 2.4.0 or 2.4.1 against VirtualBox 7.1, `vagrant up` will print a warning that the installed VirtualBox version is not officially supported by the provider. The VM will usually still come up, but to avoid the warning (and any subtle provider issues) upgrade to Vagrant 2.4.2 or later. 


=======
# nd064_C1
### Cloud Native Fundamentals Scholarship Program Nanodegree Program

**Course Homepage**: https://sites.google.com/udacity.com/suse-cloud-native-foundations/home

**Instructor**: https://github.com/kgamanji

## Quick start

Assuming **Vagrant 2.4.x** and **VirtualBox 7.1.x** are already installed locally,
the snippet below brings up the exercise VM and runs the
[`python-helloworld`](exercises/python-helloworld) Flask sample inside it.

```bash
# 1. Bring up the openSUSE Leap 15.6 VM (uses exercises/Vagrantfile)
cd exercises
vagrant up

# 2. SSH into the VM
vagrant ssh
```

Then, **inside the VM**:

```bash
# 3. Install Python 3.11 and pip
sudo zypper install -y python311 python311-pip

# 4. Install the app's dependencies and start the Flask server
cd /vagrant/python-helloworld
python3.11 -m pip install --user -r requirements.txt
python3.11 app.py
```

The Flask app binds to `0.0.0.0:5000` inside the VM. From a **separate terminal
on your host**, hit it on the VM's host-only IP:

```bash
curl http://192.168.56.4:5000/
# -> Hello World!
```

When you're done:

```bash
exit            # leaves the SSH session
vagrant halt    # run from the host to shut the VM down
```

> The host-only IP `192.168.56.4` is inside VirtualBox 7.x's default-allowed
> range (`192.168.56.0/21`), so no `/etc/vbox/networks.conf` edits are needed.
>>>>>>> 2696c4ec70ae2d1b50dba624a828eaead2ee23e1
