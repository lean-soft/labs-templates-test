yo team:project --skip-cache false "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfs" "$env:pat"

yo team:azure --skip-cache false "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfs" "$env:azureSub" "$env:azureSubId" "$env:tenantId" "$env:servicePrincipalId" "$env:servicePrincipalKey" "$env:pat"

yo team:build --skip-cache false asp "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfs" "$env:queue" "$env:target" "$env:dockerHost" "$env:dockerRegistry" "$env:dockerRegistryId" "$env:pat" "$env:applicationName"

yo team:pipeline --skip-cache false asp "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfs" "$env:queue" "$env:target" "$env:azureSub" "$env:azureSubId" "$env:tenantId" "$env:servicePrincipalId" "$env:dockerHost" "$env:dockerCertPath" "$env:dockerRegistry" "$env:dockerRegistryId" "$env:dockerPorts" "$env:dockerRegistryPassword" "$env:servicePrincipalKey" "$env:pat" "$env:customFolder"

yo team:git --skip-cache false "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfsHttp" clone "$env:pat"
yo team:asp --skip-cache false "$env:applicationName$env:BUILD_BUILDNUMBER"  false "$env:dockerPorts"
yo team:git --skip-cache false "$env:applicationName$env:BUILD_BUILDNUMBER" "$env:tfsHttp"  commit "$env:pat"
cd $env:applicationName$env:BUILD_BUILDNUMBER
git push
