PImage bigHead, cactus, casette, castle, clock, cottage, crescent, dino;
PImage familyHome, girl, climbing, jester, papers, penguin, ponderer;
PImage rabbitHat, radioPlayer, robot, sunHead, tower;
PFont dungeonFont;
int choice;
// int sceneId = 0;
private boolean nextState;
Button button0, button1, button2, button3, button4, button5, button6;
// Button buttonTest;

void setup() {
    size(800, 600); 
    background(242, 241, 240);
    dungeonFont = createFont("DungeonFont.ttf", 18);
    // BUTTONS
    // opening buttons
    button0 = new Button(17,480,width-40, 50, "Who are you and where am I?",0);
    button1 = new Button(17,530,width-40, 50, "I'm...fine.", 1);
    // door buttons
    button2 = new Button(17,480,width-40, 50, "Cactus.", 2);
    button3 = new Button(17,530,width-40, 50, "Clock.", 3);
    // town square buttons
    button4 = new Button(17,480,width-40, 50, "Fortune teller", 4);
    button5 = new Button(17,480,width-40, 50, "Bakery", 5);

    button6 = new Button(17,530,width-40, 50, "I'm...fine.", 6);
    // IMAGES
    bigHead = loadImage("big head.png");
    cactus = loadImage("cactus.png");
    casette = loadImage("casette.png");
    castle = loadImage("castle.png");
    clock = loadImage("clock.png");
    cottage = loadImage("cottage.png");
    crescent = loadImage("crescent moon.png");
    dino = loadImage("dino.png");
    familyHome = loadImage("familyhome.png");
    girl = loadImage("girl.png");
    climbing = loadImage("guy climbing.png");
    jester = loadImage("jester.png");
    papers = loadImage("papers.png");
    penguin = loadImage("penguin.png");
    ponderer = loadImage("ponderer.png");
    rabbitHat = loadImage("rabbit hat.png");
    radioPlayer = loadImage("radio player.png");
    robot = loadImage("robot.png");
    sunHead = loadImage("sun head.png");
    tower = loadImage("tower.png");
}

void draw() {
    background(242, 241, 240);
    imageMode(CENTER);
    choice = 1;
    switch (choice) {
        case 1:
            doors();
            break;
        case 2:
            townSquare();
        case 3:
            city();
            break;
        case 4:
            fortuneTeller();
            break;
        case 5:
            bakery();
            break;
        case 6:
            break;
    }

}

// LIBRARY -----------------------------

void erase() { // erases the part of the screen where text shows
    fill(242, 241, 240);
    noStroke();
    rect(17,350,width-40, 220);
}

void dialogue(String say) {
    nextState = false;
    textSize(25);
    fill(0);
    text(say, 17, 400);
    // fill(0);
    textFont(dungeonFont);
    if (mousePressed) {
        nextState = true; // triggers the next part of the dialogue
    }
}


void mousePressed() {
    // button1.pressed(mouseX, mouseY);
    button0.pressed(mouseX, mouseY);
    button1.pressed(mouseX, mouseY);
    button2.pressed(mouseX, mouseY);
    button3.pressed(mouseX, mouseY);
    button4.pressed(mouseX, mouseY);
    button5.pressed(mouseX, mouseY);
    button6.pressed(mouseX, mouseY);
}

void fortuneTeller() {
    // appears in both storylines
}

// BEGINNING -----------------------------

void opening() {
    background(242, 241, 240);
    image(papers, width/2, height/2);
    dialogue("You awake in a white room. A normal looking man\nin front of you holds a clipboard,\nand he asks: \"How are you feeling?\"");
    if (nextState == true) {
        erase();
        dialogue("You respond with:");
        nextState = false;
    }
}

void doors() {
    background(242, 241, 240);
    dialogue("He takes out a piece of glossy paper out of his pocket\nand hands it to you.\nOn it, there are two pictures, side by side.");
    if (nextState == true) {
        erase();
        dialogue("One is a Cactus in a pot,\nand the other is a clock with legs.\n\"Which one feels more meaningful to you?\" He asks.\nYou answer:");
        button2.display();
        button3.display();
        nextState = false;
        noLoop();
    }

    image(cactus, width/4,height/4);
    image(clock, width/2, height/4);
}

// CLOCK STORYLINE -----------------------------

void city() {
    background(242, 241, 240);
    dialogue("After walking the hallway, you come to a dead end. As you try feeling the walls around you, you hear a ding.\nYou were in an elevator. And going down.\nWhen the elevator doors open and you get out,\n you are greeted by high buildings with roads connecting them. The place seems to be empty, though.\nWhat do you do?");
    if (nextState == true) {
        // display choices
    }
}

void walk() {
    background(242, 241, 240);
    dialogue("You walk and you walk and walk.\nAfter following a dirt road, you spot a tower.\nWith no other choice, you go in there.");


}

void breakIn() {
    background(242, 241, 240);
    dialogue("You smash the window of someone's house. When you get in, someone greets you.\nIt's a peculiar man, who looks to have a head too big for his body.\nHe asks: \"It's alright,\" he smiles. \"Everyone is nervous when they first get here--\nDon't blame ya. We tend to stay in when we know someone's arriving.\nYou know, just to ease them into it.\"");
    image(bigHead, width/2, height/2);
    if (nextState == true) {
        background(242, 241, 240);
        dialogue("Something about him doesn't seem right. You look at him one more time\nas your eyes begin to feel heavy.\"You'll get it right next time.\"\nThe next thing you feel is the cold, hard ground.\nEND. Better luck next time.");
        noLoop();
        nextState = false;
    }
}

void tower() {
    background(242, 241, 240);
    dialogue("You break into the tower to find a casette.");
    image(tower, width/2,height/2);
}

// CACTUS STORYLINE -----------------------------

void townSquare() {
    background(242, 241, 240);
    dialogue("It's crowded in here. There are two stalls that call to you--One is the bakery,\nthe other a fortune teller. Where do you want to go?");
    if (nextState == true) {
        // display choice: fortune teller or bakery
        print("test");
    }
}

void bakery() {
    background(242, 241, 240);
    dialogue("The smell of warm bread draws you in.\nThe robot (Wait. Robot?) behind the counter makes a comment:\n\"New around here, eh?\"");
    if (nextState == true) {
        erase();
        dialogue("You get a strange feeling in your gut. When the robot, who has introduced himself as Azule,\nreads your face, he says, \"I know that look. Don't trust it. Trust me.\"\nDo you:");
        // display choices: trust him or not trust him
        nextState = false;
        noLoop();
    }
    image(robot, width/2, height/2);
}




// BUTTON CLASS -----------------------------

public class Button {
    private int x, y, w, h;
    private boolean clicked;
    private String content;
    private int sceneId;

    public Button(int x, int y, int w, int h, String content, int sceneId) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.content = content;
        clicked = false;
        this.sceneId = sceneId;
    }

    public void display() {
        noFill();
        rect(x, y, w, h);
        fill(0);
        text(content, x + w/2, y + (h/2));
    }

    public void pressed(int mx, int my) { // maybe make the sceneId the parameter? so it can change into the choice when clicked
        if(mx > x && mx < x + w  && my > y && my < y+h) {
        //mouse has been clicked
        clicked = !clicked;  //toggle the value between true and false
        if (clicked) {
            choice = sceneId;
            print(choice);
        } 

    }
  }

}