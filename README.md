# Personal Python Jupyter Notebook
A containerized [Jupyter Notebook](https://jupyter.org/) instance for safe [Python3](https://www.python.org/) testing.

**Current Python Version:** 3.11.4

## Requirements
- A current installation of [Docker](https://www.docker.com)

## Files
| Filepath | Description |
| --- | --- |
| [./CHANGELOG.md](./CHANGELOG.md) |  Track changes |
| [./docker-compose.yml](./docker-compose.yml) | [Docker Compose](https://docs.docker.com/compose/) orchestrator manifest in [YAML](https://yaml.org/)  |
| [./Dockerfile](./Dockerfile) | Docker Image Manifest in [Dockerfile](https://docs.docker.com/engine/reference/builder/) |
| [./jupter_notebook.code-workspace](./jupter_notebook.code-workspace) | [VSCode](https://code.visualstudio.com/) [workspace](https://code.visualstudio.com/docs/editor/workspaces) manifest in [JSON](https://www.json.org/) |
| [./LICENSE](./LICENSE) | [MIT Software License](https://choosealicense.com/licenses/mit/#)  |
| [./README.md](./README.md) | This document. Basic guidance in [Markdown](https://www.markdownguide.org/) |
| [./requirements.txt](./requirements.txt) | Python3 requirements to install with [PIP](https://pip.pypa.io/en/stable/) from [PyPi](https://pypi.org/) |

## Usage
### Setup
1. `git clone git@github.com:adeliecrux/jupyter_notebook.git`
    - Alternatively, you can fork the repository to provide a private instance for change persistence.
1. Open in text editor or IDE of choice ([VSCode](https://code.visualstudio.com/) FTW)
1. If desired, adjust [volume mount](https://docs.docker.com/storage/volumes/) for notebooks in [VSCode](https://code.visualstudio.com/)
    - If you DO want created files to persist on the host machine in this location: No changes.
    - If you DO want created files to persist on the host machine AND want to customize the location: Adjust the path before the `:` on line 10 with the desired path on the host machine.
    - If you DO NOT want created files to persist on the host machine: Comment out with `#` or delete lines 9/10 for volumes
1. Add Linux requirements to [./Dockerfile](./Dockerfile)
    - Add package names to the end of line 10 to install with apt-get
1. Add Python3 requirements to new lines in [./requirements.txt](./requirements.txt)

### Startup
1. `docker-compose up --build -d` (VSCode: Right-click, Compose Up)
1. `docker logs jupyter` (VSCode: Right-click, View Logs)
1. Connect to the URL provided in the output i.e. `http://127.0.0.1:8888/lab?token=HASHVALUEHERE`
1. Use & Profit

### Shutdown
1. When complete `docker-compose down` (VSCode: Right-click, Compose Down)