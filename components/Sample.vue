<template>
  <div>
    test

    <div id="box" class="canvas_for_three"></div>
    <!-- <div class="tw-bg-black">
     <canvas id="box"></canvas>
   </div> -->
  </div>
</template>
<script>
import * as THREE from "three";
// import { OrbitControls } from "@three-ts/orbit-controls";
export default {
  name: "threejs",
  data() {
    return {
      camera: null,
      scene: null,
      renderer: null,
      mesh: null,
    };
  },
  methods: {
    init: function () {
      let container = document.getElementById("box");

      this.camera = new THREE.PerspectiveCamera(
        70,
        container.clientWidth / container.clientHeight,
        0.01,
        1000
      );
      this.camera.position.z = 4;

      this.scene = new THREE.Scene();

      let geometry = new THREE.TorusGeometry( 1, 0.4, 16, 100 );
      let material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });

      this.mesh = new THREE.Mesh(geometry, material);
      this.scene.add(this.mesh);

      this.renderer = new THREE.WebGLRenderer({ antialias: true,alpha: true });
      this.renderer.setSize(container.clientWidth, container.clientHeight);
      container.appendChild(this.renderer.domElement);
    },
    animate: function () {
      requestAnimationFrame(this.animate);
      this.mesh.rotation.x += 0.01;
      this.mesh.rotation.y += 0.02;
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
  height: 100%;
  display: flex;
  justify-content: flex-end;
  align-items: flex-end;
  /* border: 1px solid white; */
  position: absolute;
  left: 0px;
  bottom: 0px;
  /* z-index: 1; */
}
</style>