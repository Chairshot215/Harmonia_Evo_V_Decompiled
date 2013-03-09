.class public Lorg/apache/xalan/processor/ProcessorExsltFunction;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x21771cf559bd0644L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemVariable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemParam;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/xalan/templates/ElemMessage;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, ""

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v3, :cond_0

    const-string v1, "func:function element must be top level."

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v3, "name"

    invoke-interface {p5, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "func:function name must have namespace"

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public validate(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/processor/StylesheetHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_5

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFuncResult;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xalan/templates/ElemFallback;

    if-nez v2, :cond_0

    const-string v0, "func:result has an illegal following sibling (only xsl:fallback allowed)"

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyImport;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemApplyTemplates;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemAttribute;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCallTemplate;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemComment;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopy;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemCopyOf;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemElement;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemNumber;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemPI;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemText;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemTextLiteral;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemValueOf;

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/ProcessorExsltFunction;->ancestorIsOk(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "misplaced literal result in a func:function container."

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    instance-of v2, p1, Lorg/apache/xalan/templates/ElemExsltFunction;

    if-eqz v2, :cond_3

    :cond_5
    return-void

    :cond_6
    move-object p1, v1

    goto :goto_0
.end method
