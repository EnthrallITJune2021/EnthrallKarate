package com.enthrall.karate.reqres;
import org.junit.runner.RunWith;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(tags = {"~@smoke", "@ui"})
public class reqresRunner {
}
