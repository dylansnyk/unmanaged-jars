find . -type f -name '*.jar' | uniq | xargs -I {} snyk monitor --file={} --scan-unmanaged --remote-repo-url="repo/name" --project-name={}


# REM Usage:    
# REM For example: scanjar.bat "C:\workspace\app" "myapp" 
# SET WORKSPACE=%1 
# SET REMOTE_REPO_URL=%2 
# for /R %WORKSPACE% %%f in (*.jar) do cmd /c snyk monitor --scan-unmanaged --remote-repo-url=%REMOTE_REPO_URL% --file=%%f --project-name=%%f

# for /R . %%f in (*.jar) do cmd /c snyk monitor --scan-unmanaged --remote-repo-url=NAME_OF_APP --file=%%f --project-name=%%f

# https://docs.snyk.io/snyk-cli/test-for-vulnerabilities/scan-all-unmanaged-jar-files

