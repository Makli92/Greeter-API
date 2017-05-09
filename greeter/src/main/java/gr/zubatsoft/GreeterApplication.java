package gr.zubatsoft;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class GreeterApplication {

	private static final Logger logger = LoggerFactory.getLogger(GreeterApplication.class);
	
	public static void main(String[] args) {
		logger.debug("App started.");
		SpringApplication.run(GreeterApplication.class, args);
	}
}
