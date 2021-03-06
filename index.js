#!/usr/bin/env node
const { Command } = require('commander');
const { exec } = require('child_process');

const xct = (command) => {
  exec(command, (error, stdout, stderr) => {
      if (error) {
          console.log(`error: ${error.message}`);
          return;
      }
      if (stderr) {
          console.log(`stderr: ${stderr}`);
          return;
      }
      console.log(`stdout: ${stdout}`);
  });
}


const program = new Command();
program.version('0.0.1');

const programArgs = process.argv;
const contextArgs = programArgs.reduce((argsString, argItem, index) => {
    if(index === 3) {
      return argItem;
    } else if (index > 3) {
      return `${argsString} ${argItem}`;
    } else {
      return '';
    }
});

if(programArgs.length === 2){
  console.log('running', `./teel/index`)
  // console.log('program args',{programArgs, other: process.argv})
  xct(`./teel/index`);
} else {
  console.log('running', `./teel/${process.argv[2]} ${contextArgs}`)
  // console.log('program args',{programArgs, other: process.argv})
  xct(`./teel/${process.argv[2]} ${contextArgs}`);
}