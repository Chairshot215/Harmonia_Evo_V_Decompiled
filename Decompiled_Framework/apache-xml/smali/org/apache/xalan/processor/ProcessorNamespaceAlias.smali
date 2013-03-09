.class Lorg/apache/xalan/processor/ProcessorNamespaceAlias;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorNamespaceAlias.java"


# static fields
.field static final serialVersionUID:J = -0x5791275e53accfd4L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lorg/apache/xalan/templates/NamespaceAlias;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/apache/xalan/templates/NamespaceAlias;-><init>(I)V

    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorNamespaceAlias;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v4, "#default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetPrefix(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/NamespaceAlias;->setStylesheetNamespace(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v4, "#default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultPrefix(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v4, "ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX_FOR_DEFAULT"

    invoke-virtual {p1, v4, v7, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/NamespaceAlias;->setResultNamespace(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/Stylesheet;->setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/Stylesheet;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void

    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v4, "ER_INVALID_SET_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
