<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<sp:url value="/resources/images" var="images"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
$skin: #ffc48c;
$body: #222;
$legs: #111;
$belt:#724b1e;
$beltClap:#ffd900;

body {
  margin: 0;
  padding: 0;
  position: relative;
  min-height: 100vh;
  min-width: 100vh;
  overflow: hidden;
  background-color: #fafafa;
  font-family: 'Inconsolata', monospace;
  font-weight: 700;
  transform:scale3d(.8,.8,.8);
  cursor: not-allowed;

  div {
    display: block;
  }

  .door {
    background-color: #eee;
    width: 320px;
    height: 500px;
    border-top-left-radius: 140px;
    border-top-right-radius: 140px;
    position: relative;
    left: 50%;
    top:10px;
    transform: translateX(-50%) scale(1, 1);
    transform-origin: 0;
    box-shadow: 0 -10px 40px rgba(0, 0, 0, .2);
    transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
    animation: dooranimation 4s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
  }

  .forbidden {
    position: absolute;
    perspective: 844px;
    width: 100%;
    font-size: 270px;
    left: 60%;
    bottom: -109px;
    letter-spacing: -10px;
    color: #ccc;
    transform: translateX(-50%);

    .text {
      transform: rotateX(60deg) rotateY(0deg);
    }
  }

  .text-403 {
    font-size: 600px;
    margin-left: -100px;
    color: #ddd;
    z-index: -1;
    position: absolute;
    left: 54%;
    transform-origin: 0;
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
    top: 50px;
    letter-spacing: -60px;
    line-height: .7;
    transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
    animation: textanimation 4s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
  }

  .floor {
    position: absolute;
    transform: translateX(-50%);
    border-bottom: 200px solid #ccc;
    border-left: 145px solid transparent;
    border-right: 145px solid transparent;
    height: 0;
    width: 320px;
    left: 50%;
    top: 500px;
  }

  #hodor {
    position: absolute;
    left: 50%;
    top: 70px;
    transform: translateX(-50%);
    transform-origin: 0%;
    transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
    animation: hodoranimation 4s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;

    .body {
      background-color: $body;
      width: 240px;
      height: 400px;
      border-top-left-radius: 120px;
      border-top-right-radius: 120px;
      overflow: hidden;

      .backpack-strap-r {
        background-color: $belt;
        width: 70px;
        height: 210px;
        border-radius: 40%;
        position: relative;
        top: -10px;
        left: -10px;
        transform: rotate(20deg);

        &:before {
          content: "";
          background-color: $body;
          width: 70px;
          height: 210px;
          border-radius: 40%;
          left: -10px;
          position: absolute;
        }
      }

      .backpack-strap-l {
        @extend .backpack-strap-r;
        left: initial;
        right: -170px;
        transform: rotate(-20deg);
        top: -220px;

        &:before {
          left: initial;
          right: -10px;
          top: -5px;
        }
      }
    }

    .belt {
      background-color: $belt;
      height: 20px;
      border-radius: 6px;
      width: 104%;
      bottom: 80px;
      left: -5px;
      position: absolute;

      &:before {
        background-color: $beltClap;
        border-radius: 50%;
        width: 60px;
        height: 30px;
        content: "";
        top: -5px;
        left: 50%;
        transform: translateX(-50%);
        position: absolute;
      }

      &:after {
        background-color: $belt;
        border-radius: 50%;
        width: 50px;
        height: 20px;
        content: "";
        top: 0;
        left: 50%;
        transform: translateX(-50%);
        position: absolute;
      }
    }

    .r-leg {
      background-color: #111;
      width: 30px;
      height: 40px;
      left: 50%;
      margin-left: -40px;
      position: absolute;

      .foot {
        border-bottom: 10px solid #111;
        border-left: 25px solid transparent;
        border-right: 5px solid transparent;
        height: 0;
        width: 10px;
        right: 15px;
        bottom: 0;
        position: absolute;
      }
    }

    .l-leg {
      @extend .r-leg;
      left: initial;
      margin-left: 0;
      right: 50%;
      margin-right: -40px;

      .foot {
        border-bottom: 10px solid #111;
        border-left: 5px solid transparent;
        border-right: 25px solid transparent;
        height: 0;
        width: 10px;
        left: 15px;
        bottom: 0;
        position: absolute;
      }
    }

    .head {
      left: 50%;
      top: 80px;
      position: absolute;
      transform: translateX(-50%);
      width: 55px;
      height: 70px;
      transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
      animation: headanimation 4s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
    }

    .face {
      background-color: $skin;
      left: 50%;
      top: 0;
      position: absolute;
      width: 55px;
      height: 70px;
      transform: translateX(-50%);
      border-radius: 20px;
      z-index: 1;
    }

    .hair {
      content: "";
      background: #f8f8f8;
      left: 50%;
      top: -14px;
      position: absolute;
      transform: translateX(-50%);
      width: 60px;
      height: 80px;
      border-radius: 20px;
      z-index: -1;
    }

    .beard {
      background-color: #ccc;
      left: 50%;
      bottom: -15px;
      position: absolute;
      transform: translateX(-50%);
      width: 65px;
      height: 50px;
      border-radius: 15px;
      z-index: 2;

      &:before {
        content: "";
        background-color: #ffc48c;
        left: 50%;
        bottom: 23px;
        position: absolute;
        transform: translateX(-50%);
        width: 30px;
        height: 24px;
        border-radius: 10px;
      }

      &:after {
        content: "";
        background-color: #111;
        left: 50%;
        top: 10px;
        position: absolute;
        transform: translateX(-50%);
        width: 14px;
        height: 3px;
        border-radius: 10px;
        transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
        transform-origin: 0;
        animation: mounthanimation 7s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
      }
    }

    .bubble {
      background-color: #fff;
      border: 2px solid #000;
      border-radius: 45%;
      z-index: 4;
      position: absolute;
      left: -80px;
      top: 30px;
      padding: 10px;
    }

    .r-eye {
      background-color: #eee;
      border-radius: 50%;
      width: 5px;
      height: 5px;
      position: absolute;
      left: 50%;
      transform: translateX(-50%);
      margin-left: 10px;
      top: 19px;
      z-index: 3;
      transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
      animation: eyesanimation 8s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
    }

    .l-eye {
      @extend .r-eye;
      margin-right: 0;
      margin-left: -10px;
    }

    .r-brow {
      background-color: #eee;
      border-radius: 50%;
      width: 15px;
      height: 5px;
      position: absolute;
      left: 50%;
      transform: translateX(-50%);
      margin-left: 10px;
      top: 10px;
      z-index: 3;
      transition: all .3s cubic-bezier(0.165, 0.84, 0.44, 1);
      animation: rbrowanim 6s cubic-bezier(0.455, 0.03, 0.515, 0.955) infinite;
    }

    .l-brow {
      @extend .r-brow;
      margin-right: 0;
      animation: none;
      margin-left: -10px;
      transform: translateX(-50%) rotate(-20deg);
    }

    .r-arm,
    .l-arm {
      width: 150px;
      height: 60px;
      position: absolute;
      left: -70px;
      top: 100px;
      transform: rotate(-50deg);

      .arm {
        background-color: $body;
        width: 150px;
        height: 60px;
        z-index: 2;
      }

      .hand {
        background-color: $skin;
        border-radius: 50%;
        width: 25px;
        height: 25px;
        left: -10px;
        position: absolute;
        top: 15px;
        display: block;
        z-index: -1;
      }
    }

    .l-arm {
      left: initial;
      right: -70px;
      transform: rotate(-130deg);
    }
  }
}

