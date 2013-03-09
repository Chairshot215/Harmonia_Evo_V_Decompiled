.class public final Lorg/apache/harmony/xml/dom/DocumentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field private documentUri:Ljava/lang/String;

.field private domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field private domImplementation:Lorg/w3c/dom/DOMImplementation;

.field private inputEncoding:Ljava/lang/String;

.field private nodeToUserData:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;>;"
        }
    .end annotation
.end field

.field private strictErrorChecking:Z

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    iput-object p0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    iput-object p5, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method

.method private changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .locals 6

    iget-object v4, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iput-object p0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static isXMLIdentifier(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isXMLIdentifierPart(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isXMLIdentifierStart(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .locals 10

    instance-of v0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v8, p1

    check-cast v8, Lorg/apache/harmony/xml/dom/NodeImpl;

    iget-object v0, v8, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    iget-object v0, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    move v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method private shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 13

    const/16 v12, 0x9

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v9, Lorg/w3c/dom/DOMException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported node type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v12, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :pswitch_0
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    iget-boolean v9, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/harmony/xml/dom/AttrImpl;->setPrefix(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    check-cast p2, Lorg/w3c/dom/CharacterData;

    invoke-interface {p2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    check-cast p2, Lorg/w3c/dom/Comment;

    invoke-interface {p2}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    new-instance v9, Lorg/w3c/dom/DOMException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot copy node of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v12, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :pswitch_5
    move-object v3, p2

    check-cast v3, Lorg/apache/harmony/xml/dom/ElementImpl;

    iget-boolean v9, v3, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/harmony/xml/dom/ElementImpl;->setPrefix(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {p0, p1, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-static {p1, v4, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    iget-boolean v9, v4, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v9, :cond_2

    invoke-virtual {v6, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_4

    :cond_3
    move-object v1, v6

    goto/16 :goto_1

    :pswitch_6
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v9

    :pswitch_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    move-object v8, p2

    check-cast v8, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v8}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    check-cast p2, Lorg/w3c/dom/Text;

    invoke-interface {p2}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x9

    instance-of v4, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    if-nez v4, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported node type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    iget-object v4, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_1
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    const/4 v4, 0x5

    invoke-static {v4, p1, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Lorg/w3c/dom/DOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot adopt nodes of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object v0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CommentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    return-object v0
.end method

.method public bridge synthetic createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 3

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    instance-of v2, v0, Lorg/w3c/dom/DocumentType;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/w3c/dom/DocumentType;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 3

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    instance-of v2, v0, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v2, 0x3

    instance-of v0, p1, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one root element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/w3c/dom/DocumentType;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v1, "Only one DOCTYPE element allowed"

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public normalizeDocument()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-static {v0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    return-object p1
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    return-void
.end method
