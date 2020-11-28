Set-Alias k kubectl

function GetSetKubernetesContext() {
	[Alias('kc')]
	param(
		[Parameter(Mandatory=$false)][switch]$all,
		[Parameter(Mandatory=$false)][switch]$set,
		[Parameter(Mandatory=$false)][string]$context
	)

	process {
		if ($all) {
			kubectl.exe config get-contexts
		} elseif ($set) {
			kubectl.exe config use-context $context
		} else {
			kubectl.exe config current-context
		}
	}
}


function GetSetKubernetesNamespace() {
	[Alias('kn')]
	param(
		[Parameter(Mandatory=$false)][switch]$set,
		[Parameter(Mandatory=$false)][string]$namespace
	)
	process {
		if ($set) {
			kubectl config set-context --current --namespace=$namespace
		} else {
			kubectl get namespaces
		}
	}
}
