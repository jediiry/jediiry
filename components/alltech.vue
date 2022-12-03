<template>
  <div>
    <div id="box" class="canvas_for_three"></div>
    <!-- <div class="tw-bg-black">
     <canvas id="box"></canvas>
   </div> -->
  </div>
</template>
<script>
import * as THREE from "three";
import pythonTextureLader from "~/assets/images/python.webp";
import javascriptTextureLader from "~/assets/images/javascript.png";
import nodejsTextureLader from "~/assets/images/nodejs.png";
import golangTextureLader from "~/assets/images/golang.png";
// import { OrbitControls } from "@three-ts/orbit-controls";
export default {
  name: "threejs",
  data() {
    return {
      camera: null,
      scene: null,
      renderer: null,
      mesh: null,
      group: null,
      mouseX: null,
      mouseY: null,
      windowHalfX: null,
      windowHalfY: null,
      raycaster: null,
      mouse: null,
    };
  },
  methods: {
    getImageToDisplay(displayArray) {
      return displayArray[Math.floor(Math.random() * displayArray.length)];
    },
    init: function () {
      let container = document.getElementById("box");
      this.raycaster = new THREE.Raycaster();
      this.mouse = new THREE.Vector2();

      this.camera = new THREE.PerspectiveCamera(
        70,
        container.clientWidth / container.clientHeight,
        1,
        10000
      );
      this.camera.position.z = 1000;

      this.scene = new THREE.Scene();
      this.scene.background = new THREE.Color(0x2b2b2b);
      this.scene.fog = new THREE.Fog(0x2b2b2b, 1, 10000);

      // const geometry = new THREE.BoxGeometry( 100, 100, 100 );
      let geometry = new THREE.BoxBufferGeometry(100, 100, 100);
      let pythonTexture = new THREE.TextureLoader().load(pythonTextureLader);
      let pythonMaterial = new THREE.MeshBasicMaterial({ map: pythonTexture });
      let nodeTexture = new THREE.TextureLoader().load(nodejsTextureLader);
      let nodeMaterial = new THREE.MeshBasicMaterial({ map: nodeTexture });
      let javascriptTexture = new THREE.TextureLoader().load(
        javascriptTextureLader
      );
      let javascriptMaterial = new THREE.MeshBasicMaterial({
        map: javascriptTexture,
      });
      let golangTexture = new THREE.TextureLoader().load(golangTextureLader);
      let golangMaterial = new THREE.MeshBasicMaterial({
        map: golangTexture,
      });

      this.group = new THREE.Group();
      for (var i = 0; i < 500; i++) {
        this.mesh = new THREE.Mesh(
          geometry,
          this.getImageToDisplay([
            pythonMaterial,
            javascriptMaterial,
            nodeMaterial,
            golangMaterial,
          ])
        );
        this.mesh.position.x = Math.random() * 2000 - 1000;
        this.mesh.position.y = Math.random() * 2000 - 1000;
        this.mesh.position.z = Math.random() * 2000 - 1000;
        this.mesh.rotation.x = Math.random() * 2 * Math.PI;
        this.mesh.rotation.y = Math.random() * 2 * Math.PI;
        this.mesh.matrixAutoUpdate = false;
        this.mesh.updateMatrix();
        this.group.add(this.mesh);
      }

      //   this.mesh = new THREE.Mesh(geometry, material);
      this.scene.add(this.group);

      this.renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
      this.renderer.setPixelRatio(window.devicePixelRatio);
      this.renderer.setSize(container.clientWidth, container.clientHeight);
      container.appendChild(this.renderer.domElement);

      document.addEventListener("mousemove", this.onDocumentMouseMove, true);
      window.addEventListener("mouseclick", this.onMouseClick, false);
      window.addEventListener("resize", this.onWindowResize, false);
    },
    onWindowResize: function () {
      this.windowHalfX = window.innerWidth / 2;
      this.windowHalfY = window.innerHeight / 2;
      this.camera.aspect = window.innerWidth / window.innerHeight;
      this.camera.updateProjectionMatrix();
      this.renderer.setSize(window.innerWidth, window.innerHeight);
    },
    animate: function () {
      requestAnimationFrame(this.animate);
      this.render();
    },
    onDocumentMouseMove: function (event) {
      this.mouseX = (event.clientX - this.windowHalfX) * 2;
      this.mouseY = (event.clientY - this.windowHalfY) * 2;
    },
    onMouseClick: function (event) {
      console.log(event);
      this.raycaster.setFromCamera(event.clientX, this.camera);
      alert('henry')
      var isIntersected = raycaster.intersectObject(this.mesh);
      if (isIntersected) {
        alert('henry')
      }
    },
    render: function () {
      let time = Date.now() * 0.001;
      let rx = Math.sin(time * 0.7) * 0.5,
        ry = Math.sin(time * 0.3) * 0.5,
        rz = Math.sin(time * 0.2) * 0.5;
      this.camera.position.x += (this.mouseX - this.camera.position.x) * 0.05;
      this.camera.position.y += (-this.mouseY - this.camera.position.y) * 0.05;
      this.camera.lookAt(this.scene.position);
      this.group.rotation.x = rx;
      this.group.rotation.y = ry;
      this.group.rotation.z = rz;
      this.renderer.render(this.scene, this.camera);
    },
  },
  mounted() {
    this.init();
    this.animate();
  },
};
</script>
<style>
.canvas_for_three {
  width: 100%;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  /* border: 1px solid white; */
  position: absolute;
  /* left: 0px;
  bottom: 0px; */
  z-index: 20;
}
</style>