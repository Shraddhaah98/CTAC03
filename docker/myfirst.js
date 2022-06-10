const spawn = require("child_process").spawn;
console.log('PATH:::::');

console.log(process.env.PATH);
const pythonProcess = spawn('python', ['opt/app.py']);
pythonProcess.stdout.on('data', (data) => {
	    console.log('DATA::::');
	    console.log(data.toString());
});

pythonProcess.stderr.on('data', (data) => {
	    console.log("wow");
	    console.log(data.toString());
});
