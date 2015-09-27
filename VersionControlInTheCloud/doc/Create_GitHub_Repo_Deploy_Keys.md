---
.left-column[
  ### Prepare SSH directory
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Prepare Deploy Keys for a GitHub Repository.
 
If you follow <a href='https://help.github.com/articles/generating-ssh-keys/' target='_blank'>GitHub's getting started documents</a>, you'll learn the hobbyist setup for GitHub.

We want to do something more realistic -- one deploy key per repository per developer, with a way to manage numerous keys easily.  The trick is in a file called ```~/.ssh/config```. It keeps multiple keys with aliased names that *git* will use to push to the correct repo for you, automatically.

In this step we prepare an aliased key for ```${PROJECT_NAME}```.
##### Commands
```terminal
ssh-keygen -t rsa -b 4096 -C "github-${GITHUB_ORGANIZATION_NAME}-${PROJECT_NAME}" -N "" -f "${GITHUB_ORGANIZATION_NAME}-${PROJECT_NAME}"
printf 'Host github-%s-%s\nHostName github.com\nUser git\nIdentityFile ~/.ssh/%s-%s\n\n' "${GITHUB_ORGANIZATION_NAME}" "${PROJECT_NAME}"  "${GITHUB_ORGANIZATION_NAME}" "${PROJECT_NAME}" >> config
ssh-add ${GITHUB_ORGANIZATION_NAME}-${PROJECT_NAME}
```


<!-- Code for this begins at line #202 -->
<!-- B -->
<div id="uniquename" class="popup_div">
    <a class="subtle_a" onmouseover="HideContent('uniquename'); return true;"
       href="javascript:HideContent('uniquename')">
        <p>If a file '~/.ssh/${GITHUB_ORGANIZATION_NAME}-${PROJECT_NAME}.pub' already exists, then this command group will do nothing.</p>
    </a>
</div>
<a
    class="subtle_a"
    onmouseover="ReverseContentDisplay('uniquename'); return true;"
    href="javascript:ReverseContentDisplay('uniquename')">
    <i>Hover Note</i>
</a>

.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/master/Part02_VersionControlInTheCloud.sh#L202" target="_blank">Code for this step.</a>] ]
]