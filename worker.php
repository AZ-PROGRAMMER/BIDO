<?php include 'partials/menu.php' ?>
<div class="body">
     <!-- header part -->
 <div class="header">
     <div class="time-h"></div>
     <div class="title-h"></div>
     <div class="mode-h"></div>
 </div>
 <!-- title as worker list -->
 <div class="head">
     <h1></h1>
 </div>
 <!-- worker list -->
 <div class="woBoX">
     <!-- worker card -->
     <div class="wocard">
          <div class="woDetails">
          <h2>name</h2>
          <img src="" alt="">
          <h3>status</h3>
          <ul>
               <li></li>
               <li></li>
               <li></li>
          </ul>
          </div>
          <div class="woAction">
              <ul>
               <li><a href="" class="greenBtn">View more</a></li>
               <li><a href="" class="blueBtn">Edit</a><a href="" class="redBtn">Fired</a></li>
              </ul>
          </div>
     </div>
      <!-- adding button  -->
       <div class="addbtn">
          <a href="">+</a>
       </div>
      <!-- adding worker  -->
       <div class="addWorkerBox">
          <form action="" method="post">
               <select name="" id="">
                    <option value="">---select type--</option>
               </select>
               <input type="text">
               <input type="file">
               <input type="number">
               <input type="number">
          </form>
       </div>
        <!-- editing worker  -->
       <div class="editWorkerBox">
          <form action="" method="post">
               <select name="" id="">
                    <option value="">---select type--</option>
               </select>
               <input type="text">
               <input type="image">
               <input type="file">
               <input type="number">
               <input type="number">
          </form>
       </div>
       <!-- worker view more box -->
        <div class="viewMoreBox">
          <div class="workerView">
               <div class="part"></div>
               <div class="part"></div>
          </div>
          <div class="workerStatus">
               <div class="part"></div>
               <div class="part"></div>
               <div class="part"></div>
          </div>
        </div>
 </div>
</div>
<?php include 'partials/footer.php' ?>