@keyframes dooranimation {
  0% {
    transform: scale(1, 1) translateX(-50%);
  }

  10% {
    transform: scale(1, 1) translateX(-50%);
  }

  12% {
    transform: scale(1.1, 1.1) translateX(-50%);
  }

  18% {
    transform: scale(1.1, 1.1) translateX(-50%);
  }

  20% {
    transform: scale(1, 1) translateX(-50%);
  }

  24% {
    transform: scale(1, 1) translateX(-50%);
  }

  26% {
    transform: scale(1.05, 1.05) translateX(-50%);
  }

  28% {
    transform: scale(1.05, 1.05) translateX(-50%);
  }

  30% {
    transform: scale(1, 1) translateX(-50%);
  }

  80% {
    transform: scale(1, 1) translateX(-50%);
  }

  82% {
    transform: scale(1.13, 1.13) translateX(-50%);
  }

  84% {
    transform: scale(1.13, 1.13) translateX(-50%);
  }

  86% {
    transform: scale(1, 1) translateX(-50%);
  }
}

@keyframes hodoranimation {
  0% {
    transform: scale(1, 1) translateX(-50%);
  }

  10% {
    transform: scale(1, 1) translateX(-50%);
  }

  12% {
    transform: scale(1.3, 1.2) translateX(-52%);
  }

  18% {
    transform: scale(1.3, 1.2) translateX(-52%);
  }

  20% {
    transform: scale(1, 1) translateX(-50%);
  }

  24% {
    transform: scale(1, 1) translateX(-50%);
  }

  26% {
    transform: scale(1.05, 1.05) translateX(-48%);
  }

  28% {
    transform: scale(1.05, 1.05) translateX(-48%);
  }

  30% {
    transform: scale(1, 1) translateX(-50%);
  }

  80% {
    transform: scale(1, 1) translateX(-50%);
  }

  82% {
    transform: scale(1.15, 1.15) translateX(-55%);
  }

  84% {
    transform: scale(1.15, 1.15) translateX(-55%);
  }

  86% {
    transform: scale(1, 1) translateX(-50%);
  }
}

