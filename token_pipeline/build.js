const fs = require('fs');
const path = require('path');
const root = path.resolve(__dirname);
const sourcePath = fs.existsSync(path.join(root, 'token.json')) ? path.join(root, 'token.json') : path.join(root, 'tokens.json');
const source = JSON.parse(fs.readFileSync(sourcePath, 'utf8'));
const tokens = source.tokens || source;
const out = path.join(root, 'tokens');
fs.mkdirSync(out, { recursive: true });
for (const name of ['global','alias','components']) {
  fs.writeFileSync(path.join(out, name + '.json'), JSON.stringify(tokens[name] || {}, null, 2) + '\\n');
}
for (const [name, value] of Object.entries(tokens)) {
  if (!['global','alias','components'].includes(name)) fs.writeFileSync(path.join(out, name + '.json'), JSON.stringify(value || {}, null, 2) + '\\n');
}
console.log('Galaxy token pipeline: split token source into token_pipeline/tokens/*.json');
