import edu.duke.DirectoryResource;
import edu.duke.ImageResource;

import java.io.File;

/**
 * Created by praburangki on 10/25/15.
 */
public class ImageSaver {
    public void doSave() {
        DirectoryResource dr = new DirectoryResource();
        for (File f : dr.selectedFiles()) {
            ImageResource image = new ImageResource(f);
            String fName = image.getFileName();
            String newName = "copy-" + fName;
            image.setFileName(newName);
            image.draw();
            image.save();
        }
    }
}
