import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;

public class EchoApiExample {
    public static void main(String[] args) {
        try {
            // Create the HttpClient
            HttpClient client = HttpClient.newHttpClient();

            // Define the request payload
            String jsonPayload = "{\"message\": \"Hello World!\"}";

            // Create the HttpRequest
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create("https://api.example.com/v1/echo")) // Replace with the actual API URL
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(jsonPayload, StandardCharsets.UTF_8))
                    .build();

            // Send the request and get the response
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            // Check if the status code is 201 Created
            if (response.statusCode() == 201) {
                // Success
                System.out.println("Success: Resource created.");
                System.out.println("Response body: " + response.body());
            } else {
                // Failure - Check for errors
                System.out.println("Error: Status code " + response.statusCode());
                System.out.println("Response body: " + response.body());
            }
        } catch (Exception e) {
            // Exception handling in case of network or other issues
            e.printStackTrace();
        }
    }
}
