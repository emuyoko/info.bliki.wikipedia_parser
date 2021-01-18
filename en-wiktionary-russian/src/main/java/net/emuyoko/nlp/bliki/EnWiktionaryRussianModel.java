package net.emuyoko.nlp.bliki;

import info.bliki.htmlcleaner.ContentToken;
import info.bliki.htmlcleaner.TagNode;
import info.bliki.htmlcleaner.Utils;
import info.bliki.wiki.filter.ParsedPageName;
import info.bliki.wiki.filter.WikipediaParser;
import info.bliki.wiki.model.Configuration;
import info.bliki.wiki.model.WikiModel;
import info.bliki.wiki.model.WikiModelContentException;
import info.bliki.wiki.tags.HTMLBlockTag;
import net.emuyoko.nlp.bliki.functions.TemplateStyles;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class EnWiktionaryRussianModel extends WikiModel {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    public EnWiktionaryRussianModel() {
        super(getConfiguration(),
                Locale.ENGLISH,
                "http://www.bliki.info/wiki/imageBase",
                "http://www.bliki.info/wiki/linkBase");
    }

    public static Configuration getConfiguration() {
        Configuration configuration = new Configuration(
                Configuration.DEFAULT_WIKI_ID,
                Casing.CaseSensitive); // If you use default casing "FirstLetter", wrong pageLink URL are generated.
        configuration.setTemplateCallsCache(new HashMap<>());

        // add Module:TemplateStyles.
        configuration.addTemplateFunction("#tag:templateStyles", new TemplateStyles());
        // prevent HTML escaping of <style> block. (TemplateStyles generates <style> block.)
        configuration.addTokenTag("style", new HTMLBlockTag("style", Configuration.SPECIAL_BLOCK_TAGS));

        return configuration;
    }

    @Override
    public String getRawWikiContent(ParsedPageName page, Map<String, String> map) throws WikiModelContentException {
        String result = super.getRawWikiContent(page, map);
        if (result != null) {
            return result;
        }

        final String name = encodeTitleToUrl(page.pagename, false);
        switch (page.namespace.getCode()) {
            case TEMPLATE_NAMESPACE_KEY:
                return loadTemplateResource(name);
            case MODULE_NAMESPACE_KEY:
                return loadModuleResource(name);
            default:
                return null;
        }
    }

    private String loadTemplateResource(String name) {
        String resourcePath = getResourcePath("/wiktionary/templates/%s", name);
        return loadResource(resourcePath);
    }

    private String loadModuleResource(String name) {
        String resourcePath = getResourcePath("/wiktionary/modules/%s.lua", name);
        return loadResource(resourcePath);
    }

    private String loadResource(String name) {
        if (name == null) {
            return null;
        }
        try {
            String unescapedName = URLDecoder.decode(name, "UTF-8");
            logger.info("loading " + unescapedName);
            try (InputStream is = getClass().getResourceAsStream(unescapedName)) {
                return is == null ? null : IOUtils.toString(is);
            } catch (IOException e) {
                logger.error("error loading " + unescapedName, e);
                throw new RuntimeException(e);
            }
        } catch (IOException e) {
            logger.error("error loading " + name, e);
            throw new RuntimeException(e);
        }
    }

    private String getResourcePath(String format, String name) {
        if (name == null || name.trim().length() == 0) {
            return null;
        }
        return String.format(format, name.replaceAll("[ /:]", "_"));
    }
}
