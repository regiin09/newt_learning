package org.studyeasy.latop;

class Laptop {
    String screen;
    Processor processor;
    String ram;
    String hardDrive;
    GraphicCard graphicCard;
    String opticalDrive;
    String keyboard;

    // Parameterized constructor to initialize all the components of Laptop.
    public Laptop(String screen, Processor processor, String ram, String hardDrive, GraphicCard graphicCard, String opticalDrive, String keyboard) {
        this.screen = screen;
        this.processor = processor;
        this.ram = ram;
        this.hardDrive = hardDrive;
        this.graphicCard = graphicCard;
        this.opticalDrive = opticalDrive;
        this.keyboard = keyboard;
    }

    // Overridden toString() method to format the complete Laptop details.
    @Override
    public String toString() {
        return "Laptop Details:\n" +
                "Screen: " + screen + "\n" +
                "Processor: " + processor.toString() + "\n" +
                "RAM: " + ram + "\n" +
                "Hard Drive: " + hardDrive + "\n" +
                "Graphic Card: " + graphicCard.toString() + "\n" +
                "Optical Drive: " + opticalDrive + "\n" +
                "Keyboard: " + keyboard;
    }
}
