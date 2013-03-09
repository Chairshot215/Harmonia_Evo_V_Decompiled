.class public Lorg/apache/xml/serializer/NamespaceMappings;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/NamespaceMappings$Stack;,
        Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"


# instance fields
.field private count:I

.field private m_namespaces:Ljava/util/Hashtable;

.field private m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method

.method private createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .locals 2

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    return-object v0
.end method

.method private initNamespaces()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, ""

    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    const-string v2, "xml"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "xml"

    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    return-object v0
.end method

.method public generateNextPrefix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMappingFromURI(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public lookupAllPrefixes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v2
.end method

.method public lookupNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    iget-object v1, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method popNamespace(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method popNamespaces(ILorg/xml/sax/ContentHandler;)V
    .locals 7

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v6}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v6}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-object v1, v6

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    iget v0, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    const/4 v6, 0x1

    if-lt p1, v6, :cond_1

    iget v6, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    if-lt v6, p1, :cond_1

    iget-object v6, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v6}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    iget-object v4, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    if-ne v2, v3, :cond_0

    invoke-virtual {v5}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2, v4}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v3, 0x0

    const-string v4, "xml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    if-nez v2, :cond_2

    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    invoke-virtual {v4, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    iget-object v4, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    if-eq p3, v4, :cond_0

    :cond_3
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0
.end method

.method final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clear()V

    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method
