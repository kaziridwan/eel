#!/usr/bin/env node
const { Command } = require('commander');
const program = new Command();
program.version('0.0.1');

console.log('kemon asos @saddat @mash!')
program.parse(process.argv);