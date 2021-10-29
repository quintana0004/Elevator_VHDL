# Elevator_VHDL
This is the elevator code made with VHDL, it goes up to four floors. 

This is the elevator code made with VHDL, it goes up to four floors. It was tested in LogiSim Evolution version 2.15.

![image](https://user-images.githubusercontent.com/66384782/139370163-4d89c4c0-6895-4a89-952b-781fae47b461.png)

### This was made with the following logic

![image](https://user-images.githubusercontent.com/66384782/139370397-80e314a1-e5a8-40d7-83cf-96cf6ca6a44c.png)

- This is the state diagram thet takes two input values that represent the truth table of two bits. What is says in the blue note is that, we will follow the state diagram mealy to complete the state table with an output of Z and its future states (in other word the next state) like QA+ and QB+.

![image](https://user-images.githubusercontent.com/66384782/139371692-f7e93e0f-7903-4d93-aae7-74da22c9f992.png)

- This is the state table completed to be used for the following K-maps:

![image](https://user-images.githubusercontent.com/66384782/139371877-7bfb5810-e18a-4a45-a850-34efb5cfcb34.png)

![image](https://user-images.githubusercontent.com/66384782/139371918-8e1f9706-5acd-48c4-a26d-fabae2979f4d.png)

This is the output of the elevator with VHDL:

![image](https://user-images.githubusercontent.com/66384782/139372039-0126fea1-2d3a-4ee0-87df-7cd9e9906444.png)

- This the output when X and Y is "00", it will open the door and be at the first floor that is in state cero. The door is open because the LED light is on if it does not arrive at the correct floor the LED will be off. There is a reset input that will return to the first floor and the CK is the clock.

The following pictures will demonstrate the output of the elevator.

![image](https://user-images.githubusercontent.com/66384782/139372457-2179db0b-b4e0-4a2a-b43c-d642cc0e2ee0.png)

![image](https://user-images.githubusercontent.com/66384782/139372563-28ab5ebd-616f-4f48-8632-513fd461bfe9.png)

![image](https://user-images.githubusercontent.com/66384782/139372607-5186ca1b-deba-4868-8307-78093502fdbd.png)

This is the evidence that the door will still be closed when it hasn't arrived at the specific floor.

![image](https://user-images.githubusercontent.com/66384782/139372728-96b4b4b8-fde2-4c79-a2ed-1d5491a0e22f.png)
