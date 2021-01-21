package net.emuyoko.nlp;

import net.emuyoko.nlp.bliki.EnWiktionaryRussianModel;
import org.apache.commons.io.IOUtils;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;

public class IntegrationTest {
    @Test
    public void ruVerbTest1() throws IOException {
        String pageTitle = "читать"; // infinitive
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/verb/читать.txt"));

        EnWiktionaryRussianModel model = new EnWiktionaryRussianModel();
        model.setPageName(pageTitle);
        String result = model.render(rawWikiText);

        System.out.println(result);
        Assert.assertFalse(result.contains("Error"));
        Assert.assertFalse(result.contains("Template:ru-conj"));
    }
    @Test
    public void ruVerbTest2() throws IOException {
        String pageTitle = "купить";
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/verb/купить.txt"));

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

    @Test
    public void ruAdvTest1() throws IOException {
        String pageTitle = "уже";
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/adv/уже.txt"));

        EnWiktionaryRussianModel model = new EnWiktionaryRussianModel();
        model.setPageName(pageTitle);
        String result = model.render(rawWikiText);

        System.out.println(result);
        Assert.assertFalse(result.contains("Error"));
        Assert.assertFalse(result.contains("Template:"));
    }

    @Test
    public void ruAdjTest1() throws IOException {
        String pageTitle = "большой";
        String rawWikiText = IOUtils.toString(getClass().getResourceAsStream("/articles/adj/большой.txt"));

        EnWiktionaryRussianModel model = new EnWiktionaryRussianModel();
        model.setPageName(pageTitle);
        String result = model.render(rawWikiText);

        System.out.println(result);
        Assert.assertFalse(result.contains("Error"));
        Assert.assertFalse(result.contains("Template:"));
    }
}
