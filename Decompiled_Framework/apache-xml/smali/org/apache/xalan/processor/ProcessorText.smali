.class public Lorg/apache/xalan/processor/ProcessorText;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorText.java"


# static fields
.field static final serialVersionUID:J = 0x47c058296f0c4383L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "text()"

    const-string v4, "text"

    invoke-virtual {p1, v2, v3, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/ProcessorCharacters;

    move-object v2, p2

    check-cast v2, Lorg/apache/xalan/templates/ElemText;

    invoke-virtual {v0, v2}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "text()"

    const-string v2, "text"

    invoke-virtual {p1, v3, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/ProcessorCharacters;

    invoke-virtual {v0, v3}, Lorg/apache/xalan/processor/ProcessorCharacters;->setXslTextElement(Lorg/apache/xalan/templates/ElemText;)V

    return-void
.end method
