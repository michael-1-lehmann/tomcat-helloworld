package helloworld.integrationtest;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

import helloworld.HelloWorldServlet;

public class HelloWorldIT {
	@Test
	public void whenSendingGet_thenMessageIsReturned() throws IOException {
	    String url = "http://localhost:8080/helloworld/helloworld";
	    URLConnection connection = new URL(url).openConnection();
	    try (InputStream response = connection.getInputStream();
	      Scanner scanner = new Scanner(response)) {
	        String responseBody = scanner.nextLine();
	        assertEquals(HelloWorldServlet.HELLO_MESSAGE, responseBody);
	    }
	}
}
