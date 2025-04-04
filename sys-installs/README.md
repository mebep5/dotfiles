Ansible is used as a configuration management, deploying software, and orchestra advanced workflows. [Citation for definition](https://www.redhat.com/en/ansible-collaborative/how-ansible-works)

I used generative AI to create the script provided because I am not super familiar with bash scripting still. It is a very hard language for me to master. Regardless, the prompt I used to generate my script is:

"Write me a bash script that checks the EUID and only run if it is using root as well as checking the system package manager used is apt. Next, prompt the user on what program they want to install and ask them if they want to agree to installation. Make sure that the program and its dependancies are not already installed. Then after installation, tell the user to use the installed command to try out the package." 

This was proven to be harder with AI as it kept making mistakes so I had to keep reprompting it to change parts of the script. The writing above is a combination of all of my prompts. [Conversation with Copilot](https://copilot.microsoft.com/chats/3poUACm8RpwsQZ9z79zGs)
