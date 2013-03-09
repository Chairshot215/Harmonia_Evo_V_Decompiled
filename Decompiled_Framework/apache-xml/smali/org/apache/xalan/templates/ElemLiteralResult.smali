.class public Lorg/apache/xalan/templates/ElemLiteralResult;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemLiteralResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;,
        Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final serialVersionUID:J = -0x78c8b870c7d06eacL


# instance fields
.field private isLiteralResultAsStylesheet:Z

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_avts:Ljava/util/List;

.field private m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

.field private m_localName:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_rawName:Ljava/lang/String;

.field private m_version:Ljava/lang/String;

.field private m_xslAttr:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    return-object v0
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z

    move-result v0

    return v0
.end method

.method public addLiteralResultAttribute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v2, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "#default"

    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public enumerateLiteralResultAttributes()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    :try_start_1
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v10, v11, -0x1

    :goto_0
    if-ltz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/AVT;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v13

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v9, v0, v13, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :catch_0
    move-exception v12

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v14, :cond_3

    throw v14

    :catch_1
    move-exception v15

    move-object v14, v15

    goto :goto_1

    :catch_2
    move-exception v12

    new-instance v14, Ljavax/xml/transform/TransformerException;

    invoke-direct {v14, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v12

    if-eqz v14, :cond_2

    throw v14

    :cond_2
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception v12

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V

    return-object v0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsLiteralResultAsStylesheet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return v0
.end method

.method public getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .locals 6

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x4d

    return v0
.end method

.method needToCheckExclude()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setPrefixTable(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resolvePrefixTables()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/xalan/templates/ElemUse;->resolvePrefixTables()V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/AVT;->setURI(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/AVT;->setRawName(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public setIsLiteralResultAsStylesheet(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-void
.end method

.method public setXmlSpace(Lorg/apache/xalan/templates/AVT;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "preserve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    goto :goto_0
.end method

.method public throwDOMException(SLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method
