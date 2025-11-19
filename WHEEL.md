
### Wheels

This project uses 3 3d printed mecanum wheels.

As a starting point I used this project:
[Mecanum wheel 3d print model](https://www.thingiverse.com/thing:6175379)

#### Non-3D Printed Parts

* 693 ball bearing (24 per wheel - 72 total) (3x8x4 mm) [693 Ball Bearing](https://www.amazon.com/dp/B0DHCLF9S3)
* M3 threaded rods (12 per wheel - 36 total) 75mm long [M3 Threaded Rods](https://www.amazon.com/dp/B0D4QMWM4H)
* M3 lock nuts (24 per wheel - 72 total) [M3 Lock Nuts](https://www.amazon.com/dp/B0DFY8Y1TK)
* M3 washers (24 per wheel - 72 total) [M3 Washers](https://www.amazon.com/dp/B0B3RVM92N)
* M5 heat set threaded inserts (12 per wheel - 36 total) [M5 Heat Set Threaded Inserts](https://www.amazon.com/dp/B07YSVXWS8)
* M4 × 90mm bolts (5 per wheel - 15 total) [M4 90mm bolts](https://www.amazon.com/dp/B0DYN68HJH)
* M4 nuts (5 per wheel - 15 total) (or nylock nuts to prevent loosening) [M4 Lock Nuts](https://www.amazon.com/Vifmy-M4-0-7mm-Nuts%EF%BC%8C304-Stainless-Locknuts%EF%BC%8CStandard/dp/B0CPJCXPLJ?th=1)
* M4 washers (10 per wheel - 30 total) [M4 Washers](https://www.amazon.com/Litoexpe-Stainless-Outside-Diameter-Thickness/dp/B0BGLB6DD2)
* 20mm Heat Shrink Tubing (4 foot rolls - 2 total for 3 wheels) [Heat Shrink Tubing](https://www.amazon.com/dp/B0B616KF8J)
* M5 Screws (12 per wheel - 36 total) [M5 12mm Screws](https://www.amazon.com/iexcell-Thread-Socket-Button-Screws/dp/B0CTH2YHQ5)

#### 3D Prints

These links are the STL files. There are source files available in [3D Prints](3d_prints) if you need to make adjustments on your own.

There was no way to connect the wheel to the motor so I had Claude Code generate two adapter pieces, one for each side of the wheel. Through trial and error I found that the back plate should be 64.5mm in diameter.

Our robot is round and uses 3 wheels.

* [Rim](3d_prints/wheel/RIM.stl) 1 / wheel, 3 total.
* [Left Side](3d_prints/wheel/side_L.stl) 2 / wheel. 2 total.
  * NOTE: The STL file on thingiverse has 5 holes which does NOT match the 6 holes on the Rim and on the Right side. I've inverted the right side to make a left side with 6 holes and that is the link I provide here.
* [Right Side](3d_prints/wheel/side_R.stl) 2 / wheel. 4 total.
* [Torque Cap](3d_prints/wheel/leo_rover_torque_plate.stl) 1 / wheel. 3 total.
* [Roller](3d_prints/wheel/Roller.stl) 12 / wheel. 36 total.
  * NOTE: The original source says that if you use heat shrink tubing (which we do) you should use the thinner rollers. This lead to the frame making contact with the ground so we use heat shrink tubing on the standard rollers instead.
* [Adapter For Torque Cap Side](3d_prints/wheel/mecanum_front_plate.stl) 1 / wheel. 3 total.
* [Adapter For Back Side](3d_prints/wheel/mecanum_back_plate_64.5mm.stl) 1 / wheel. 3 total.

##### Wheel Assembly

For additional diagrams see the source project on [Thingiverse](https://www.thingiverse.com/thing:6175379)

* 3D print the parts - please note that this will take quite some time. 
  * 3 rims
  * 2 side right
  * 1 side left
  * 3 torque caps
  * 3 adapter front
  * 3 adapter back
  * 36 rollers
* Use soldering iron to put the heat set threaded inserts into the rim. Here is a helpful video on [how to use heat set threaded inserts](https://youtube.com/shorts/JnhZDiwrd0g?si=wym4r56KDjHzZoVA)
* Prepare the rollers
  * Put a 693 ball bearing in each end of the roller. I find that putting the ball bearing on the table and pushing down the roller works best to pop them into place.
  * Cut the heat shrink tubing into 36 pieces that are 55mm long
  * Wrap each roller in the heat shrink tubing
  * Use the heat gun to shrink the tubing around each roller. Do not over heat or the 3d printed roller will melt too.
* Put the wheel together (this describes the steps for ONE wheel - you will need to build THREE wheels)
  * Do this 12 times
    * Put one end of the 75mm rod through a hole in the side (left or right)
    * screw in a M3 lock nut on the outside
    * add a washer on the inside
    * slide the roller into the 75mm rod - it should fit nicely through the ball bearings in the roller
    * add a washer to the other end of the roller
  * Place the rim in the middle of the side (left or right)
  * Add a matching side piece (if using side right then side right, if using side left the another side left)
    * Do this 12 times
      * one roller at a time pass the rod through a whole in the side
      * add a M3 lock nut
  * secure the rim to the sides using M5 12mm screws. Be sure to secure it to both sides.
  * slide the torque cap into the rim (it will only fit on the side with grooves)
  * Use the 90mm bolts and M4 lock nuts to fasten the front adapter to the torque cap and the back adapter (which goes on the opposite side as the torque cap). The front adapter has a hole in the middle for the motor's d-shaft and is smaller in diameter than the back adapter.
  I put the nuts in the back adapter and the bolts through the front adapter. Once the bolts are in the recessed holes in the front adapter use a M4 allen wrench to tighten them. 

  

