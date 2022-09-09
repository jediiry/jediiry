// Option 1: Import the entire three.js core library.
import * as THREE from "three";

export default (context: any, inject: any) => {
  const THREE = () => {
    return THREE;
  };

  inject("three", THREE);
};
