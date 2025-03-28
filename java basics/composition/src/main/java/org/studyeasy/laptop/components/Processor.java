package org.studyeasy.latop.components;

class Processor {
    String brand;
    String generation;
    String series;
    String seriesLabel;
    int cores;
    int threads;
    String cache;
    String frequency;
    String minFrequency;

    // Parameterized constructor to initialize all properties of Processor.
    public Processor(String brand, String generation, String series, String seriesLabel, int cores, int threads, String cache, String frequency, String minFrequency) {
        this.brand = brand;
        this.generation = generation;
        this.series = series;
        this.seriesLabel = seriesLabel;
        this.cores = cores;
        this.threads = threads;
        this.cache = cache;
        this.frequency = frequency;
        this.minFrequency = minFrequency;
    }

    // Overridden toString() method to format the Processor details.
    @Override
    public String toString() {
        return "Processor [Brand=" + brand + ", Generation=" + generation + ", Series=" + series +
                ", Cores=" + cores + ", Threads=" + threads + ", Cache=" + cache +
                ", Frequency=" + frequency + ", Min Frequency=" + minFrequency + "]";
    }
}
