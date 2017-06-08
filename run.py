import subprocess,os

for root, dirs, files in os.walk('./source/_posts'):
	for name in files:
		if not (name.endswith(".md")):
			os.remove(os.path.join(root, name))

subprocess.call("git add -A", shell=True)
subprocess.call("git commit -m \"update\"", shell=True)
subprocess.call("git push origin master", shell=True)
