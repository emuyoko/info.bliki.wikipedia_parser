package net.emuyoko.nlp;

import net.emuyoko.nlp.bliki.EnWiktionaryRussianModel;
import org.apache.commons.io.IOUtils;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;

public class IntegrationTest {
    @Test
    public void ruVerbTest1() throws IOException {
        String pageTitle = "читать";
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/verb/читать.txt"));

        EnWiktionaryRussianModel model = new EnWiktionaryRussianModel();
        model.setPageName(pageTitle);
        String result = model.render(rawWikiText);

        System.out.println(result);
        Assert.assertFalse(result.contains("Error"));
        Assert.assertFalse(result.contains("Template:ru-conj"));
    }

    @Test
    public void ruNounTest1() throws IOException {
        String pageTitle = "книга";
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/noun/книга.txt"));

        EnWiktionaryRussianModel model = new EnWiktionaryRussianModel();
        model.setPageName(pageTitle);
        String result = model.render(rawWikiText);

        System.out.println(result);
        Assert.assertFalse(result.contains("Error"));
        Assert.assertFalse(result.contains("Template:"));
    }
}
