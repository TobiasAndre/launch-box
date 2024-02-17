import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element);
    const deployType = document.getElementById('deploy_type');
    deployType.addEventListener('change', (e) => {
      if (e.target.value === 'buildpack') {
        document.getElementById('buildpacks').classList.remove('hidden');
      } else {
        document.getElementById('buildpack').classList.add('hidden');
      }
    });
    const Buildpacks = document.getElementById('buildpacks');
    const buildpack = document.getElementById('buildpack');
    const addBuildpack = document.getElementById('add-buildpack');
    addBuildpack.addEventListener('click', (e) => {
      const newDiv = document.createElement('div');
      newDiv.classList.add('mb-5', 'flex', 'justify-between', 'gap-2');
      const newBuildpack = document.createElement('div');
      newBuildpack.id = `buildpack_${buildpack.options[buildpack.selectedIndex].value}`;
      newBuildpack.textContent = buildpack.options[buildpack.selectedIndex].text;
      const newRemove = document.createElement('button');
      newRemove.textContent = 'Remove';
      newRemove.classList.add('btn-secondary');
      newRemove.addEventListener('click', (e) => {
        newDiv.remove();
      });
      newDiv.appendChild(newBuildpack);
      newDiv.appendChild(newRemove);
      Buildpacks.appendChild(newDiv);
      buildpack.selectedIndex = 0;
    });
  }
}
