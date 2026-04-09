

# create above folder structure and files using python simple script
import os
def create_folder_structure(base_path):
    folders = [
        "ingress-alb-scenario",
        "ingress-alb-scenario/steps",
        "ingress-alb-scenario/manifests",
        "ingress-alb-scenario/scripts"
    ]
    
    files = {
        "ingress-alb-scenario": ["scenario.yaml", "intro.md"],
        "ingress-alb-scenario/steps": ["step1.md", "step2.md", "step3.md", "step4.md"],
        "ingress-alb-scenario/manifests": ["deployment.yaml", "service.yaml", "ingress.yaml"],
        "ingress-alb-scenario/scripts": ["verify.sh"]
    }
    
    for folder in folders:
        os.makedirs(os.path.join(base_path, folder), exist_ok=True)
    
    for folder, file_list in files.items():
        for file in file_list:
            open(os.path.join(base_path, folder, file), 'a').close()
if __name__ == "__main__":
    base_path = "devops-killercoda-scenarios"
    create_folder_structure(base_path)  
    #new