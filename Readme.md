# Easy way to work with PowerShell and Kubectl

Because I do not want to install too many dependencies on my computer (kubens, fsf etc.), I sometimes prefer writing my own functions

For installing the shortcuts do the following: 

1) open your profile with visual studio code

	$ code $profile

2) add kubex.ps1 to your profile

	ex: $ . C:\kubex.ps1

3) reload powershell

	$ Invoke-Command { & "powershell.exe" } -NoNewScope

4) try it out !  

		$ k (alias for kubectl)

		$ kc (shortcuts for kubectl context)

		$ kn (shortcuts for kubectl context)