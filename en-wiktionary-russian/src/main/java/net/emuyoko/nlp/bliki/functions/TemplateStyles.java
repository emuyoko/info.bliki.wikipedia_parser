package net.emuyoko.nlp.bliki.functions;

import info.bliki.wiki.filter.ParsedPageName;
import info.bliki.wiki.model.IWikiModel;
import info.bliki.wiki.model.WikiModelContentException;
import info.bliki.wiki.namespaces.INamespace;
import info.bliki.wiki.template.AbstractTemplateFunction;
import info.bliki.wiki.template.namedargs.AbstractNamedArgsTemplateFunction;
import info.bliki.wiki.template.namedargs.NamedArgs;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class TemplateStyles extends AbstractNamedArgsTemplateFunction {
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public String parseFunction(NamedArgs namedArgs,
                                IWikiModel model, char[] src, int beginIndex, int endIndex, boolean isSubst) {

        String moduleName = namedArgs.get("src");
        INamespace.INamespaceValue moduleNamespace = model.getNamespace().getModule();
        ParsedPageName parsedPageName =
                ParsedPageName.parsePageName(model, moduleName, moduleNamespace, false, false);

        String html = "";
        try {
            String css = model.getRawWikiContent(parsedPageName, Collections.emptyMap());
            html = "<style data-hoge=\"wikiTestModel\">" + css + "</style>";
        } catch (WikiModelContentException e) {
            logger.error("Unexpected Exception.", e);
        }
        return html;
    }

    @Override
    public String getFunctionDoc() {
        return null;
    }
}


