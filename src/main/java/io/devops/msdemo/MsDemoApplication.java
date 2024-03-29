package io.devops.msdemo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class MsDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsDemoApplication.class, args);
	}

	@Value("${who:World}")
    private String who;

    @RequestMapping("")
    public String hello() {
        return String.format("Hello %s!", who);
    }

}