@keyframes headanimation {
  0% {
    transform: scale(1, 1) translateX(-50%);
  }

  5% {
    transform: scale(1, 1) translateX(-45%);
  }

  10% {
    transform: scale(1, 1) translateX(-50%);
  }

  12% {
    transform: scale(1.01, 1) translateX(-62%);
  }

  18% {
    transform: scale(1.01, 1) translateX(-62%);
  }

  20% {
    transform: scale(1, 1) translateX(-50%);
  }

  24% {
    transform: scale(1, 1) translateX(-50%);
  }

  26% {
    transform: scale(1, 1) translateX(-38%);
  }

  28% {
    transform: scale(1, 1) translateX(-38%);
  }

  30% {
    transform: scale(1, 1) translateX(-50%);
  }

  45% {
    transform: scale(1, 1) translateX(-20%);
  }

  65% {
    transform: scale(1, 1) translateX(-60%);
  }

  80% {
    transform: scale(1, 1) translateX(-50%);
  }

  82% {
    transform: scale(1, 1) translateX(-55%);
  }

  84% {
    transform: scale(1, 1) translateX(-55%);
  }

  86% {
    transform: scale(1, 1) translateX(-50%);
  }
}

@keyframes eyesanimation {
  0% {
    transform: scale(1, 1) translateX(-50%);
  }

  10% {
    transform: scale(1, 1) translateX(0%);
  }

  12% {
    transform: scale(1, 1) translateX(-52%);
  }

  18% {
    transform: scale(1, 1) translateX(-102%);
  }

  20% {
    transform: scale(1, 1) translateX(-50%);
  }

  24% {
    transform: scale(1, 1) translateX(0%);
  }

  26% {
    transform: scale(1, 1) translateX(38%);
  }

  28% {
    transform: scale(1, 1) translateX(38%);
  }

  30% {
    transform: scale(1, 1) translateX(0%);
  }

  45% {
    transform: scale(1, 1) translateX(-20%);
  }

  65% {
    transform: scale(1, 1) translateX(10%);
  }

  80% {
    transform: scale(1, 1) translateX(50%);
  }

  82% {
    transform: scale(1, 1) translateX(55%);
  }

  84% {
    transform: scale(1, 1) translateX(-55%);
  }

  86% {
    transform: scale(1, 1) translateX(50%);
  }
}

