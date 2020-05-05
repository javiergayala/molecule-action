FROM quay.io/ansible/molecule:3.0.4

LABEL "maintainer"="Javier Ayala <javiergayala@gmail.com>"
LABEL "repository"="https://github.com/javiergayala/molecule-action"
LABEL "homepage"="https://github.com/javiergayala/molecule-action"

LABEL "com.github.actions.name"="molecule"
LABEL "com.github.actions.description"="Run Ansible Molecule"
LABEL "com.github.actions.icon"="target"
LABEL "com.github.actions.color"="green"

# ENTRYPOINT ["sh", "-c", "molecule", "$INPUT_MOLECULE_COMMAND", "$INPUT_MOLECULE_ARGS"]

CMD cd ${GITHUB_REPOSITORY}; molecule ${INPUT_MOLECULE_COMMAND} ${INPUT_MOLECULE_ARGS}
