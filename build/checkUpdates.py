#!/usr/bin/env python3

import json
import os

import requests

def checkForUpdates():
    
    basePath = os.path.normpath(os.path.realpath(__file__)[:-15] + "..")
    with open(basePath + "/manifest.json", "r+") as file:
        manifest = json.load(file)
        headers = {'Accept': 'application/json', 'x-api-key': os.getenv("CFAPIKEY")}
        for mod in manifest["files"]:
            r = requests.get(
                'https://api.curseforge.com/v1/mods/{0}/files/{1}'.format(mod["projectID"], mod["fileID"]),
                headers=headers)
            r_latest = requests.get(
                'https://api.curseforge.com/v1/mods/{0}/files?pageSize=50&gameVersion={1}'.format(mod["projectID"], manifest["minecraft"]["version"]),
                headers=headers)
            try:
                metadata = json.loads(r.text)
                metadata_latest = json.loads(r_latest.text)

            except:
                continue
            files_array = metadata_latest["data"]
            mod_file  =  metadata["data"]
            latest_file = mod_file
            for curr_file in files_array:
                if curr_file["releaseType"] != 3:
                    latest_file = curr_file
                    break
            if (mod_file["hashes"] != latest_file["hashes"]):
                print("Update Available for file",mod_file["fileName"],", new file name is",latest_file["fileName"])
                updateInManifest = input("\tDo you want to update this mod in the manifest.json?")
                if (updateInManifest == "Y"):
                    mod["fileID"] = latest_file["id"]
                    print("Updated mod",mod["projectID"],"to file",latest_file["id"])
        file.truncate(0)
        file.seek(0)
        json.dump(manifest,file,indent=2)
    
        


if __name__ == "__main__":
    checkForUpdates()