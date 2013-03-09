.class final Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
.super Ljava/lang/Object;
.source "DOM3TreeWalker.java"


# static fields
.field private static final CANONICAL:I = 0x1

.field private static final CDATA:I = 0x2

.field private static final CHARNORMALIZE:I = 0x4

.field private static final COMMENTS:I = 0x8

.field private static final DISCARDDEFAULT:I = 0x8000

.field private static final DTNORMALIZE:I = 0x10

.field private static final ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final ENTITIES:I = 0x40

.field private static final IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final INFOSET:I = 0x80

.field private static final NAMESPACEDECLS:I = 0x200

.field private static final NAMESPACES:I = 0x100

.field private static final NORMALIZECHARS:I = 0x400

.field private static final PRETTY_PRINT:I = 0x10000

.field private static final SCHEMAVALIDATE:I = 0x2000

.field private static final SPLITCDATA:I = 0x800

.field private static final VALIDATE:I = 0x1000

.field private static final WELLFORMED:I = 0x4000

.field private static final XMLDECL:I = 0x40000

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field private static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"

.field private static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final s_propKeys:Ljava/util/Hashtable;


# instance fields
.field private fDOMConfigProperties:Ljava/util/Properties;

.field private fElementDepth:I

.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fFeatures:I

.field private fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private fInEntityRef:Z

.field private fIsLevel3DOM:Z

.field private fIsXMLVersion11:Z

.field private fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fLocator:Lorg/xml/sax/helpers/LocatorImpl;

.field protected fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fNewLine:Ljava/lang/String;

.field fNextIsRaw:Z

.field private fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private fWhatToShowFilter:I

