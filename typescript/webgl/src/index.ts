const main = () => {
  const root = document.querySelector('body');
  const canvas = document.createElement('canvas');
  canvas.id = "view";
  canvas.width = 640;
  canvas.height = 480;

  root.appendChild(canvas);


  loop(canvas);
};

const loop = (canvas) => {
  let RUNNING = true;

  const gl = canvas.getContext("webgl");

  if (gl === null) {
    alert("Unable to initialize WebGL. Your browser or machine may not support it.");
    return;
  }

  //while(RUNNING) {
    gl.clearColor(0.0, 0.0, 1.0, 1.0);
    gl.clear(gl.COLOR_BUFFER_BIT);
  //}
};

main();
