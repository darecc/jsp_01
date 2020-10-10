package model;

import java.util.ListResourceBundle;

public class MusicBand extends ListResourceBundle {
    public Object[][] getContents() {
        return contents;
    }
    static final Object[][] contents = {
            {"band.one",  "solo"},
            {"band.two",    "duet"},
            {"band.three",   "tercet"},
            {"band.four", "kwartet"},
            {"band.five",   "kwintet"},
            {"band.six",  "sekstet"}
    };
}
