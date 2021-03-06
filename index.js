#!/usr/bin/env node
const { Command } = require('commander');
const { exec } = require('child_process');
const program = new Command();
program.version('0.0.1');

const programArgs = process.argv;

console.log('program args',{programArgs, other: process.argv})
console.log('running', `./teel/index.sh ${programArgs.filter((arg,index) => index > 1)}`)

// exec(`./teel/index.sh ${}`)