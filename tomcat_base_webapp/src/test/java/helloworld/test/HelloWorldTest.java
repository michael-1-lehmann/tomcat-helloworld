package helloworld.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class HelloWorldTest {

	@Test
	@DisplayName("1 + 1 = 2")
	void addsTwoNumbers() {
		int result = 1+1;
		assertEquals(2, result, "1 + 1 should equal 2");
	}
}
