.class Lorg/apache/xalan/processor/ProcessorStripSpace;
.super Lorg/apache/xalan/processor/ProcessorPreserveSpace;
.source "ProcessorStripSpace.java"


# static fields
.field static final serialVersionUID:J = -0x4da3a1ec5b269f47L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorPreserveSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    new-instance v1, Lorg/apache/xalan/processor/WhitespaceInfoPaths;

    invoke-direct {v1, v2}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {p0, p1, p4, p5, v1}, Lorg/apache/xalan/processor/ProcessorStripSpace;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->getElements()Ljava/util/Vector;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    new-instance v3, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/XPath;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, v2}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setUid(I)V

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/Stylesheet;->setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->clearElements()V

    return-void
.end method
