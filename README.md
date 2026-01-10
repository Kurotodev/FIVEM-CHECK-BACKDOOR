By Kuroto and Hakos (Linux version)
<h1>Windows Version</h1>

<h2>Step 1</h2>
<p>Download the file <strong>CheckBackDoor.cmd</strong>.</p>

<h2>Step 2</h2>
<p>Run it in your main project folder.</p>
<p>Once the process is finished, the script will display any suspicious files so you can review and analyze their code.</p>

<h1>Tips and Red Flags to Watch For</h1>

<h2>1 - Identical code in multiple files (not normal)</h2>
<p>If you find the same block of code repeated across different files, this is a major red flag and should be investigated immediately.</p>
<img width="500" height="986" alt="Duplicate code example" src="https://github.com/user-attachments/assets/34277dd7-d2ba-4e02-929c-965e07cccb84" />

<h2>Check the interface code</h2>
<p>Scroll to the very last lines of the file. In many cases, you may find an injected block of suspicious code at the end.</p>
<img width="437" height="134" alt="Injected code example" src="https://github.com/user-attachments/assets/1149a190-c4b6-48e4-8459-69395da9547a" />

<h2>2 - Modified manifest file</h2>
<p>Any unexpected changes in the manifest file can indicate tampering or malicious behavior.</p>
<p>This injection is relatively new, and you will likely find many files containing the same or very similar code.</p>
<img width="414" height="480" alt="image" src="https://github.com/user-attachments/assets/1fefee7c-ecaa-4e19-80db-de1f7b46ff07" />

<h2>3 - Check JavaScript files for obfuscated code</h2>
<img width="1413" height="229" alt="image" src="https://github.com/user-attachments/assets/8f7bfa85-d755-4ce7-b357-6691a58d78ff" />

<h2>4 - Identical initialization code in all injected files</h2>
<img width="671" height="682" alt="image" src="https://github.com/user-attachments/assets/97b1245c-867f-4a16-91ad-036028885645" />

<h1>
Remove all detected red flags. Clear the server cache (client cache is not required), 
then reinstall Screenshot-basic, Yarn, Webpack, and the default files [cfx-default].
</h1>

<p>
You can re-download the official default files from:
<a href="https://github.com/citizenfx/cfx-server-data" target="_blank">
https://github.com/citizenfx/cfx-server-data
</a>
</p>

<h1>Important</h1>
<p>
Artifacts can also be compromised. Always reinstall them from official sources 
after cleaning the server.
</p>



