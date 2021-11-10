const yaml = require('js-yaml');
const fs   = require('fs').promises;

async function main(){
  const path = process.argv[2] 
  const yamlContent = await fs.readFile(path, 'utf8')
  const compactJson = yaml.load(yamlContent)
  if (! compactJson.conditions ) {
    compactJson.conditions = [ { property:{ name: 'email', operator: 'is-undefined' }, value: compactJson.value } ] 
    const newYamlContent = yaml.dump(compactJson, {noRefs:true})
    await fs.writeFile(path, newYamlContent, 'utf8');
  }
}


main().then(function() {
  console.log('Done');
});
