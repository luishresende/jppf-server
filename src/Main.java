import org.apache.log4j.BasicConfigurator;
import org.jppf.server.DriverLauncher;

public class Main {
    public static void main(String[] args) {
        BasicConfigurator.configure();

        // Inicia o servidor JPPF
        DriverLauncher.main(args);
    }
}