@keyframes textanimation {
  0% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  10% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  12% {
    transform: scale(1.1, 1.1) translateX(-50%) rotate(-3deg);
  }

  18% {
    transform: scale(1.1, 1.1) translateX(-50%) rotate(-3deg);
  }

  20% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  24% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  26% {
    transform: scale(1.05, 1.05) translateX(-50%) rotate(3deg);
  }

  28% {
    transform: scale(1.05, 1.05) translateX(-50%) rotate(3deg);
  }

  30% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  80% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }

  82% {
    transform: scale(1.13, 1.13) translateX(-50%) rotate(-6deg);
  }

  84% {
    transform: scale(1.13, 1.13) translateX(-50%) rotate(-6deg);
  }

  86% {
    transform: scale(.2, .2) translateX(-50%) rotate(-3deg);
  }
}

@keyframes rbrowanim {
  0% {
    transform: scale(1, 1) translateX(-50%) rotate(-3deg);
  }

  10% {
    transform: scale(1, 1) translateX(-50%) rotate(-3deg);
  }

  12% {
    transform: scale(1, 1) translateX(-50%) rotate(-3deg);
  }

  18% {
    transform: scale(1, 1) translateX(-50%) translateY(-5px) rotate(-3deg);
  }

  20% {
    transform: scale(1, 1) translateX(-50%) translateY(-5px) rotate(-3deg);
  }

  82% {
    transform: scale(1.13, 1.13) translateX(-50%) rotate(-6deg);
  }

  84% {
    transform: scale(1.13, 1.13) translateX(-50%) rotate(-6deg);
  }

  86% {
    transform: scale(1, 1) translateX(-50%) rotate(-3deg);
  }
}

@keyframes mounthanimation {
  0% {
    transform: scale(.8, .8) translateX(-50%);
  }

  10% {
    transform: scale(.8, .8) translateX(-50%);
  }

  12% {
    transform: scale(1.1, 3.1) translateX(-50%);
  }

  18% {
    transform: scale(1.1, 3.1) translateX(-50%);
  }

  20% {
    transform: scale(1.2, 1.8) translateX(-50%);
  }

  24% {
    transform: scale(1.2, 1.8) translateX(-50%);
  }

  26% {
    transform: scale(1.05, .7) translateX(-10%);
  }

  28% {
    transform: scale(1.05, .7) translateX(-10%);
  }

  30% {
    transform: scale(1.2, 2.2) translateX(-30%);
  }

  80% {
    transform: scale(1.2, 2.2) translateX(-30%);
  }

  82% {
    transform: scale(1.13, 1.2) translateX(-70%);
  }

  84% {
    transform: scale(1.13, 1.2) translateX(-70%);
  }

  86% {
    transform: scale(.8, .8) translateX(-50%);
  }
}
</style>

</head>

<body>
<div class="forbidden">
  <div class="text">
    FORBIDDEN
  </div>
</div>
<div class="text-403">4003</div>

<div class="door"></div>

<div id="hodor">
  <div class="l-arm">
    <div class="hand"></div>
    <div class="arm"></div>
  </div>
  <div class="r-arm">
    <div class="hand"></div>
    <div class="arm"></div>
  </div>
  <div class="body">
    <div class="backpack-strap-r"></div>
    <div class="backpack-strap-l"></div>
  </div>
  <div class="belt"></div>
  <div class="head">
    <div class="hair"></div>
    <div class="face"></div>
    <div class="r-eye"></div>
    <div class="l-eye"></div>
    <div class="r-brow"></div>
    <div class="l-brow"></div>
    <div class="beard"></div>
    <div class="bubble">H0D0R!</div>
  </div>
  <div class="l-leg">
    <div class="foot"></div>
  </div>
  <div class="r-leg">
    <div class="foot"></div>
  </div>
</div>
</body>


</html>