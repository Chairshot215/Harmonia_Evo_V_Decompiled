.class public final Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# instance fields
.field private publicId:Ljava/lang/String;

.field private qualifiedName:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x5

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v4, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v4, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_4
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntities()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getNotations()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
