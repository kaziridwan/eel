#!/usr/bin/env node
const { Command } = require('commander');
const program = new Command();
program.version('0.0.1');

const programArgs = program.args

program.parse(process.argv);

console.log('program args',{programArgs, other: process.argv})