.field private fXMLVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    sput-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const/4 v0, 0x2

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x20

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x100

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x200

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x800

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x4000

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x8000

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "omit-xml-declaration"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://xml.apache.org/xerces-2j}xml-version"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "encoding"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://xml.apache.org/xerces-2j}entities"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fInEntityRef:Z

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fXMLVersion:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    new-instance v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    new-instance v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->initProperties(Ljava/util/Properties;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    goto :goto_0
.end method


# virtual methods
.method protected applyFilter(Lorg/w3c/dom/Node;I)Z
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V
    .locals 14

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_4

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v12}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "unbound-prefix-in-entity-reference"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "unbound-prefix-in-entity-reference"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_2

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "unbound-prefix-in-entity-reference"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "unbound-prefix-in-entity-reference"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v9}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v9}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    :cond_3
    move-object v9, v11

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected fixupElementNS(Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_6

    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "http://www.w3.org/2000/xmlns/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    iget-object v11, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x2

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v11, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    const-string v3, ""

    invoke-interface {p1, v0, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected initProperties(Ljava/util/Properties;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    or-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_0

    :cond_1
    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v6, v7

    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_0

    :cond_2
    const-string v6, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    goto :goto_0

    :cond_4
    const-string v6, "omit-xml-declaration"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_0

    :cond_6
    const-string v6, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v7, "1.0"

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "encoding"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "{http://xml.apache.org/xerces-2j}entities"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v7, "{http://xml.apache.org/xalan}line-separator"

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected isAttributeWellFormed(Lorg/w3c/dom/Node;)V
    .locals 13

    const/4 v10, 0x0

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    :goto_0
    if-nez v10, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "wf-invalid-character-in-node-name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Attr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character-in-node-name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    const/16 v0, 0x3c

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v9, v0, :cond_4

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_0

    :cond_3
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    check-cast v7, Lorg/w3c/dom/Text;

    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    goto :goto_2

    :pswitch_2
    check-cast v7, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    goto :goto_2

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V
    .locals 9

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    return-void
.end method

.method protected isCommentWellFormed(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    iget-boolean v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v0, :cond_8

    const/4 v11, 0x0

    move v12, v11

    :cond_2
    :goto_1
    if-ge v12, v10, :cond_7

    add-int/lit8 v11, v12, 0x1

    aget-char v7, v9, v12

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge v11, v10, :cond_4

    add-int/lit8 v12, v11, 0x1

    aget-char v8, v9, v11

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v11, v12

    :cond_4
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_5

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_5
    :goto_2
    move v12, v11

    goto :goto_1

    :cond_6
    const/16 v0, 0x2d

    if-ne v7, v0, :cond_5

    if-ge v11, v10, :cond_5

    aget-char v0, v9, v11

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_DASH_IN_COMMENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_5

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_2

    :cond_7
    move v11, v12

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    move v12, v11

    :cond_9
    :goto_3
    if-ge v12, v10, :cond_e

    add-int/lit8 v11, v12, 0x1

    aget-char v7, v9, v12

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_b

    if-ge v11, v10, :cond_b

    add-int/lit8 v12, v11, 0x1

    aget-char v8, v9, v11

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_a
    move v11, v12

    :cond_b
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_c

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_c
    :goto_4
    move v12, v11

    goto :goto_3

    :cond_d
    const/16 v0, 0x2d

    if-ne v7, v0, :cond_c

    if-ge v11, v10, :cond_c

    aget-char v0, v9, v11

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_DASH_IN_COMMENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_c

    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_4

    :cond_e
    move v11, v12

    goto/16 :goto_0
.end method

.method protected isElementWellFormed(Lorg/w3c/dom/Node;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "wf-invalid-character-in-node-name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Element"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character-in-node-name"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0
.end method

.method protected isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V
    .locals 18

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "wf-invalid-character-in-node-name"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "EntityReference"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "wf-invalid-character-in-node-name"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v13, v1, :cond_8

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Entity;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v14, ""

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v15, ""

    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v10, ""

    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v11, ""

    :goto_4
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_WF_REF_TO_UNPARSED_ENT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "ER_WF_REF_TO_UNPARSED_ENT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_WF_REF_TO_EXTERNAL_ENT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "ER_WF_REF_TO_EXTERNAL_ENT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_7
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method protected isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 11

    const/4 v1, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "wf-invalid-character-in-node-name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ProcessingInstruction"

    aput-object v6, v5, v9

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const-string v3, "wf-invalid-character-in-node-name"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    return-void
.end method

.method protected isTextWellFormed(Lorg/w3c/dom/Text;)V
    .locals 9

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_0
    return-void
.end method

.method protected isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;
    .locals 8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    iget-boolean v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v7, :cond_6

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    :goto_1
    if-ge v5, v3, :cond_5

    add-int/lit8 v4, v5, 0x1

    aget-char v7, v2, v5

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v7, v4, -0x1

    aget-char v0, v2, v7

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v4, 0x1

    aget-char v1, v2, v4

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    move v4, v5

    :cond_4
    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    move v5, v4

    :cond_7
    :goto_2
    if-ge v5, v3, :cond_b

    add-int/lit8 v4, v5, 0x1

    aget-char v7, v2, v5

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v7, v4, -0x1

    aget-char v0, v2, v7

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_9

    if-ge v4, v3, :cond_9

    add-int/lit8 v5, v4, 0x1

    aget-char v1, v2, v4

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_8
    move v4, v5

    :cond_9
    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :cond_a
    move v5, v4

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_0

    :cond_c
    move v5, v4

    goto :goto_1
.end method

.method protected isWFXMLChar(Ljava/lang/String;Ljava/lang/Character;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    iget-boolean v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v8, :cond_6

    const/4 v4, 0x0

    move v5, v4

    :cond_2
    :goto_1
    if-ge v5, v3, :cond_5

    add-int/lit8 v4, v5, 0x1

    aget-char v8, v2, v5

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v8, v4, -0x1

    aget-char v0, v2, v8

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v4, 0x1

    aget-char v1, v2, v4

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v8

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_3
    move v4, v5

    :cond_4
    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :cond_5
    move v4, v5

    :goto_2
    move v6, v7

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    move v5, v4

    :cond_7
    :goto_3
    if-ge v5, v3, :cond_b

    add-int/lit8 v4, v5, 0x1

    aget-char v8, v2, v5

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v8, v4, -0x1

    aget-char v0, v2, v8

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ge v4, v3, :cond_9

    add-int/lit8 v5, v4, 0x1

    aget-char v1, v2, v4

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v8

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_8
    move v4, v5

    :cond_9
    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :cond_a
    move v5, v4

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    move v5, v4

    goto :goto_1
.end method

.method protected isXMLName(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected recordLocalNSDecl(Lorg/w3c/dom/Node;)V
    .locals 17

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_8

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-eqz v15, :cond_0

    const-string v1, "xmlns"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v15, ""

    :cond_1
    if-nez v10, :cond_2

    const-string v10, ""

    :cond_2
    if-nez v11, :cond_3

    const-string v11, ""

    :cond_3
    if-nez v9, :cond_4

    const-string v9, ""

    :cond_4
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v6, "http://www.w3.org/2000/xmlns/"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x2

    const-string v4, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_5
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    const-string v1, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v1, v15, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v2, ""

    invoke-virtual {v1, v2, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_8
    return-void
.end method

.method protected serializeAttList(Lorg/w3c/dom/Element;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v31

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v4, ""

    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    if-eqz v2, :cond_0

    move-object/from16 v2, v19

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/TypeInfo;->getTypeName()Ljava/lang/String;

    move-result-object v15

    :cond_0
    if-nez v15, :cond_1

    const-string v15, "CDATA"

    :cond_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v7, 0x0

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    :goto_2
    move-object/from16 v2, v19

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v29

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v2, "xmlns"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "xmlns:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    const/16 v33, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isAttributeWellFormed(Lorg/w3c/dom/Node;)V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_13

    if-nez v33, :cond_13

    if-eqz v7, :cond_12

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_5
    if-eqz v26, :cond_f

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v4, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    if-nez v29, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_14

    :cond_8
    const/16 v18, 0x1

    :goto_5
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    if-nez v33, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_9
    :goto_6
    if-eqz v17, :cond_15

    if-eqz v33, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a

    if-eqz v30, :cond_a

    const-string v2, ""

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v12, v7

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    if-eqz v33, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_17

    const-string v32, ""

    :goto_8
    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_d
    const/16 v33, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v14, v30

    goto/16 :goto_4

    :cond_f
    if-eqz v4, :cond_10

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v25, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v14, v20

    goto/16 :goto_4

    :cond_10
    const/16 v23, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v24, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v24

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v24, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v24

    goto :goto_9

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_12
    if-nez v30, :cond_13

    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    invoke-virtual {v2, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v8, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v9, 0x2

    const-string v11, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v2, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_13
    move-object/from16 v14, v20

    goto/16 :goto_4

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_5

    :pswitch_0
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_15
    if-eqz v17, :cond_a

    if-nez v33, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_16

    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v12, v7

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v12, ""

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 v2, v28, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_8

    :cond_18
    return-void

    :cond_19
    move-object/from16 v20, v14

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected serializeCDATASection(Lorg/w3c/dom/CDATASection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V

    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    const-string v0, "]]>"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    if-ltz v7, :cond_1

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "cdata-sections-splitted"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x1

    const-string v3, "cdata-sections-splitted"

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v9, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ltz v7, :cond_1

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "cdata-sections-splitted"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v3, 0x2

    const-string v4, "cdata-sections-splitted"

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method protected serializeComment(Lorg/w3c/dom/Comment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCommentWellFormed(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_0
.end method

.method protected serializeDocType(Lorg/w3c/dom/DocumentType;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<!DOCTYPE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_0

    const-string v7, " PUBLIC \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v5, :cond_1

    if-nez v4, :cond_3

    const-string v7, " SYSTEM \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const-string v7, " [ "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "]>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v7, " \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Lorg/xml/sax/SAXException;

    sget-object v8, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v9, "ER_WRITING_INTERNAL_SUBSET"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_4
    if-eqz p2, :cond_5

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v7, v0, v4, v5}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v7}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto :goto_1
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isElementWellFormed(Lorg/w3c/dom/Node;)V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->pushContext()V

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->reset()V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->recordLocalNSDecl(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fixupElementNS(Lorg/w3c/dom/Node;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeAttList(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->popContext()V

    goto :goto_0
.end method

.method protected serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p2, :cond_3

    move-object v0, p1

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    :cond_0
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v0, p1

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected serializePI(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v1, p1

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V

    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v2, "xslt-next-is-raw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected serializeText(Lorg/w3c/dom/Text;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "javax.xml.transform.disable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "javax.xml.transform.enable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    :cond_2
    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Text;->isElementContentWhitespace()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_5

    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_1
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    instance-of v1, p1, Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/Locator;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/w3c/dom/DocumentType;

    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    goto :goto_1

    :pswitch_2
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeComment(Lorg/w3c/dom/Comment;)V

    goto :goto_1

    :pswitch_3
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    goto :goto_1

    :pswitch_4
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializePI(Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_1

    :pswitch_5
    check-cast p1, Lorg/w3c/dom/CDATASection;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeCDATASection(Lorg/w3c/dom/CDATASection;)V

    goto :goto_1

    :pswitch_6
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeText(Lorg/w3c/dom/Text;)V

    goto :goto_1

    :pswitch_7
    check-cast p1, Lorg/w3c/dom/EntityReference;

    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string v4, "Core"

    const-string v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v3}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v3

    iput v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    :cond_2
    move-object v2, p1

    :goto_1
    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    :goto_2
    move-object p1, v0

    goto :goto_1

    :cond_5
    move-object v3, p1

    check-cast v3, Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string v4, "Core"

    const-string v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    :goto_2
    move-object p1, v0

    goto :goto_1

    :cond_5
    move-object v2, p1

    check-cast v2, Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    return-void
.end method
