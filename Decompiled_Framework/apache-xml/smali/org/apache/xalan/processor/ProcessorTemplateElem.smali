.class public Lorg/apache/xalan/processor/ProcessorTemplateElem;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorTemplateElem.java"


# static fields
.field static final serialVersionUID:J = 0x73cf5fd4c29a2a83L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p1, p2}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    :cond_0
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v3, v0

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1, p4, p5, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {p0, p1, v3}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void

    :catch_0
    move-exception v5

    const-string v7, "ER_FAILED_CREATING_ELEMTMPL"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :catch_2
    move-exception v4

    :try_start_3
    const-string v7, "ER_FAILED_CREATING_ELEMTMPL"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
