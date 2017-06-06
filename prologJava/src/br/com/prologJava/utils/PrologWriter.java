package br.com.prologJava.utils;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class PrologWriter {

    private static final String FILENAME = System.getProperty("user.dir") + "escpla.pl";

    public void writePrologFile(String statement) {
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(FILENAME))) {
            bw.write(statement);
            System.out.println("Wrote: " + statement);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
