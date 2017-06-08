import subprocess,time

subprocess.call("git add -A", shell=True)
subprocess.call("git commit -m \"update\"", shell=True)
subprocess.call("git push origin master", shell=True)
