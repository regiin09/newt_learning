package org.studyeasy.latop.components;

class GraphicCard {
    String brand;
    int series;
    int memoryInGB;

    public GraphicCard(String brand, int series, int memoryInGB) {
        this.brand = brand;
        this.series = series;
        this.memoryInGB = memoryInGB;
    }

    @Override
    public String toString() {
        return "GraphicCard [Brand=" + brand + ", Series=" + series + ", Memory=" + memoryInGB + "GB]";
    }
}
