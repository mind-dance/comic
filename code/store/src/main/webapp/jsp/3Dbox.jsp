<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>3d小盒子</title>
  <style>
    html,
    body {
      height: 100%;
    }

    body {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      transform-style: preserve-3d;
      /* perspective: 10000px; */
    }

    .box {
      width: 100px;
      height: 100px;
      position: relative;
      transform-style: preserve-3d;
      transform: rotateX(30deg) rotateY(30deg);
      /* perspective-origin: 100%; */
      /* transition: 1s; */
      animation: move 3s ease-in-out infinite;
      /* perspective: 1000px; */
    }

    .box span {
      position: absolute;
      top: 0;
      left: 0;
      width: 100px;
      height: 100px;
      background: rgba(0, 0, 0, .5);
      text-align: center;
      line-height: 100px;
      color: #fff;
      font-size: 30px;
      border-radius: 20px;
      border: 1px solid #fff;
    }

    .box span:nth-of-type(1) {
      transform: translateX(50px) rotateY(90deg);
      background-color: rgba(188, 61, 61, 0.5);
    }

    .box span:nth-of-type(2) {
      transform: translateX(-50px) rotateY(90deg);
      background-color: rgba(79, 237, 79, 0.5);
    }

    .box span:nth-of-type(3) {
      transform: translateZ(-50px);
      background-color: rgba(63, 63, 199, 0.5);
    }

    .box span:nth-of-type(4) {
      transform: translateZ(50px);
      background-color: rgba(212, 212, 87, 0.5);
    }

    .box span:nth-of-type(5) {
      transform: translateY(50px) rotateX(90deg);
      background-color: rgba(73, 209, 209, 0.5);
    }

    .box span:nth-of-type(6) {
      transform: translateY(-50px) rotateX(90deg);
      background-color: rgba(192, 82, 82, 0.5);
    }

    .box:hover {
      transform-style: preserve-3d;
      transform: rotateX(180deg) rotateY(270deg) rotateZ(30deg);
    }

    .title {
      color: #666c7c;
      font-family: monospace;
      font-weight: 600;
      font-size: 36px;
      height: 150px;
      line-height: 150px;
      letter-spacing: 4px;
    }

    h3 {
      padding-top: 50px;
      transition: 1s .3s;
    }

    h3:hover {
      transform: translate(20px, 4px) scale(1.1) rotate(5deg);
      color: #bd9bdf;
      cursor: pointer;
      text-shadow: 0 0 4px 4px red;
    }

    @keyframes move {
      0% {
        transform: rotateX(180deg) rotateY(270deg);
      }

      50% {
        transform: rotateX(180deg) rotateZ(300deg);
      }

      100% {
        transform: rotateY(270deg) rotateZ(270deg);
      }
    }
  </style>
</head>

<body>
  <div class="box">
    <span>1</span>
    <span>2</span>
    <span>3</span>
    <span>4</span>
    <span>5</span>
    <span>6</span>
  </div>
  <!-- <div class="title">
    <h3>Thanks for your watching!</h3>
  </div> -->
</body>

</html>